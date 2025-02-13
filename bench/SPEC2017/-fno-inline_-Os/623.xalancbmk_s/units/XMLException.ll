; ModuleID = 'XMLException.cpp'
source_filename = "XMLException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_712XMLExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XMLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_712XMLExceptionD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTSN11xercesc_2_712XMLExceptionE = dso_local constant [30 x i8] c"N11xercesc_2_712XMLExceptionE\00", align 1
@_ZTIN11xercesc_2_712XMLExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZN11xercesc_2_7L16msgLoaderCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L15msgMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni14fgExceptDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L10sMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni11fgDefErrMsgE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L23sScannerMutexRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L9sMsgMutexE = internal unnamed_addr global ptr null, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLException.cpp, ptr null }]

@_ZN11xercesc_2_712XMLExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XMLExceptionD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15msgMutexCleanupE) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer28initializeExceptionMsgLoaderEv() local_unnamed_addr #4 align 2 !prof !38 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgExceptDomainE) #11
  store ptr %1, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLException15reinitMsgLoaderEv) #11
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLException15reinitMsgLoaderEv() #5 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %3, align 8, !tbaa !43
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #11
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = load ptr, ptr %10, align 8, !tbaa !43
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #11
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #10
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLException11setPositionEPKcj(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 %2, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8) #11
  %12 = load ptr, ptr %5, align 8, !tbaa !45
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12) #11
  store ptr %13, ptr %7, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr null, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  store ptr %7, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !53 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  store ptr %3, ptr %9, align 8, !tbaa !45
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  store ptr %12, ptr %9, align 8, !tbaa !45
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ %3, %4 ]
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #11
  store ptr %15, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #4 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  store i32 %5, ptr %3, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !51
  store i32 %9, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %14) #11
  store ptr %15, ptr %10, align 8, !tbaa !49
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %13, align 8, !tbaa !45
  store ptr %17, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef nonnull %19, ptr noundef %17) #11
  store ptr %22, ptr %6, align 8, !tbaa !50
  br label %23

23:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !54 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !55

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #11
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !57

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !58
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !60

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !58
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !61, !llvm.loop !62

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_712XMLExceptionaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 dereferenceable(48) %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8) #11
  store ptr null, ptr %7, align 8, !tbaa !50
  %12 = load ptr, ptr %5, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = load ptr, ptr %12, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %14) #11
  store ptr null, ptr %13, align 8, !tbaa !49
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  store ptr %19, ptr %5, align 8, !tbaa !45
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %27, ptr noundef %19) #11
  store ptr %30, ptr %13, align 8, !tbaa !49
  br label %31

31:                                               ; preds = %29, %4
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !45
  %37 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKcPNS_13MemoryManagerE(ptr noundef nonnull %33, ptr noundef %36) #11
  store ptr %37, ptr %7, align 8, !tbaa !50
  br label %38

38:                                               ; preds = %31, %35, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = alloca [2048 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 2047) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = select i1 %9, ptr %3, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE
  %13 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %12, ptr noundef %11) #11
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr %13, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv() unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !38 !PGOFuncName !64 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L9gMsgMutexEv() #11
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #11
  %6 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgExceptDomainE) #11
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #11
          to label %15 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLException15reinitMsgLoaderEv) #11
          to label %16 unwind label %13

16:                                               ; preds = %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  %17 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi ptr [ %17, %16 ], [ %2, %0 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L9gMsgMutexEv() unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !38 !PGOFuncName !65 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load i1, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !39
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %4) #11
  %5 = load i1, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #11
          to label %8 unwind label %12

8:                                                ; preds = %6
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #11
          to label %10 unwind label %14

10:                                               ; preds = %8
  store ptr %7, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15msgMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLException14reinitMsgMutexEv) #11
          to label %11 unwind label %12

11:                                               ; preds = %10
  store i1 true, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  br label %16

12:                                               ; preds = %10, %6
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %17

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %7) #12
  br label %17

16:                                               ; preds = %11, %3
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  br label %19

17:                                               ; preds = %14, %12
  %18 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  resume { ptr, i32 } %18

19:                                               ; preds = %16, %0
  %20 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  ret ptr %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14reinitMsgMutexEv() #5 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #12
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  store i1 false, ptr @_ZN11xercesc_2_7L23sScannerMutexRegisteredE, align 1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 !prof !38 {
  %7 = alloca [4096 x i16], align 16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %7) #13
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv() #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load ptr, ptr %9, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 4095, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %11) #11
  %16 = load ptr, ptr %10, align 8, !tbaa !45
  %17 = select i1 %15, ptr %7, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE
  %18 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %17, ptr noundef %16) #11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 !prof !38 {
  %7 = alloca [4096 x i16], align 16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %7) #13
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gGetMsgLoaderEv() #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load ptr, ptr %9, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 4095, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %11) #11
  %16 = load ptr, ptr %10, align 8, !tbaa !45
  %17 = select i1 %15, ptr %7, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE
  %18 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %17, ptr noundef %16) #11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XMLException.cpp() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

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
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !42, i64 0}
!45 = !{!46, !40, i64 40}
!46 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !47, i64 8, !40, i64 16, !48, i64 24, !40, i64 32, !40, i64 40}
!47 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}
!48 = !{!"int", !41, i64 0}
!49 = !{!46, !40, i64 32}
!50 = !{!46, !40, i64 16}
!51 = !{!46, !48, i64 24}
!52 = !{!46, !47, i64 8}
!53 = !{!"function_entry_count", i64 5836268}
!54 = !{!"function_entry_count", i64 558789}
!55 = !{!"branch_weights", i32 158605, i32 400186}
!56 = !{!"function_entry_count", i64 2453164456}
!57 = !{!"branch_weights", i32 1, i32 -1841802839}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !41, i64 0}
!60 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!61 = !{!"branch_weights", i32 408669070, i32 -279908792}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"XMLException.cpp:_ZN11xercesc_2_7L13gGetMsgLoaderEv"}
!65 = !{!"XMLException.cpp:_ZN11xercesc_2_7L9gMsgMutexEv"}
