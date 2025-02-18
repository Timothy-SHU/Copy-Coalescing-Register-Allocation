; ModuleID = 'XMLException.cpp'
source_filename = "XMLException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZN11xercesc_2_7L16msgLoaderCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L15msgMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni14fgExceptDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L10sMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZTVN11xercesc_2_712XMLExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XMLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_712XMLExceptionD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni11fgDefErrMsgE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L9sMsgMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L23sScannerMutexRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_712XMLExceptionE = dso_local constant [30 x i8] c"N11xercesc_2_712XMLExceptionE\00", align 1
@_ZTIN11xercesc_2_712XMLExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLException.cpp, ptr null }]

@_ZN11xercesc_2_712XMLExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XMLExceptionD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer28initializeExceptionMsgLoaderEv() local_unnamed_addr #2 align 2 !prof !37 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgExceptDomainE)
  store ptr %1, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLException15reinitMsgLoaderEv)
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLException15reinitMsgLoaderEv() #3 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !44
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = load ptr, ptr %10, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLException11setPositionEPKcj(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 %2, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !44
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !49
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr null, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  store ptr %7, ptr %6, align 8, !tbaa !44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  store ptr %3, ptr %9, align 8, !tbaa !44
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  store ptr %12, ptr %9, align 8, !tbaa !44
  br label %13

13:                                               ; preds = %11, %4
  %14 = load ptr, ptr %9, align 8, !tbaa !44
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14)
  store ptr %15, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #2 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  store i32 %5, ptr %3, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !50
  store i32 %9, ptr %7, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %12, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load i16, ptr %12, align 2, !tbaa !52
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %21, %19 ], [ %12, %16 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !52
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !54

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %12 to i64
  %27 = sub i64 %25, %26
  %28 = add i64 %27, 2
  %29 = and i64 %28, 8589934590
  br label %30

30:                                               ; preds = %24, %16
  %31 = phi i64 [ %29, %24 ], [ 2, %16 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !42
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %31)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr nonnull align 2 %12, i64 %31, i1 false)
  br label %36

36:                                               ; preds = %2, %30
  %37 = phi ptr [ %35, %30 ], [ null, %2 ]
  store ptr %37, ptr %10, align 8, !tbaa !48
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %13, align 8, !tbaa !44
  store ptr %39, ptr %38, align 8, !tbaa !44
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef nonnull %41, ptr noundef %39)
  store ptr %44, ptr %6, align 8, !tbaa !49
  br label %45

45:                                               ; preds = %43, %36
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_712XMLExceptionaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 !prof !37 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  store ptr null, ptr %7, align 8, !tbaa !49
  %12 = load ptr, ptr %5, align 8, !tbaa !44
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %14)
  store ptr null, ptr %13, align 8, !tbaa !48
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  store ptr %19, ptr %5, align 8, !tbaa !44
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !51
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %4
  %30 = load i16, ptr %27, align 2, !tbaa !52
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %34, %32 ], [ %27, %29 ]
  %34 = getelementptr inbounds i16, ptr %33, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !52
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %32, !llvm.loop !54

37:                                               ; preds = %32
  %38 = ptrtoint ptr %34 to i64
  %39 = ptrtoint ptr %27 to i64
  %40 = sub i64 %38, %39
  %41 = add i64 %40, 2
  %42 = and i64 %41, 8589934590
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i64 [ %42, %37 ], [ 2, %29 ]
  %45 = load ptr, ptr %19, align 8, !tbaa !42
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %44)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr nonnull align 2 %27, i64 %44, i1 false)
  store ptr %48, ptr %13, align 8, !tbaa !48
  br label %49

49:                                               ; preds = %43, %4
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %5, align 8, !tbaa !44
  %55 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef nonnull %51, ptr noundef %54)
  store ptr %55, ptr %7, align 8, !tbaa !49
  br label %56

56:                                               ; preds = %49, %53, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !37 {
  %3 = alloca [2048 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv()
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 2047)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  br i1 %9, label %30, label %12

12:                                               ; preds = %2
  %13 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, align 2, !tbaa !52
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !52
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !54

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = add i64 %21, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE to i64)), i64 2)
  %23 = and i64 %22, 8589934590
  br label %24

24:                                               ; preds = %12, %20
  %25 = phi i64 [ %23, %20 ], [ 2, %12 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %29, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, i64 %25, i1 false)
  br label %50

30:                                               ; preds = %2
  %31 = load i16, ptr %3, align 16, !tbaa !52
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30, %33
  %34 = phi ptr [ %35, %33 ], [ %3, %30 ]
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !52
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %33, !llvm.loop !54

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i64
  %40 = ptrtoint ptr %3 to i64
  %41 = sub i64 %39, %40
  %42 = add i64 %41, 2
  %43 = and i64 %42, 8589934590
  br label %44

44:                                               ; preds = %30, %38
  %45 = phi i64 [ %43, %38 ], [ 2, %30 ]
  %46 = load ptr, ptr %11, align 8, !tbaa !42
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %45)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %49, ptr nonnull align 16 %3, i64 %45, i1 false)
  br label %50

50:                                               ; preds = %44, %24
  %51 = phi ptr [ %49, %44 ], [ %29, %24 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr %51, ptr %52, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %38

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %6 = load i1, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8)
  %9 = load i1, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13)
          to label %14 unwind label %18

