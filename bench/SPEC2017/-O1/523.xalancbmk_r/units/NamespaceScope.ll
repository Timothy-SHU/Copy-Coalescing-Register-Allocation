; ModuleID = 'NamespaceScope.cpp'
source_filename = "NamespaceScope.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NamespaceScope" = type { i32, i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"struct.xercesc_2_7::NamespaceScope::StackElem" = type { ptr, i32, i32 }
%"struct.xercesc_2_7::NamespaceScope::PrefMapElem" = type { i32, i32 }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@.str = private unnamed_addr constant [19 x i8] c"NamespaceScope.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_714NamespaceScopeC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714NamespaceScopeC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_714NamespaceScopeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714NamespaceScopeD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScopeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store i32 0, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  store i32 8, ptr %3, align 4, !tbaa !53
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 109, ptr noundef %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !56
  %8 = load i32, ptr %3, align 4, !tbaa !53
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %1, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %10)
          to label %15 unwind label %19, !prof !59

15:                                               ; preds = %2
  store ptr %14, ptr %6, align 8, !tbaa !55
  %16 = load i32, ptr %3, align 4, !tbaa !53
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %18, i1 false), !prof !60
  ret void

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #8
  resume { ptr, i32 } %20
}

declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5, !prof !61

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %27
  %8 = phi i32 [ 0, %5 ], [ %28, %27 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !55
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !63

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = load ptr, ptr %12, align 8, !tbaa !64
  %18 = load ptr, ptr %16, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17)
          to label %21 unwind label %41, !prof !66

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 8, !tbaa !55
  %23 = getelementptr inbounds ptr, ptr %22, i64 %10
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !61

26:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %24) #8
  br label %27

27:                                               ; preds = %21, %26
  %28 = add nuw i32 %8, 1
  %29 = load i32, ptr %2, align 4, !tbaa !53
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %7, label %31, !prof !67, !llvm.loop !68

31:                                               ; preds = %27, %7, %1
  %32 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = load ptr, ptr %33, align 8, !tbaa !57
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35)
          to label %39 unwind label %43, !prof !66

39:                                               ; preds = %31
  %40 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %40) #8
  ret void

41:                                               ; preds = %14
  %42 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

43:                                               ; preds = %31
  %44 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ]
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #9
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !71 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_714NamespaceScope13increaseDepthEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %35, !prof !61

7:                                                ; preds = %1
  %8 = uitofp i32 %5 to double
  %9 = fmul double %8, 1.250000e+00
  %10 = fptoui double %9 to i32
  %11 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14)
  %19 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = load i32, ptr %4, align 4, !tbaa !53
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %20, i64 %23, i1 false)
  %24 = load i32, ptr %4, align 4, !tbaa !53
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %18, i64 %25
  %27 = sub i32 %10, %24
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %29, i1 false)
  %30 = load ptr, ptr %11, align 8, !tbaa !56
  %31 = load ptr, ptr %19, align 8, !tbaa !55
  %32 = load ptr, ptr %30, align 8, !tbaa !57
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31)
  store ptr %18, ptr %19, align 8, !tbaa !55
  store i32 %10, ptr %4, align 4, !tbaa !53
  br label %35

35:                                               ; preds = %7, %1
  %36 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = load i32, ptr %2, align 8, !tbaa !54
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %55, !prof !72

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %45)
  %47 = load ptr, ptr %36, align 8, !tbaa !55
  %48 = load i32, ptr %2, align 8, !tbaa !54
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %46, ptr %50, align 8, !tbaa !62
  %51 = load ptr, ptr %36, align 8, !tbaa !55
  %52 = getelementptr inbounds ptr, ptr %51, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %53, i64 0, i32 1
  store i32 0, ptr %54, align 8, !tbaa !73
  store ptr null, ptr %53, align 8, !tbaa !64
  br label %55

55:                                               ; preds = %43, %35
  %56 = load ptr, ptr %36, align 8, !tbaa !55
  %57 = load i32, ptr %2, align 8, !tbaa !54
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %60, i64 0, i32 2
  store i32 0, ptr %61, align 4, !tbaa !74
  %62 = add i32 %57, 1
  store i32 %62, ptr %2, align 8, !tbaa !54
  ret i32 %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope11expandStackEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = uitofp i32 %3 to double
  %5 = fmul double %4, 1.250000e+00
  %6 = fptoui double %5 to i32
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = zext i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %8, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %10)
  %15 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = load i32, ptr %2, align 4, !tbaa !53
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr %2, align 4, !tbaa !53
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  %26 = load ptr, ptr %7, align 8, !tbaa !56
  %27 = load ptr, ptr %15, align 8, !tbaa !55
  %28 = load ptr, ptr %26, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27)
  store ptr %14, ptr %15, align 8, !tbaa !55
  store i32 %6, ptr %2, align 4, !tbaa !53
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_714NamespaceScope13decreaseDepthEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 28, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #8
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 8, !tbaa !54
  ret i32 %13
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !76

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %9 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 26, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #8
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !78

