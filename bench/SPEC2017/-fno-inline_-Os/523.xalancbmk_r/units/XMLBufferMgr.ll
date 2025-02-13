; ModuleID = 'XMLBufferMgr.cpp'
source_filename = "XMLBufferMgr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer8setInUseEb = comdat any

$_ZNK11xercesc_2_79XMLBuffer8getInUseEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@.str = private unnamed_addr constant [17 x i8] c"XMLBufferMgr.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712XMLBufferMgrC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712XMLBufferMgrD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XMLBufferMgrD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLBufferMgrC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  store i32 32, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !62
  %5 = load ptr, ptr %1, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 256) #6
  store ptr %8, ptr %4, align 8, !tbaa !62
  %9 = load i32, ptr %0, align 8, !tbaa !55
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !65

11:                                               ; preds = %2
  %12 = zext i32 %9 to i64
  br label %14

13:                                               ; preds = %14, %2
  ret void

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %18, %14 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !62
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  store ptr null, ptr %17, align 8, !tbaa !66
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %13, label %14, !prof !67, !llvm.loop !68
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !70 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLBufferMgrD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !65

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  br label %14

6:                                                ; preds = %23, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = load ptr, ptr %8, align 8, !tbaa !63
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %10) #6
          to label %28 unwind label %29

14:                                               ; preds = %4, %23
  %15 = phi i32 [ %2, %4 ], [ %24, %23 ]
  %16 = phi i64 [ 0, %4 ], [ %25, %23 ]
  %17 = load ptr, ptr %5, align 8, !tbaa !62
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %19) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %19) #7
  %22 = load i32, ptr %0, align 8, !tbaa !55
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i32 [ %15, %14 ], [ %22, %21 ]
  %25 = add nuw nsw i64 %16, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %14, label %6, !prof !71, !llvm.loop !72

28:                                               ; preds = %6
  ret void

29:                                               ; preds = %6
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = load ptr, ptr %3, align 8, !tbaa !63
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #6
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #8
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4, !prof !79

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  br label %11

6:                                                ; preds = %27
  %7 = add nuw nsw i64 %12, 1
  %8 = load i32, ptr %0, align 8, !tbaa !55
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %33, !prof !80, !llvm.loop !81

11:                                               ; preds = %4, %6
  %12 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !62
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %27, !prof !82

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %19) #6
  %21 = load ptr, ptr %18, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 1023, ptr noundef %21) #6
          to label %22 unwind label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !62
  %24 = getelementptr inbounds ptr, ptr %23, i64 %12
  store ptr %20, ptr %24, align 8, !tbaa !66
  br label %40

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #7
  br label %47

27:                                               ; preds = %11
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer8getInUseEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #6
  br i1 %28, label %6, label %29, !prof !83

29:                                               ; preds = %27
  %30 = load ptr, ptr %5, align 8, !tbaa !62
  %31 = getelementptr inbounds ptr, ptr %30, i64 %12
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %32) #6
  br label %40

33:                                               ; preds = %6, %1
  %34 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 13, ptr noundef %36) #6
          to label %37 unwind label %38

37:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %34) #9
  br label %47

40:                                               ; preds = %29, %22
  %41 = load ptr, ptr %5, align 8, !tbaa !62
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_79XMLBuffer8setInUseEb(ptr noundef nonnull align 8 dereferenceable(40) %43, i1 noundef zeroext true) #6
  %44 = load ptr, ptr %5, align 8, !tbaa !62
  %45 = getelementptr inbounds ptr, ptr %44, i64 %12
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  ret ptr %46

