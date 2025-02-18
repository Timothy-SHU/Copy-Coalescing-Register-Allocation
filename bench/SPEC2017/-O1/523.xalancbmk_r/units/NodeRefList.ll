; ModuleID = 'NodeRefList.cpp'
source_filename = "NodeRefList.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

@_ZTVN11xalanc_1_1011NodeRefListE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011NodeRefListE, ptr @_ZN11xalanc_1_1011NodeRefListD2Ev, ptr @_ZN11xalanc_1_1011NodeRefListD0Ev, ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj, ptr @_ZNK11xalanc_1_1011NodeRefList9getLengthEv, ptr @_ZNK11xalanc_1_1011NodeRefList7indexOfEPKNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011NodeRefListE = dso_local constant [29 x i8] c"N11xalanc_1_1011NodeRefListE\00", align 1
@_ZTIN11xalanc_1_1015NodeRefListBaseE = external constant ptr
@_ZTIN11xalanc_1_1011NodeRefListE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011NodeRefListE, ptr @_ZTIN11xalanc_1_1015NodeRefListBaseE }, align 8

@_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1011NodeRefListC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011NodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1011NodeRefListC1ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011NodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1011NodeRefListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011NodeRefListD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1011NodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011NodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1011NodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !58
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !59

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !51
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !60
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !61
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !62
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = load i64, ptr %9, align 8, !tbaa !58
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !63

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !51
  %28 = load i64, ptr %6, align 8, !tbaa !58
  %29 = load i64, ptr %7, align 8, !tbaa !60
  %30 = load ptr, ptr %8, align 8, !tbaa !62
  %31 = load ptr, ptr %5, align 8, !tbaa !51
  store ptr %31, ptr %0, align 8, !tbaa !51
  %32 = load i64, ptr %14, align 8, !tbaa !58
  store i64 %32, ptr %6, align 8, !tbaa !58
  %33 = load i64, ptr %15, align 8, !tbaa !60
  store i64 %33, ptr %7, align 8, !tbaa !60
  %34 = load ptr, ptr %21, align 8, !tbaa !62
  store ptr %34, ptr %8, align 8, !tbaa !62
  store ptr %27, ptr %5, align 8, !tbaa !51
  store i64 %28, ptr %14, align 8, !tbaa !58
  store i64 %29, ptr %15, align 8, !tbaa !60
  store ptr %30, ptr %21, align 8, !tbaa !62
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !63

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !60
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !62
  %50 = load ptr, ptr %5, align 8, !tbaa !51
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !64

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !48
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !65
  store ptr %65, ptr %8, align 8, !tbaa !62
  store i64 %3, ptr %7, align 8, !tbaa !60
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011NodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1011NodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %6 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !66 {
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %34, label %5, !prof !67

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !58
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10, !prof !68

10:                                               ; preds = %5
  store i64 0, ptr %7, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %10, %5
  %12 = load ptr, ptr %1, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !69
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !60
  %19 = icmp ult i64 %18, %16
  br i1 %19, label %20, label %21, !prof !70

20:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %16)
  br label %21

21:                                               ; preds = %11, %20
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %34, label %23, !prof !71

23:                                               ; preds = %21, %31
  %24 = phi i32 [ %32, %31 ], [ 0, %21 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %25 = load ptr, ptr %1, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %24), !prof !72
  store ptr %28, ptr %3, align 8, !tbaa !73
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !74

30:                                               ; preds = %23
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %31

31:                                               ; preds = %30, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %32 = add nuw i32 %24, 1
  %33 = icmp eq i32 %32, %15
  br i1 %33, label %34, label %23, !prof !75, !llvm.loop !76

34:                                               ; preds = %31, %21, %2
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !79

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !80

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011NodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1011NodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011NodeRefListD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 !prof !56 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1011NodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !56 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %8

8:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !51
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !51
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = load i64, ptr %6, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = load ptr, ptr %3, align 8, !tbaa !51
  store ptr %19, ptr %0, align 8, !tbaa !51
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !58
  store i64 %21, ptr %14, align 8, !tbaa !58
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !60
  store i64 %23, ptr %6, align 8, !tbaa !60
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  store ptr %25, ptr %17, align 8, !tbaa !62
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i64 %15, ptr %20, align 8, !tbaa !58
  store i64 %16, ptr %22, align 8, !tbaa !60
  store ptr %18, ptr %24, align 8, !tbaa !62
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds ptr, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !58
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds ptr, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  %48 = getelementptr inbounds ptr, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !58
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !58
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !62
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !82 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds ptr, ptr %5, i64 %3
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #9 align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !58
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1011NodeRefList7indexOfEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef readnone %1) unnamed_addr #8 align 2 !prof !84 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = ptrtoint ptr %7 to i64
  %9 = ashr i64 %6, 2
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %36, !prof !85

11:                                               ; preds = %2
  %12 = shl nsw i64 %6, 3
  %13 = and i64 %12, -32
  %14 = getelementptr i8, ptr %4, i64 %13
  br label %15