25:                                               ; preds = %14
  %26 = load i32, ptr %23, align 8, !tbaa !79
  br label %30

27:                                               ; preds = %14
  %28 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  %29 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %1)
  br label %30

30:                                               ; preds = %25, %27
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  %32 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %20, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !74
  %34 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %20, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !73
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %59, !prof !81

37:                                               ; preds = %30
  %38 = icmp eq i32 %35, 0
  %39 = uitofp i32 %35 to double
  %40 = fmul double %39, 1.250000e+00
  %41 = fptoui double %40 to i32
  %42 = select i1 %38, i32 16, i32 %41, !prof !72
  %43 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = zext i32 %42 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !57
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46), !prof !59
  %51 = load ptr, ptr %20, align 8, !tbaa !64
  %52 = zext i32 %35 to i64
  %53 = shl nuw nsw i64 %52, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %50, ptr align 4 %51, i64 %53, i1 false), !prof !82
  %54 = load ptr, ptr %43, align 8, !tbaa !56
  %55 = load ptr, ptr %20, align 8, !tbaa !64
  %56 = load ptr, ptr %54, align 8, !tbaa !57
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %55), !prof !66
  store ptr %50, ptr %20, align 8, !tbaa !64
  store i32 %42, ptr %34, align 8, !tbaa !73
  br label %59

59:                                               ; preds = %37, %30
  %60 = load ptr, ptr %20, align 8, !tbaa !64
  %61 = load i32, ptr %32, align 4, !tbaa !74
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %60, i64 %62
  store i32 %31, ptr %63, align 4, !tbaa !83
  %64 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %60, i64 %62, i32 1
  store i32 %2, ptr %64, align 4, !tbaa !85
  %65 = add i32 %61, 1
  store i32 %65, ptr %32, align 4, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope9expandMapEPNS0_9StackElemE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr nocapture noundef %1) local_unnamed_addr #0 align 2 !prof !71 {
  %3 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = icmp eq i32 %4, 0
  %6 = uitofp i32 %4 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = select i1 %5, i32 16, i32 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %13)
  %18 = load ptr, ptr %1, align 8, !tbaa !64
  %19 = zext i32 %4 to i64
  %20 = shl nuw nsw i64 %19, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %20, i1 false)
  %21 = load ptr, ptr %10, align 8, !tbaa !56
  %22 = load ptr, ptr %1, align 8, !tbaa !64
  %23 = load ptr, ptr %21, align 8, !tbaa !57
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22)
  store ptr %17, ptr %1, align 8, !tbaa !64
  store i32 %9, ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !87

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !79
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13, !prof !87

13:                                               ; preds = %10
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %50, label %15, !prof !61

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = zext nneg i32 %2 to i64
  br label %21

19:                                               ; preds = %10
  %20 = load i32, ptr %0, align 8, !tbaa !45
  br label %55

21:                                               ; preds = %15, %47
  %22 = phi i64 [ %18, %15 ], [ %48, %47 ]
  %23 = phi i1 [ %14, %15 ], [ %49, %47 ]
  %24 = phi i32 [ undef, %15 ], [ %46, %47 ]
  %25 = getelementptr inbounds ptr, ptr %17, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !74
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30, !prof !87

30:                                               ; preds = %21
  %31 = load ptr, ptr %26, align 8, !tbaa !64
  br label %35

32:                                               ; preds = %35
  %33 = add nuw i32 %36, 1
  %34 = icmp eq i32 %33, %28
  br i1 %34, label %44, label %35, !prof !88, !llvm.loop !89

35:                                               ; preds = %30, %32
  %36 = phi i32 [ 0, %30 ], [ %33, %32 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %31, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !83
  %40 = icmp eq i32 %39, %11
  br i1 %40, label %41, label %32, !prof !90

41:                                               ; preds = %35
  %42 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %31, i64 %37, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !85
  br label %44

44:                                               ; preds = %32, %41, %21
  %45 = phi i32 [ 4, %21 ], [ 1, %41 ], [ 0, %32 ]
  %46 = phi i32 [ %24, %21 ], [ %43, %41 ], [ %24, %32 ]
  switch i32 %45, label %50 [
    i32 0, label %47
    i32 4, label %47
  ], !prof !91

47:                                               ; preds = %44, %44
  %48 = add nsw i64 %22, -1
  %49 = icmp slt i64 %22, 1
  br i1 %49, label %50, label %21, !prof !87, !llvm.loop !92

50:                                               ; preds = %44, %47, %13
  %51 = phi i1 [ %14, %13 ], [ %23, %44 ], [ %49, %47 ]
  %52 = phi i32 [ undef, %13 ], [ %46, %47 ], [ %46, %44 ]
  %53 = load i32, ptr %0, align 8
  %54 = select i1 %51, i32 %53, i32 %52, !prof !87
  br label %55

55:                                               ; preds = %50, %19
  %56 = phi i32 [ %54, %50 ], [ %20, %19 ]
  ret i32 %56
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope5resetEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !54
  store i32 %1, ptr %0, align 8, !tbaa !45
  ret void
}

