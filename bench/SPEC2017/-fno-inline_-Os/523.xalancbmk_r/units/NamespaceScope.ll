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

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714NamespaceScope9StackElemC2Ev = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScopeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store i32 0, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  store i32 8, ptr %3, align 4, !tbaa !60
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 109, ptr noundef %1) #8
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !63
  %8 = load i32, ptr %3, align 4, !tbaa !60
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %1, align 8, !tbaa !64
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %10) #8
          to label %15 unwind label %19

15:                                               ; preds = %2
  store ptr %14, ptr %6, align 8, !tbaa !62
  %16 = load i32, ptr %3, align 4, !tbaa !60
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %18, i1 false)
  ret void

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #9
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5, !prof !67

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %26
  %8 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !62
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13, !prof !69

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = load ptr, ptr %11, align 8, !tbaa !70
  %17 = load ptr, ptr %15, align 8, !tbaa !64
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %16) #8
          to label %20 unwind label %41

20:                                               ; preds = %13
  %21 = load ptr, ptr %6, align 8, !tbaa !62
  %22 = getelementptr inbounds ptr, ptr %21, i64 %8
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #9
  br label %26

26:                                               ; preds = %20, %25
  %27 = add nuw nsw i64 %8, 1
  %28 = load i32, ptr %2, align 4, !tbaa !60
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %7, label %31, !prof !72, !llvm.loop !73

31:                                               ; preds = %26, %7, %1
  %32 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = load ptr, ptr %33, align 8, !tbaa !64
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35) #8
          to label %39 unwind label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %40) #9
  ret void

41:                                               ; preds = %13
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
  tail call void @__clang_call_terminate(ptr %47) #10
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_714NamespaceScope13increaseDepthEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !75

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714NamespaceScope11expandStackEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %8 = load i32, ptr %2, align 8, !tbaa !61
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %3, %1 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30, !prof !76

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %19) #8
  tail call void @_ZN11xercesc_2_714NamespaceScope9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #8
  %21 = load ptr, ptr %11, align 8, !tbaa !62
  %22 = load i32, ptr %2, align 8, !tbaa !61
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %20, ptr %24, align 8, !tbaa !68
  %25 = load ptr, ptr %11, align 8, !tbaa !62
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %27, i64 0, i32 1
  store i32 0, ptr %28, align 8, !tbaa !77
  store ptr null, ptr %27, align 8, !tbaa !70
  %29 = load ptr, ptr %26, align 8, !tbaa !68
  br label %30

30:                                               ; preds = %17, %9
  %31 = phi ptr [ %29, %17 ], [ %15, %9 ]
  %32 = phi i32 [ %22, %17 ], [ %10, %9 ]
  %33 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %31, i64 0, i32 2
  store i32 0, ptr %33, align 4, !tbaa !78
  %34 = add i32 %32, 1
  store i32 %34, ptr %2, align 8, !tbaa !61
  ret i32 %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope11expandStackEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = uitofp i32 %3 to double
  %5 = fmul double %4, 1.250000e+00
  %6 = fptoui double %5 to i32
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = zext i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %10) #8
  %15 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = load i32, ptr %2, align 4, !tbaa !60
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr %2, align 4, !tbaa !60
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  %23 = sub i32 %6, %20
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %25, i1 false)
  %26 = load ptr, ptr %7, align 8, !tbaa !63
  %27 = load ptr, ptr %15, align 8, !tbaa !62
  %28 = load ptr, ptr %26, align 8, !tbaa !64
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27) #8
  store ptr %14, ptr %15, align 8, !tbaa !62
  store i32 %6, ptr %2, align 4, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714NamespaceScope9StackElemC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_714NamespaceScope13decreaseDepthEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 28, ptr noundef %8) #8
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #11
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 8, !tbaa !61
  ret i32 %13
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !81

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 26, ptr noundef %10) #8
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = add i32 %5, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  %22 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %1) #8
  %23 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !78
  %25 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30, !prof !82

28:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_714NamespaceScope9expandMapEPNS0_9StackElemE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %20) #8
  %29 = load i32, ptr %23, align 4, !tbaa !78
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi i32 [ %29, %28 ], [ %24, %14 ]
  %32 = load ptr, ptr %20, align 8, !tbaa !70
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %32, i64 %33
  store i32 %22, ptr %34, align 4, !tbaa !83
  %35 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %32, i64 %33, i32 1
  store i32 %2, ptr %35, align 4, !tbaa !85
  %36 = add i32 %31, 1
  store i32 %36, ptr %23, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !88

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !89
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope9expandMapEPNS0_9StackElemE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr nocapture noundef %1) local_unnamed_addr #0 align 2 !prof !51 {
  %3 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i32 %4, 0
  %6 = uitofp i32 %4 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = select i1 %5, i32 16, i32 %8, !prof !76
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = load ptr, ptr %11, align 8, !tbaa !64
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %13) #8
  %18 = load ptr, ptr %1, align 8, !tbaa !70
  %19 = zext i32 %4 to i64
  %20 = shl nuw nsw i64 %19, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %20, i1 false)
  %21 = load ptr, ptr %10, align 8, !tbaa !63
  %22 = load ptr, ptr %1, align 8, !tbaa !70
  %23 = load ptr, ptr %21, align 8, !tbaa !64
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22) #8
  store ptr %17, ptr %1, align 8, !tbaa !70
  store i32 %9, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !91 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  %5 = tail call noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1) #8
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %36, label %9, !prof !92

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %31
  %14 = phi i64 [ %12, %9 ], [ %32, %31 ]
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::StackElem", ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !78
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20, !prof !93

20:                                               ; preds = %13
  %21 = load ptr, ptr %16, align 8, !tbaa !70
  br label %26

22:                                               ; preds = %26
  %23 = zext i32 %18 to i64
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %23
  br i1 %25, label %31, label %26, !prof !94, !llvm.loop !95

26:                                               ; preds = %20, %22
  %27 = phi i64 [ 0, %20 ], [ %24, %22 ]
  %28 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %21, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !83
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %34, label %22, !prof !96

31:                                               ; preds = %22, %13
  %32 = add nsw i64 %14, -1
  %33 = icmp slt i64 %14, 1
  br i1 %33, label %36, label %13, !prof !97, !llvm.loop !98

34:                                               ; preds = %26
  %35 = getelementptr inbounds %"struct.xercesc_2_7::NamespaceScope::PrefMapElem", ptr %21, i64 %27, i32 1
  br label %36