47:                                               ; preds = %38, %25
  %48 = phi { ptr, i32 } [ %39, %38 ], [ %26, %25 ]
  resume { ptr, i32 } %48
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !73 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  store i32 0, ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !85
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !86
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !87
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !63
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #6
  store ptr %16, ptr %9, align 8, !tbaa !77
  store i16 0, ptr %16, align 2, !tbaa !88
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer8setInUseEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !90 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer8getInUseEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 4, !tbaa !87, !range !92, !noundef !93
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !94 {
  store i32 0, ptr %0, align 8, !tbaa !84
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  store i16 0, ptr %3, align 2, !tbaa !88
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #6
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = load i32, ptr %0, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5, !prof !79

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  br label %12

8:                                                ; preds = %12
  %9 = zext i32 %3 to i64
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %9
  br i1 %11, label %17, label %12, !prof !97, !llvm.loop !98

12:                                               ; preds = %5, %8
  %13 = phi i64 [ 0, %5 ], [ %10, %8 ]
  %14 = getelementptr inbounds ptr, ptr %7, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %24, label %8, !prof !99

17:                                               ; preds = %8, %2
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 14, ptr noundef %20) #6
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #9
  resume { ptr, i32 } %23

24:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_79XMLBuffer8setInUseEb(ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!53}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @_ZN11xercesc_2_712XMLBufferMgrC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!36 = !{ptr @_ZN11xercesc_2_712XMLBufferMgrD2Ev, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 64}
!37 = !{ptr @_ZN11xercesc_2_712XMLBufferMgrD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 64}
!38 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 15}
!39 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 15}
!40 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZNK11xercesc_2_79XMLBuffer8getInUseEv, i64 376666}
!41 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 376629}
!42 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @__cxa_allocate_exception, i64 2966}
!43 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2966}
!44 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @__cxa_throw, i64 1483}
!45 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @__cxa_free_exception, i64 1483}
!46 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZN11xercesc_2_79XMLBuffer8setInUseEb, i64 376644}
!47 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!48 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, ptr @__cxa_allocate_exception, i64 2966}
!49 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2966}
!50 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, ptr @__cxa_throw, i64 1483}
!51 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, ptr @__cxa_free_exception, i64 1483}
!52 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer8setInUseEb, i64 376643}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 4}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !57, i64 0, !60, i64 8, !60, i64 16}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!"any pointer", !58, i64 0}
!61 = !{!56, !60, i64 8}
!62 = !{!56, !60, i64 16}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !59, i64 0}
!65 = !{!"branch_weights", i32 1, i32 159}
!66 = !{!60, !60, i64 0}
!67 = !{!"branch_weights", i32 159, i32 3969}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"function_entry_count", i64 5836268}
!71 = !{!"branch_weights", i32 3969, i32 159}
!72 = distinct !{!72, !69}
!73 = !{!"function_entry_count", i64 496321}
!74 = !{!75, !60, i64 16}
!75 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !57, i64 0, !57, i64 4, !57, i64 8, !76, i64 12, !60, i64 16, !60, i64 24, !60, i64 32}
!76 = !{!"bool", !58, i64 0}
!77 = !{!75, !60, i64 32}
!78 = !{!"function_entry_count", i64 379610}
!79 = !{!"branch_weights", i32 1, i32 127}
!80 = !{!"branch_weights", i32 48594689, i32 127}
!81 = distinct !{!81, !69}
!82 = !{!"branch_weights", i32 15, i32 379633}
!83 = !{!"branch_weights", i32 37, i32 379597}
!84 = !{!75, !57, i64 0}
!85 = !{!75, !57, i64 4}
!86 = !{!75, !57, i64 8}
!87 = !{!75, !76, i64 12}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !58, i64 0}
!90 = !{!"function_entry_count", i64 759219}
!91 = !{!"function_entry_count", i64 379632}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!"function_entry_count", i64 8985736}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!"function_entry_count", i64 379609}
!97 = !{!"branch_weights", i32 127, i32 48594561}
!98 = distinct !{!98, !69}
!99 = !{!"branch_weights", i32 379610, i32 37}
!100 = !{!101, !60, i64 40}
!101 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !102, i64 8, !60, i64 16, !57, i64 24, !60, i64 32, !60, i64 40}
!102 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !58, i64 0}