declare void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !57
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !100
  %7 = load ptr, ptr %0, align 8, !tbaa !101
  %8 = load ptr, ptr %4, align 8, !tbaa !57
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !102
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !104

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !97
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = load ptr, ptr %19, align 8, !tbaa !57
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !107
  br i1 %25, label %30, label %26, !prof !108

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !109, !llvm.loop !110

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !111

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !112
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xercesc_2_714NamespaceScopeC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_714NamespaceScopeD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_714NamespaceScopeD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD1Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_714NamespaceScope13increaseDepthEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 3}
!40 = !{ptr @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 3}
!41 = !{ptr @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 371}
!42 = !{ptr @_ZN11xercesc_2_714NamespaceScope5resetEj, ptr @_ZN11xercesc_2_713XMLStringPool8flushAllEv, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN11xercesc_2_714NamespaceScopeE", !47, i64 0, !47, i64 4, !47, i64 8, !50, i64 16, !52, i64 56, !52, i64 64}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !51, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !47, i64 32, !47, i64 36}
!51 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!52 = !{!"any pointer", !48, i64 0}
!53 = !{!46, !47, i64 4}
!54 = !{!46, !47, i64 8}
!55 = !{!46, !52, i64 56}
!56 = !{!46, !52, i64 64}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !49, i64 0}
!59 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!60 = !{!"VP", i32 1, i64 1, i64 64, i64 1}
!61 = !{!"branch_weights", i32 0, i32 1}
!62 = !{!52, !52, i64 0}
!63 = !{!"branch_weights", i32 1, i32 1}
!64 = !{!65, !52, i64 0}
!65 = !{!"_ZTSN11xercesc_2_714NamespaceScope9StackElemE", !52, i64 0, !47, i64 8, !47, i64 12}
!66 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!67 = !{!"branch_weights", i32 2, i32 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!"branch_weights", i32 1, i32 0}
!73 = !{!65, !47, i64 8}
!74 = !{!65, !47, i64 12}
!75 = !{!"function_entry_count", i64 3}
!76 = !{!"branch_weights", i32 0, i32 3}
!77 = !{!50, !52, i64 24}
!78 = !{!"branch_weights", i32 3, i32 0}
!79 = !{!80, !47, i64 0}
!80 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !47, i64 0, !52, i64 8}
!81 = !{!"branch_weights", i32 1, i32 2}
!82 = !{!"VP", i32 1, i64 1, i64 0, i64 1}
!83 = !{!84, !47, i64 0}
!84 = !{!"_ZTSN11xercesc_2_714NamespaceScope11PrefMapElemE", !47, i64 0, !47, i64 4}
!85 = !{!84, !47, i64 4}
!86 = !{!"function_entry_count", i64 371}
!87 = !{!"branch_weights", i32 0, i32 371}
!88 = !{!"branch_weights", i32 0, i32 665}
!89 = distinct !{!89, !69, !70}
!90 = !{!"branch_weights", i32 371, i32 294}
!91 = !{!"branch_weights", i32 371, i32 0, i32 0}
!92 = distinct !{!92, !69, !70}
!93 = !{!94, !52, i64 40}
!94 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !95, i64 8, !52, i64 16, !47, i64 24, !52, i64 32, !52, i64 40}
!95 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !48, i64 0}
!96 = !{!"function_entry_count", i64 1798414}
!97 = !{!98, !52, i64 40}
!98 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !52, i64 0, !99, i64 8, !52, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !52, i64 40}
!99 = !{!"bool", !48, i64 0}
!100 = !{!98, !47, i64 24}
!101 = !{!98, !52, i64 0}
!102 = !{!"VP", i32 0, i64 1798414, i64 3024540859536234746, i64 1798414}
!103 = !{!98, !52, i64 16}
!104 = !{!"branch_weights", i32 1, i32 289}
!105 = !{!106, !52, i64 16}
!106 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!107 = !{!"VP", i32 0, i64 1798632, i64 -1309333655503989351, i64 1798632}
!108 = !{!"branch_weights", i32 1798124, i32 508}
!109 = !{!"branch_weights", i32 289, i32 1798343}
!110 = distinct !{!110, !69, !70}
!111 = !{!"branch_weights", i32 290, i32 1798124}
!112 = !{!106, !52, i64 0}