15:                                               ; preds = %32, %11
  %16 = phi i64 [ %9, %11 ], [ %34, %32 ]
  %17 = phi ptr [ %4, %11 ], [ %33, %32 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %63, label %20, !prof !86

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %57, label %24, !prof !87

24:                                               ; preds = %20
  %25 = getelementptr inbounds ptr, ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %59, label %28, !prof !88

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %17, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %61, label %32, !prof !89

32:                                               ; preds = %28
  %33 = getelementptr inbounds ptr, ptr %17, i64 4
  %34 = add nsw i64 %16, -1
  %35 = icmp sgt i64 %16, 1
  br i1 %35, label %15, label %36, !prof !90, !llvm.loop !91

36:                                               ; preds = %32, %2
  %37 = phi ptr [ %4, %2 ], [ %14, %32 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %8, %38
  %40 = ashr exact i64 %39, 3
  switch i64 %40, label %56 [
    i64 3, label %41
    i64 2, label %46
    i64 1, label %52
  ], !prof !92

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !73
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %63, label %44, !prof !93

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %37, i64 1
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %63, label %50, !prof !94

50:                                               ; preds = %46
  %51 = getelementptr inbounds ptr, ptr %47, i64 1
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi ptr [ %51, %50 ], [ %37, %36 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %63, label %56, !prof !95

56:                                               ; preds = %52, %36
  br label %63

57:                                               ; preds = %20
  %58 = getelementptr inbounds ptr, ptr %17, i64 1
  br label %63

59:                                               ; preds = %24
  %60 = getelementptr inbounds ptr, ptr %17, i64 2
  br label %63

61:                                               ; preds = %28
  %62 = getelementptr inbounds ptr, ptr %17, i64 3
  br label %63

63:                                               ; preds = %15, %57, %59, %61, %41, %46, %52, %56
  %64 = phi ptr [ %7, %56 ], [ %37, %41 ], [ %53, %52 ], [ %47, %46 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %17, %15 ]
  %65 = ptrtoint ptr %4 to i64
  %66 = icmp eq ptr %64, %7
  %67 = ptrtoint ptr %64 to i64
  %68 = sub i64 %67, %65
  %69 = lshr exact i64 %68, 3
  %70 = trunc i64 %69 to i32
  %71 = select i1 %66, i32 -1, i32 %70, !prof !96
  ret i32 %71
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = load ptr, ptr %3, align 8, !tbaa !51
  store ptr %12, ptr %0, align 8, !tbaa !51
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !58
  store i64 %14, ptr %6, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !60
  store i64 %16, ptr %8, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  store ptr %18, ptr %10, align 8, !tbaa !62
  store ptr %5, ptr %3, align 8, !tbaa !51
  store i64 %7, ptr %13, align 8, !tbaa !58
  store i64 %9, ptr %15, align 8, !tbaa !60
  store ptr %11, ptr %17, align 8, !tbaa !62
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !98

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !48
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !99

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #16
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !56 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !101

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !58
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !60
  br i1 %18, label %21, label %39, !prof !63

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !101

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !102

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !62
  %28 = load i64, ptr %12, align 8, !tbaa !58
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !73
  store ptr %34, ptr %32, align 8, !tbaa !73
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !103, !llvm.loop !104

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %42 = load ptr, ptr %0, align 8, !tbaa !51
  store ptr %42, ptr %5, align 8, !tbaa !51
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !58
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !60
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !48
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !62
  %51 = load i64, ptr %43, align 8, !tbaa !58
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !62
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !62
  %56 = load i64, ptr %43, align 8, !tbaa !58
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !62
  %60 = load i64, ptr %43, align 8, !tbaa !58
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !62
  %63 = load i64, ptr %12, align 8, !tbaa !58
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !51
  %67 = load i64, ptr %12, align 8, !tbaa !58
  %68 = load i64, ptr %19, align 8, !tbaa !60
  %69 = load ptr, ptr %15, align 8, !tbaa !62
  %70 = load ptr, ptr %5, align 8, !tbaa !51
  store ptr %70, ptr %0, align 8, !tbaa !51
  %71 = load i64, ptr %43, align 8, !tbaa !58
  store i64 %71, ptr %12, align 8, !tbaa !58
  %72 = load i64, ptr %44, align 8, !tbaa !60
  store i64 %72, ptr %19, align 8, !tbaa !60
  %73 = load ptr, ptr %50, align 8, !tbaa !62
  store ptr %73, ptr %15, align 8, !tbaa !62
  store ptr %66, ptr %5, align 8, !tbaa !51
  store i64 %67, ptr %43, align 8, !tbaa !58
  store i64 %68, ptr %44, align 8, !tbaa !60
  store ptr %69, ptr %50, align 8, !tbaa !62
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !48
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #16
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !60
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !62
  %89 = load ptr, ptr %5, align 8, !tbaa !51
  %90 = load ptr, ptr %89, align 8, !tbaa !48
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #16
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !105

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !106

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !107

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !58
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !60
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !109

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %13, ptr %12, align 8, !tbaa !73
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !58
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !51
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !111

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !51
  %24 = load i64, ptr %4, align 8, !tbaa !58
  %25 = load i64, ptr %6, align 8, !tbaa !60
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = load ptr, ptr %3, align 8, !tbaa !51
  store ptr %28, ptr %0, align 8, !tbaa !51
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !58
  store i64 %30, ptr %4, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !60
  store i64 %32, ptr %6, align 8, !tbaa !60
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  store ptr %34, ptr %26, align 8, !tbaa !62
  store ptr %23, ptr %3, align 8, !tbaa !51
  store i64 %24, ptr %29, align 8, !tbaa !58
  store i64 %25, ptr %31, align 8, !tbaa !60
  store ptr %27, ptr %33, align 8, !tbaa !62
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !110

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !112

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !60
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = load ptr, ptr %3, align 8, !tbaa !51
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015NodeRefListBaseC2Ev, i64 21}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52643}
!37 = !{ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE, ptr @_ZNK11xalanc_1_1011NodeRefList9getLengthEv, i64 6851}
!38 = !{ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 12}
!39 = !{ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE, ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj, i64 110857}
!40 = !{ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 110857}
!41 = !{ptr @_ZN11xalanc_1_1011NodeRefListD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 17}
!42 = !{ptr @_ZN11xalanc_1_1011NodeRefListD2Ev, ptr @_ZN11xalanc_1_1015NodeRefListBaseD2Ev, i64 17}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 179}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 179}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 21}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !55, i64 8, !55, i64 16, !53, i64 24}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !50, i64 0}
!55 = !{!"long", !54, i64 0}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!"function_entry_count", i64 52673}
!58 = !{!52, !55, i64 8}
!59 = !{!"branch_weights", i32 30, i32 52643}
!60 = !{!52, !55, i64 16}
!61 = !{!"VP", i32 0, i64 52643, i64 8345045103670217670, i64 52643}
!62 = !{!52, !53, i64 24}
!63 = !{!"branch_weights", i32 52643, i32 0}
!64 = !{!"branch_weights", i32 0, i32 30}
!65 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!66 = !{!"function_entry_count", i64 6851}
!67 = !{!"branch_weights", i32 0, i32 6851}
!68 = !{!"branch_weights", i32 6851, i32 0}
!69 = !{!"VP", i32 0, i64 6851, i64 -587917090741629528, i64 6851}
!70 = !{!"branch_weights", i32 12, i32 6839}
!71 = !{!"branch_weights", i32 1, i32 6850}
!72 = !{!"VP", i32 0, i64 110857, i64 -1438070377793093859, i64 110857}
!73 = !{!53, !53, i64 0}
!74 = !{!"branch_weights", i32 0, i32 110857}
!75 = !{!"branch_weights", i32 6850, i32 104007}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!"branch_weights", i32 1, i32 20}
!80 = !{!"VP", i32 0, i64 20, i64 -7405368087501025645, i64 20}
!81 = !{!"function_entry_count", i64 17}
!82 = !{!"function_entry_count", i64 1959477}
!83 = !{!"function_entry_count", i64 2106371}
!84 = !{!"function_entry_count", i64 93159}
!85 = !{!"branch_weights", i32 29202, i32 1}
!86 = !{!"branch_weights", i32 15989, i32 65285638}
!87 = !{!"branch_weights", i32 15989, i32 65269649}
!88 = !{!"branch_weights", i32 15989, i32 65253660}
!89 = !{!"branch_weights", i32 15989, i32 65237671}
!90 = !{!"branch_weights", i32 65272425, i32 29202}
!91 = distinct !{!91, !77, !78}
!92 = !{!"branch_weights", i32 0, i32 10965, i32 8116, i32 10122}
!93 = !{!"branch_weights", i32 3655, i32 7310}
!94 = !{!"branch_weights", i32 7713, i32 7713}
!95 = !{!"branch_weights", i32 17835, i32 0}
!96 = !{!"branch_weights", i32 0, i32 93159}
!97 = !{!"function_entry_count", i64 52494}
!98 = !{!"branch_weights", i32 4, i32 52490}
!99 = !{!"VP", i32 0, i64 52490, i64 -7405368087501025645, i64 52490}
!100 = !{!"function_entry_count", i64 52643}
!101 = !{!"branch_weights", i32 0, i32 52643}
!102 = !{!"branch_weights", i32 1, i32 52642}
!103 = !{!"branch_weights", i32 52642, i32 298062848}
!104 = distinct !{!104, !77, !78}
!105 = distinct !{!105, !77, !78}
!106 = distinct !{!106, !77, !78}
!107 = distinct !{!107, !77, !78}
!108 = !{!"function_entry_count", i64 3517488}
!109 = !{!"branch_weights", i32 3517309, i32 179}
!110 = !{!"branch_weights", i32 16, i32 163}
!111 = !{!"branch_weights", i32 179, i32 0}
!112 = !{!"VP", i32 0, i64 163, i64 -7405368087501025645, i64 163}