14:                                               ; preds = %12
  store ptr %11, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15msgMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLException14reinitMsgMutexEv)
          to label %15 unwind label %16

15:                                               ; preds = %14
  store i1 true, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  br label %20

16:                                               ; preds = %14, %10
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %23

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %11) #11
  br label %23

20:                                               ; preds = %15, %7
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  br label %25

21:                                               ; preds = %34, %23
  %22 = phi { ptr, i32 } [ %24, %23 ], [ %35, %34 ]
  resume { ptr, i32 } %22

23:                                               ; preds = %18, %16
  %24 = phi { ptr, i32 } [ %17, %16 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  br label %21

25:                                               ; preds = %5, %20
  %26 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %26)
  %27 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgExceptDomainE)
          to label %31 unwind label %34

31:                                               ; preds = %29
  store ptr %30, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4)
          to label %36 unwind label %34

34:                                               ; preds = %36, %33, %29
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %21

36:                                               ; preds = %33, %31
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLException15reinitMsgLoaderEv)
          to label %37 unwind label %34

37:                                               ; preds = %36, %25
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %38

38:                                               ; preds = %37, %0
  %39 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 !prof !37 {
  %7 = alloca [4096 x i16], align 16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %7) #11
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv()
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = load ptr, ptr %9, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 4095, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %11)
  %16 = load ptr, ptr %10, align 8, !tbaa !44
  br i1 %15, label %35, label %17

17:                                               ; preds = %6
  %18 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, align 2, !tbaa !52
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %22, %20 ], [ @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, %17 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !52
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %20, !llvm.loop !54

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i64
  %27 = add i64 %26, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE to i64)), i64 2)
  %28 = and i64 %27, 8589934590
  br label %29

29:                                               ; preds = %17, %25
  %30 = phi i64 [ %28, %25 ], [ 2, %17 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, i64 %30, i1 false)
  br label %55

35:                                               ; preds = %6
  %36 = load i16, ptr %7, align 16, !tbaa !52
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %40, %38 ], [ %7, %35 ]
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !52
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %38, !llvm.loop !54

43:                                               ; preds = %38
  %44 = ptrtoint ptr %40 to i64
  %45 = ptrtoint ptr %7 to i64
  %46 = sub i64 %44, %45
  %47 = add i64 %46, 2
  %48 = and i64 %47, 8589934590
  br label %49

49:                                               ; preds = %35, %43
  %50 = phi i64 [ %48, %43 ], [ 2, %35 ]
  %51 = load ptr, ptr %16, align 8, !tbaa !42
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %54, ptr nonnull align 16 %7, i64 %50, i1 false)
  br label %55

55:                                               ; preds = %49, %29
  %56 = phi ptr [ %54, %49 ], [ %34, %29 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr %56, ptr %57, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %7) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 !prof !37 {
  %7 = alloca [4096 x i16], align 16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %7) #11
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv()
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = load ptr, ptr %9, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 4095, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %11)
  %16 = load ptr, ptr %10, align 8, !tbaa !44
  br i1 %15, label %35, label %17

17:                                               ; preds = %6
  %18 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, align 2, !tbaa !52
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %22, %20 ], [ @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, %17 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !52
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %20, !llvm.loop !54

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i64
  %27 = add i64 %26, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE to i64)), i64 2)
  %28 = and i64 %27, 8589934590
  br label %29

29:                                               ; preds = %17, %25
  %30 = phi i64 [ %28, %25 ], [ 2, %17 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE, i64 %30, i1 false)
  br label %55

35:                                               ; preds = %6
  %36 = load i16, ptr %7, align 16, !tbaa !52
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %40, %38 ], [ %7, %35 ]
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !52
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %38, !llvm.loop !54

43:                                               ; preds = %38
  %44 = ptrtoint ptr %40 to i64
  %45 = ptrtoint ptr %7 to i64
  %46 = sub i64 %44, %45
  %47 = add i64 %46, 2
  %48 = and i64 %47, 8589934590
  br label %49

49:                                               ; preds = %35, %43
  %50 = phi i64 [ %48, %43 ], [ 2, %35 ]
  %51 = load ptr, ptr %16, align 8, !tbaa !42
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %54, ptr nonnull align 16 %7, i64 %50, i1 false)
  br label %55

55:                                               ; preds = %49, %29
  %56 = phi ptr [ %54, %49 ], [ %34, %29 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr %56, ptr %57, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %7) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14reinitMsgMutexEv() #3 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #11
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  store i1 false, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XMLException.cpp() #10 section ".text.startup" !prof !57 !PGOFuncName !58 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15msgMutexCleanupE)
  ret void
}

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!35 = !{ptr @_GLOBAL__sub_I_XMLException.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !41, i64 0}
!44 = !{!45, !39, i64 40}
!45 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !46, i64 8, !39, i64 16, !47, i64 24, !39, i64 32, !39, i64 40}
!46 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !40, i64 0}
!47 = !{!"int", !40, i64 0}
!48 = !{!45, !39, i64 32}
!49 = !{!45, !39, i64 16}
!50 = !{!45, !47, i64 24}
!51 = !{!45, !46, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !40, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"XMLException.cpp;_GLOBAL__sub_I_XMLException.cpp"}
