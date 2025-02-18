; ModuleID = 'XMLBufferMgr.cpp'
source_filename = "XMLBufferMgr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLBufferMgrC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !38 {
  store i32 32, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !46
  %5 = load ptr, ptr %1, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 256), !prof !49
  store ptr %8, ptr %4, align 8, !tbaa !46
  %9 = load i32, ptr %0, align 8, !tbaa !39
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !50

11:                                               ; preds = %2
  %12 = zext i32 %9 to i64
  br label %14

13:                                               ; preds = %14, %2
  ret void

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %18, %14 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  store ptr null, ptr %17, align 8, !tbaa !51
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %13, label %14, !prof !52, !llvm.loop !53
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLBufferMgrD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !39
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !50

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  br label %14

6:                                                ; preds = %32, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %10)
          to label %37 unwind label %38, !prof !56

14:                                               ; preds = %4, %32
  %15 = phi i64 [ 0, %4 ], [ %33, %32 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !57

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = load ptr, ptr %22, align 8, !tbaa !47
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %24)
          to label %31 unwind label %28, !prof !62

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #7
  unreachable

31:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #8
  br label %32

32:                                               ; preds = %14, %31
  %33 = add nuw nsw i64 %15, 1
  %34 = load i32, ptr %0, align 8, !tbaa !39
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %14, label %6, !prof !63, !llvm.loop !64

37:                                               ; preds = %6
  ret void

38:                                               ; preds = %6
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #7
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !65 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = load i32, ptr %0, align 8, !tbaa !39
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %52, !prof !67

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %11

7:                                                ; preds = %42
  %8 = add nuw i32 %13, 1
  %9 = icmp ult i32 %8, %2
  %10 = icmp eq i32 %8, %2
  br i1 %10, label %52, label %11, !prof !68, !llvm.loop !69

11:                                               ; preds = %4, %7
  %12 = phi i1 [ %3, %4 ], [ %9, %7 ]
  %13 = phi i32 [ 0, %4 ], [ %8, %7 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %6, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %42, !prof !70

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %20)
  %22 = load ptr, ptr %19, align 8, !tbaa !45
  store i32 0, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 1
  store i32 1023, ptr %23, align 4, !tbaa !72
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 3
  store i8 0, ptr %25, align 4, !tbaa !74
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 4
  store ptr %22, ptr %26, align 8, !tbaa !58
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %28 = load ptr, ptr %22, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 2048)
          to label %32 unwind label %40, !prof !75

32:                                               ; preds = %18
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %21, i64 0, i32 6
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  store ptr %31, ptr %33, align 8, !tbaa !61
  store i16 0, ptr %31, align 2, !tbaa !76
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds ptr, ptr %35, i64 %14
  store ptr %21, ptr %36, align 8, !tbaa !51
  %37 = load ptr, ptr %34, align 8, !tbaa !46
  %38 = getelementptr inbounds ptr, ptr %37, i64 %14
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  br label %49

40:                                               ; preds = %18
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %21, ptr noundef %20) #8
  br label %63

42:                                               ; preds = %11
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %16, i64 0, i32 3
  %44 = load i8, ptr %43, align 4, !tbaa !74, !range !78, !noundef !79
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %7, !prof !80

46:                                               ; preds = %42
  store i32 0, ptr %16, align 8, !tbaa !71
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %16, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  store i16 0, ptr %48, align 2, !tbaa !76
  br label %49

49:                                               ; preds = %32, %46
  %50 = phi ptr [ %16, %46 ], [ %39, %32 ]
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %50, i64 0, i32 3
  store i8 1, ptr %51, align 4, !tbaa !74
  br label %52

52:                                               ; preds = %7, %49, %1
  %53 = phi i1 [ %3, %1 ], [ %12, %49 ], [ %9, %7 ]
  %54 = phi ptr [ undef, %1 ], [ %50, %49 ], [ undef, %7 ]
  br i1 %53, label %62, label %55, !prof !81

55:                                               ; preds = %52
  %56 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 13, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %55
  tail call void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %56) #8
  br label %63

62:                                               ; preds = %52
  ret ptr %54

63:                                               ; preds = %60, %40
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %41, %40 ]
  resume { ptr, i32 } %64
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull writeonly align 8 dereferenceable(40) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = load i32, ptr %0, align 8, !tbaa !39
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %24, !prof !67

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %21, label %10, !prof !83

10:                                               ; preds = %5, %14
  %11 = phi i32 [ %12, %14 ], [ 0, %5 ]
  %12 = add nuw i32 %11, 1
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %24, label %14, !prof !84, !llvm.loop !85

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %7, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %10, !prof !86, !llvm.loop !85

19:                                               ; preds = %14
  %20 = icmp ult i32 %12, %3
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i1 [ %20, %19 ], [ %4, %5 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 3
  store i8 0, ptr %23, align 4, !tbaa !74
  br i1 %22, label %31, label %24, !prof !87

24:                                               ; preds = %10, %2, %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBufferMgr", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 14, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %25) #8
  resume { ptr, i32 } %30

31:                                               ; preds = %21
  ret void
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_712XMLBufferMgrD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 14}
!36 = !{ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 14}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 4}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !41, i64 0, !44, i64 8, !44, i64 16}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!40, !44, i64 8}
!46 = !{!40, !44, i64 16}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !43, i64 0}
!49 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!50 = !{!"branch_weights", i32 1, i32 127}
!51 = !{!44, !44, i64 0}
!52 = !{!"branch_weights", i32 127, i32 3969}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!57 = !{!"branch_weights", i32 114, i32 14}
!58 = !{!59, !44, i64 16}
!59 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !41, i64 0, !41, i64 4, !41, i64 8, !60, i64 12, !44, i64 16, !44, i64 24, !44, i64 32}
!60 = !{!"bool", !42, i64 0}
!61 = !{!59, !44, i64 32}
!62 = !{!"VP", i32 0, i64 14, i64 -7405368087501025645, i64 14}
!63 = !{!"branch_weights", i32 3969, i32 127}
!64 = distinct !{!64, !54, !55}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!"function_entry_count", i64 379610}
!67 = !{!"branch_weights", i32 1, i32 0}
!68 = !{!"branch_weights", i32 0, i32 379646}
!69 = distinct !{!69, !54, !55}
!70 = !{!"branch_weights", i32 14, i32 379632}
!71 = !{!59, !41, i64 0}
!72 = !{!59, !41, i64 4}
!73 = !{!59, !41, i64 8}
!74 = !{!59, !60, i64 12}
!75 = !{!"VP", i32 0, i64 14, i64 8345045103670217670, i64 14}
!76 = !{!77, !77, i64 0}
!77 = !{!"short", !42, i64 0}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!"branch_weights", i32 379596, i32 36}
!81 = !{!"branch_weights", i32 379610, i32 0}
!82 = !{!"function_entry_count", i64 379609}
!83 = !{!"branch_weights", i32 379573, i32 36}
!84 = !{!"branch_weights", i32 0, i32 379645}
!85 = distinct !{!85, !54, !55}
!86 = !{!"branch_weights", i32 36, i32 0}
!87 = !{!"branch_weights", i32 379609, i32 0}
!88 = !{!89, !44, i64 40}
!89 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !90, i64 8, !44, i64 16, !41, i64 24, !44, i64 32, !44, i64 40}
!90 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