36:                                               ; preds = %31, %3, %34
  %37 = phi ptr [ %35, %34 ], [ %0, %3 ], [ %0, %31 ]
  %38 = load i32, ptr %37, align 4
  ret i32 %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !99 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !100

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !89
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714NamespaceScope5resetEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !51 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamespaceScope", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !61
  store i32 %1, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !104 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !105

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !108 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = load ptr, ptr %0, align 8, !tbaa !113
  %9 = load ptr, ptr %5, align 8, !tbaa !64
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #8
  store i32 %11, ptr %2, align 4, !tbaa !114
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !116

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !109
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !117
  %23 = load ptr, ptr %20, align 8, !tbaa !64
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #8
  br i1 %26, label %31, label %27, !prof !118

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !119, !llvm.loop !120

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xercesc_2_714NamespaceScopeC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_714NamespaceScopeC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_714NamespaceScopeD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD1Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_714NamespaceScope13increaseDepthEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_714NamespaceScope13increaseDepthEv, ptr @_ZN11xercesc_2_714NamespaceScope9StackElemC2Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj, ptr @__cxa_allocate_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj, ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, i64 2}
!43 = !{ptr @_ZN11xercesc_2_714NamespaceScope9addPrefixEPKtj, ptr @_ZN11xercesc_2_714NamespaceScope9expandMapEPNS0_9StackElemE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1706}
!45 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 291}
!46 = !{ptr @_ZNK11xercesc_2_714NamespaceScope21getNamespaceForPrefixEPKti, ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, i64 371}
!47 = !{ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1796708}
!48 = !{ptr @_ZN11xercesc_2_714NamespaceScope5resetEj, ptr @_ZN11xercesc_2_713XMLStringPool8flushAllEv, i64 1}
!49 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 1798414}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN11xercesc_2_714NamespaceScopeE", !54, i64 0, !54, i64 4, !54, i64 8, !57, i64 16, !59, i64 56, !59, i64 64}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !58, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !54, i64 32, !54, i64 36}
!58 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!59 = !{!"any pointer", !55, i64 0}
!60 = !{!53, !54, i64 4}
!61 = !{!53, !54, i64 8}
!62 = !{!53, !59, i64 56}
!63 = !{!53, !59, i64 64}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !56, i64 0}
!66 = !{!"function_entry_count", i64 5836268}
!67 = !{!"branch_weights", i32 1, i32 127}
!68 = !{!59, !59, i64 0}
!69 = !{!"branch_weights", i32 2, i32 2}
!70 = !{!71, !59, i64 0}
!71 = !{!"_ZTSN11xercesc_2_714NamespaceScope9StackElemE", !59, i64 0, !54, i64 8, !54, i64 12}
!72 = !{!"branch_weights", i32 257, i32 127}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"branch_weights", i32 1, i32 2}
!76 = !{!"branch_weights", i32 2, i32 1}
!77 = !{!71, !54, i64 8}
!78 = !{!71, !54, i64 12}
!79 = !{!"function_entry_count", i64 0}
!80 = !{!"function_entry_count", i64 3}
!81 = !{!"branch_weights", i32 1, i32 4}
!82 = !{!"branch_weights", i32 2, i32 3}
!83 = !{!84, !54, i64 0}
!84 = !{!"_ZTSN11xercesc_2_714NamespaceScope11PrefMapElemE", !54, i64 0, !54, i64 4}
!85 = !{!84, !54, i64 4}
!86 = !{!"function_entry_count", i64 1706}
!87 = !{!57, !59, i64 24}
!88 = !{!"branch_weights", i32 291, i32 1417}
!89 = !{!90, !54, i64 0}
!90 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !54, i64 0, !59, i64 8}
!91 = !{!"function_entry_count", i64 371}
!92 = !{!"branch_weights", i32 500, i32 47244}
!93 = !{!"branch_weights", i32 1, i32 372}
!94 = !{!"branch_weights", i32 1, i32 665}
!95 = distinct !{!95, !74}
!96 = !{!"branch_weights", i32 372, i32 295}
!97 = !{!"branch_weights", i32 127, i32 47489}
!98 = distinct !{!98, !74}
!99 = !{!"function_entry_count", i64 1796708}
!100 = !{!"branch_weights", i32 1, i32 1796709}
!101 = !{!102, !59, i64 40}
!102 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !103, i64 8, !59, i64 16, !54, i64 24, !59, i64 32, !59, i64 40}
!103 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!104 = !{!"function_entry_count", i64 1798414}
!105 = !{!"branch_weights", i32 291, i32 1798125}
!106 = !{!107, !59, i64 0}
!107 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !59, i64 0, !59, i64 8, !59, i64 16}
!108 = !{!"function_entry_count", i64 1798704}
!109 = !{!110, !59, i64 40}
!110 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !59, i64 0, !111, i64 8, !59, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !59, i64 40}
!111 = !{!"bool", !55, i64 0}
!112 = !{!110, !54, i64 24}
!113 = !{!110, !59, i64 0}
!114 = !{!54, !54, i64 0}
!115 = !{!110, !59, i64 16}
!116 = !{!"branch_weights", i32 1, i32 580}
!117 = !{!107, !59, i64 16}
!118 = !{!"branch_weights", i32 1798125, i32 634}
!119 = !{!"branch_weights", i32 580, i32 1798178}
!120 = distinct !{!120, !74}
