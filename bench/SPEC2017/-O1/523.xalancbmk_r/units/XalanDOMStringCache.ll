; ModuleID = 'XalanDOMStringCache.cpp'
source_filename = "XalanDOMStringCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

@_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  store ptr %1, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 %2, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 32)
          to label %9 unwind label %10, !prof !68

9:                                                ; preds = %3
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  resume { ptr, i32 } %11
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !71

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load ptr, ptr %0, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !75

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !68

5:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !tbaa !76
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !76
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10, !prof !77

10:                                               ; preds = %6
  store i64 0, ptr %7, align 8, !tbaa !76
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %13 unwind label %15

13:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #13
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCache5clearEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !68

5:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !tbaa !76
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !76
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10, !prof !77

10:                                               ; preds = %6
  store i64 0, ptr %7, align 8, !tbaa !76
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !78 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 !prof !79 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11, !prof !80

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %9, ptr %2, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %20

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr ptr, ptr %13, i64 %5
  %15 = getelementptr ptr, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !tbaa !81
  store ptr %16, ptr %3, align 8, !tbaa !81
  %17 = add i64 %5, -1
  store i64 %17, ptr %4, align 8, !tbaa !76
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %19 = load ptr, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi ptr [ %9, %7 ], [ %19, %11 ]
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = ptrtoint ptr %7 to i64
  %9 = ashr i64 %6, 2
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %36, !prof !82

11:                                               ; preds = %2
  %12 = shl nsw i64 %6, 3
  %13 = and i64 %12, -32
  %14 = getelementptr i8, ptr %4, i64 %13
  br label %15

15:                                               ; preds = %32, %11
  %16 = phi i64 [ %9, %11 ], [ %34, %32 ]
  %17 = phi ptr [ %4, %11 ], [ %33, %32 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %63, label %20, !prof !83

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %57, label %24, !prof !83

24:                                               ; preds = %20
  %25 = getelementptr inbounds ptr, ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %59, label %28, !prof !84

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %17, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !81
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %61, label %32, !prof !85

32:                                               ; preds = %28
  %33 = getelementptr inbounds ptr, ptr %17, i64 4
  %34 = add nsw i64 %16, -1
  %35 = icmp sgt i64 %16, 1
  br i1 %35, label %15, label %36, !prof !86, !llvm.loop !87

36:                                               ; preds = %32, %2
  %37 = phi ptr [ %4, %2 ], [ %14, %32 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %8, %38
  %40 = ashr exact i64 %39, 3
  switch i64 %40, label %56 [
    i64 3, label %41
    i64 2, label %46
    i64 1, label %52
  ], !prof !90

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !81
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %63, label %44, !prof !91

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %37, i64 1
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %63, label %50, !prof !92

50:                                               ; preds = %46
  %51 = getelementptr inbounds ptr, ptr %47, i64 1
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi ptr [ %51, %50 ], [ %37, %36 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %63, label %56, !prof !93

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
  %65 = icmp ne ptr %64, %7
  br i1 %65, label %66, label %90, !prof !94

66:                                               ; preds = %63
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !76
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !59
  %71 = zext i32 %70 to i64
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %76, !prof !95

73:                                               ; preds = %66
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  %75 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %74, ptr noundef nonnull %1)
  br label %77

76:                                               ; preds = %66
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %64)
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr inbounds ptr, ptr %64, i64 1
  %79 = load ptr, ptr %3, align 8, !tbaa !72
  %80 = load i64, ptr %5, align 8, !tbaa !76
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = icmp eq ptr %81, %78
  br i1 %82, label %87, label %83, !prof !96

83:                                               ; preds = %77
  %84 = ptrtoint ptr %78 to i64
  %85 = ptrtoint ptr %81 to i64
  %86 = sub i64 %85, %84
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %64, ptr nonnull align 8 %78, i64 %86, i1 false), !prof !97
  br label %87

87:                                               ; preds = %77, %83
  %88 = load i64, ptr %5, align 8, !tbaa !76
  %89 = add i64 %88, -1
  store i64 %89, ptr %5, align 8, !tbaa !76
  br label %90

90:                                               ; preds = %87, %63
  ret i1 %65
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %39, label %7, !prof !99

7:                                                ; preds = %1, %35
  %8 = phi i64 [ %37, %35 ], [ %5, %1 ]
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i64 %3, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr ptr, ptr %16, i64 %8
  %18 = getelementptr ptr, ptr %17, i64 -1
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %14, ptr noundef nonnull %19)
  br label %35

21:                                               ; preds = %7
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr ptr, ptr %23, i64 %8
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !100
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i64, ptr %27, align 8, !tbaa !100
  %32 = sub i64 %31, %28
  store i64 %32, ptr %27, align 8, !tbaa !100
  br label %33

33:                                               ; preds = %30, %21
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %26, i64 0, i32 1
  store i32 0, ptr %34, align 8, !tbaa !102
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %25)
  br label %35

35:                                               ; preds = %33, %13
  %36 = load i64, ptr %4, align 8, !tbaa !76
  %37 = add i64 %36, -1
  store i64 %37, ptr %4, align 8, !tbaa !76
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %7, !prof !99, !llvm.loop !104

39:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !105 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !107

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !108
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !prof !109
  store ptr %12, ptr %4, align 8, !tbaa !106
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !110
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !112
  br label %15

15:                                               ; preds = %7, %2
  %16 = load ptr, ptr %4, align 8, !tbaa !106
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28, !prof !113

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !108
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24)
  store ptr %25, ptr %4, align 8, !tbaa !106
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !110
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !112
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !106
  %30 = icmp eq ptr %18, %29
  br i1 %30, label %335, label %31, !prof !114

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !115
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43, !prof !114

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !115
  %37 = load ptr, ptr %36, align 8, !tbaa !73, !noalias !115
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8, !noalias !115
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef 24), !noalias !115
  store ptr %40, ptr %32, align 8, !tbaa !106, !noalias !115
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %40, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !110, !noalias !115
  %42 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %40, i64 0, i32 1
  store ptr %40, ptr %42, align 8, !tbaa !112, !noalias !115
  br label %43

43:                                               ; preds = %31, %35
  %44 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !118
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !110, !noalias !115
  %47 = icmp eq ptr %44, null
  br i1 %47, label %48, label %56, !prof !114

48:                                               ; preds = %43
  %49 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !119
  %50 = load ptr, ptr %49, align 8, !tbaa !73, !noalias !119
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !noalias !119
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef 24), !noalias !119
  store ptr %53, ptr %32, align 8, !tbaa !106, !noalias !119
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %53, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !110, !noalias !119
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %53, i64 0, i32 1
  store ptr %53, ptr %55, align 8, !tbaa !112, !noalias !119
  br label %56

56:                                               ; preds = %43, %48
  %57 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !119
  %58 = icmp eq ptr %46, %57
  br i1 %58, label %182, label %59, !prof !122

59:                                               ; preds = %56, %178
  %60 = phi ptr [ %180, %178 ], [ %46, %56 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !81
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !123
  %64 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !126
  %66 = icmp ult i16 %63, %65
  br i1 %66, label %67, label %182, !prof !127

67:                                               ; preds = %59
  %68 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !128
  %70 = icmp ule ptr %69, %1
  %71 = zext i16 %65 to i64
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %69, i64 %71
  %73 = icmp ugt ptr %72, %1
  %74 = select i1 %70, i1 %73, i1 false, !prof !129
  br i1 %74, label %75, label %178, !prof !130

75:                                               ; preds = %67
  %76 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 1
  %77 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 3
  %78 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %61, i64 0, i32 1
  %79 = load i16, ptr %78, align 8, !tbaa !131
  %80 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %61, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !133
  %82 = icmp eq i16 %79, %81
  br i1 %82, label %87, label %83, !prof !134

83:                                               ; preds = %75
  %84 = zext i16 %79 to i64
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %69, i64 %84
  store i16 %81, ptr %85, align 4, !tbaa !135
  %86 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %85, i64 0, i32 1
  store i32 -2228259, ptr %86, align 4, !tbaa !137
  store i16 %79, ptr %80, align 2, !tbaa !133
  br label %87

87:                                               ; preds = %83, %75
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !138
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %101, label %91, !prof !139

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !140
  %94 = load ptr, ptr %1, align 8, !tbaa !141
  %95 = load ptr, ptr %94, align 8, !tbaa !73
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %93)
          to label %101 unwind label %98, !prof !142

98:                                               ; preds = %91
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  tail call void @__clang_call_terminate(ptr %100) #14
  unreachable

101:                                              ; preds = %87, %91
  %102 = load i16, ptr %78, align 8, !tbaa !131
  store i16 %102, ptr %1, align 4, !tbaa !135
  %103 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %103, align 4, !tbaa !137
  %104 = load ptr, ptr %77, align 8, !tbaa !128
  %105 = ptrtoint ptr %1 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 40
  %109 = trunc i64 %108 to i16
  store i16 %109, ptr %80, align 2, !tbaa !133
  store i16 %109, ptr %78, align 8, !tbaa !131
  %110 = load i16, ptr %76, align 8, !tbaa !123
  %111 = add i16 %110, -1
  store i16 %111, ptr %76, align 8, !tbaa !123
  %112 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !143
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %122, !prof !146

114:                                              ; preds = %101
  %115 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !143
  %116 = load ptr, ptr %115, align 8, !tbaa !73, !noalias !143
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8, !noalias !143
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %115, i64 noundef 24), !noalias !143
  store ptr %119, ptr %32, align 8, !tbaa !106, !noalias !143
  %120 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %119, i64 0, i32 2
  store ptr %119, ptr %120, align 8, !tbaa !110, !noalias !143
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %119, i64 0, i32 1
  store ptr %119, ptr %121, align 8, !tbaa !112, !noalias !143
  br label %122

122:                                              ; preds = %101, %114
  %123 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !143
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !110, !noalias !143
  %126 = icmp eq ptr %60, %125
  br i1 %126, label %173, label %127, !prof !147

127:                                              ; preds = %122
  %128 = load ptr, ptr %60, align 8, !tbaa !81
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %60, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !110
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %60, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !112
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %132, i64 0, i32 2
  store ptr %130, ptr %133, align 8, !tbaa !110
  %134 = load ptr, ptr %129, align 8, !tbaa !110
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %134, i64 0, i32 1
  store ptr %132, ptr %135, align 8, !tbaa !112
  store ptr null, ptr %131, align 8, !tbaa !112
  %136 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !148
  store ptr %137, ptr %129, align 8, !tbaa !110
  store ptr %60, ptr %136, align 8, !tbaa !148
  %138 = load ptr, ptr %4, align 8, !tbaa !106, !noalias !149
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %148, !prof !152

140:                                              ; preds = %127
  %141 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !149
  %142 = load ptr, ptr %141, align 8, !tbaa !73, !noalias !149
  %143 = getelementptr inbounds ptr, ptr %142, i64 2
  %144 = load ptr, ptr %143, align 8, !noalias !149
  %145 = tail call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %141, i64 noundef 24), !noalias !149
  store ptr %145, ptr %4, align 8, !tbaa !106, !noalias !149
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %145, i64 0, i32 2
  store ptr %145, ptr %146, align 8, !tbaa !110, !noalias !149
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %145, i64 0, i32 1
  store ptr %145, ptr %147, align 8, !tbaa !112, !noalias !149
  br label %148

148:                                              ; preds = %140, %127
  %149 = load ptr, ptr %4, align 8, !tbaa !106, !noalias !149
  %150 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !110, !noalias !149
  %152 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !148
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155, !prof !153

155:                                              ; preds = %148
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %153, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !110
  br label %164

158:                                              ; preds = %148
  %159 = load ptr, ptr %3, align 8, !tbaa !108
  %160 = load ptr, ptr %159, align 8, !tbaa !73
  %161 = getelementptr inbounds ptr, ptr %160, i64 2
  %162 = load ptr, ptr %161, align 8
  %163 = tail call noundef ptr %162(ptr noundef nonnull align 8 dereferenceable(8) %159, i64 noundef 24), !prof !154
  store ptr %163, ptr %152, align 8, !tbaa !148
  br label %164

164:                                              ; preds = %155, %158
  %165 = phi ptr [ %153, %155 ], [ %163, %158 ]
  %166 = phi ptr [ %157, %155 ], [ null, %158 ]
  store ptr %128, ptr %165, align 8, !tbaa !81
  %167 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %165, i64 0, i32 1
  %168 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %151, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !112
  store ptr %169, ptr %167, align 8, !tbaa !81
  %170 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %165, i64 0, i32 2
  store ptr %151, ptr %170, align 8, !tbaa !81
  %171 = load ptr, ptr %168, align 8, !tbaa !112
  %172 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %171, i64 0, i32 2
  store ptr %165, ptr %172, align 8, !tbaa !110
  store ptr %165, ptr %168, align 8, !tbaa !112
  store ptr %166, ptr %152, align 8, !tbaa !148
  br label %173

173:                                              ; preds = %164, %122
  %174 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %175 = load i8, ptr %174, align 8, !tbaa !155, !range !156, !noundef !118
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %182, label %177, !prof !157

177:                                              ; preds = %173
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %182

178:                                              ; preds = %67
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %60, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !110, !noalias !158
  %181 = icmp eq ptr %180, %57
  br i1 %181, label %182, label %59, !prof !161, !llvm.loop !162

182:                                              ; preds = %59, %178, %56, %173, %177
  %183 = phi ptr [ %60, %177 ], [ %60, %173 ], [ %46, %56 ], [ %180, %178 ], [ %60, %59 ]
  %184 = phi i1 [ false, %177 ], [ false, %173 ], [ true, %56 ], [ true, %178 ], [ true, %59 ]
  %185 = phi i8 [ 1, %177 ], [ 1, %173 ], [ 0, %56 ], [ 0, %178 ], [ 0, %59 ]
  %186 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !163
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %196, !prof !114

188:                                              ; preds = %182
  %189 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !163
  %190 = load ptr, ptr %189, align 8, !tbaa !73, !noalias !163
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8, !noalias !163
  %193 = tail call noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(8) %189, i64 noundef 24), !noalias !163
  store ptr %193, ptr %32, align 8, !tbaa !106, !noalias !163
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %193, i64 0, i32 2
  store ptr %193, ptr %194, align 8, !tbaa !110, !noalias !163
  %195 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %193, i64 0, i32 1
  store ptr %193, ptr %195, align 8, !tbaa !112, !noalias !163
  br label %196

196:                                              ; preds = %182, %188
  %197 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !118
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %207, !prof !114

199:                                              ; preds = %196
  %200 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !168
  %201 = load ptr, ptr %200, align 8, !tbaa !73, !noalias !168
  %202 = getelementptr inbounds ptr, ptr %201, i64 2
  %203 = load ptr, ptr %202, align 8, !noalias !168
  %204 = tail call noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %200, i64 noundef 24), !noalias !168
  store ptr %204, ptr %32, align 8, !tbaa !106, !noalias !168
  %205 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %204, i64 0, i32 2
  store ptr %204, ptr %205, align 8, !tbaa !110, !noalias !168
  %206 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %204, i64 0, i32 1
  store ptr %204, ptr %206, align 8, !tbaa !112, !noalias !168
  br label %207

207:                                              ; preds = %196, %199
  %208 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !168
  %209 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !110, !noalias !168
  br i1 %184, label %211, label %331

211:                                              ; preds = %207, %328
  %212 = phi ptr [ %216, %328 ], [ %197, %207 ]
  %213 = icmp eq ptr %212, %210
  br i1 %213, label %331, label %214, !prof !173

214:                                              ; preds = %211
  %215 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %212, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !112, !noalias !118
  %217 = load ptr, ptr %216, align 8, !tbaa !81
  %218 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %217, i64 0, i32 2
  %219 = load i16, ptr %218, align 2, !tbaa !126
  %220 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %217, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !128
  %222 = icmp ule ptr %221, %1
  %223 = zext i16 %219 to i64
  %224 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %221, i64 %223
  %225 = icmp ugt ptr %224, %1
  %226 = select i1 %222, i1 %225, i1 false, !prof !174
  br i1 %226, label %227, label %328, !prof !175

227:                                              ; preds = %214
  %228 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %217, i64 0, i32 3
  %229 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %217, i64 0, i32 1
  %230 = load i16, ptr %229, align 8, !tbaa !131
  %231 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %217, i64 0, i32 2
  %232 = load i16, ptr %231, align 2, !tbaa !133
  %233 = icmp eq i16 %230, %232
  br i1 %233, label %238, label %234, !prof !134

234:                                              ; preds = %227
  %235 = zext i16 %230 to i64
  %236 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %221, i64 %235
  store i16 %232, ptr %236, align 4, !tbaa !135
  %237 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %236, i64 0, i32 1
  store i32 -2228259, ptr %237, align 4, !tbaa !137
  store i16 %230, ptr %231, align 2, !tbaa !133
  br label %238

238:                                              ; preds = %234, %227
  %239 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 2
  %240 = load i64, ptr %239, align 8, !tbaa !138
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %252, label %242, !prof !139

242:                                              ; preds = %238
  %243 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !140
  %245 = load ptr, ptr %1, align 8, !tbaa !141
  %246 = load ptr, ptr %245, align 8, !tbaa !73
  %247 = getelementptr inbounds ptr, ptr %246, i64 3
  %248 = load ptr, ptr %247, align 8
  invoke void %248(ptr noundef nonnull align 8 dereferenceable(8) %245, ptr noundef %244)
          to label %252 unwind label %249, !prof !142

249:                                              ; preds = %242
  %250 = landingpad { ptr, i32 }
          catch ptr null
  %251 = extractvalue { ptr, i32 } %250, 0
  tail call void @__clang_call_terminate(ptr %251) #14
  unreachable

252:                                              ; preds = %238, %242
  %253 = load i16, ptr %229, align 8, !tbaa !131
  store i16 %253, ptr %1, align 4, !tbaa !135
  %254 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %254, align 4, !tbaa !137
  %255 = load ptr, ptr %228, align 8, !tbaa !128
  %256 = ptrtoint ptr %1 to i64
  %257 = ptrtoint ptr %255 to i64
  %258 = sub i64 %256, %257
  %259 = sdiv exact i64 %258, 40
  %260 = trunc i64 %259 to i16
  store i16 %260, ptr %231, align 2, !tbaa !133
  store i16 %260, ptr %229, align 8, !tbaa !131
  %261 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %217, i64 0, i32 1
  %262 = load i16, ptr %261, align 8, !tbaa !123
  %263 = add i16 %262, -1
  store i16 %263, ptr %261, align 8, !tbaa !123
  %264 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !176
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %274, !prof !181

266:                                              ; preds = %252
  %267 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !176
  %268 = load ptr, ptr %267, align 8, !tbaa !73, !noalias !176
  %269 = getelementptr inbounds ptr, ptr %268, i64 2
  %270 = load ptr, ptr %269, align 8, !noalias !176
  %271 = tail call noundef ptr %270(ptr noundef nonnull align 8 dereferenceable(8) %267, i64 noundef 24), !noalias !176
  store ptr %271, ptr %32, align 8, !tbaa !106, !noalias !176
  %272 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %271, i64 0, i32 2
  store ptr %271, ptr %272, align 8, !tbaa !110, !noalias !176
  %273 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %271, i64 0, i32 1
  store ptr %271, ptr %273, align 8, !tbaa !112, !noalias !176
  br label %274

274:                                              ; preds = %252, %266
  %275 = load ptr, ptr %32, align 8, !tbaa !106, !noalias !176
  %276 = icmp eq ptr %212, %275
  br i1 %276, label %323, label %277, !prof !182

277:                                              ; preds = %274
  %278 = load ptr, ptr %183, align 8, !tbaa !81
  %279 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %183, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !110
  %281 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %183, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !112
  %283 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %282, i64 0, i32 2
  store ptr %280, ptr %283, align 8, !tbaa !110
  %284 = load ptr, ptr %279, align 8, !tbaa !110
  %285 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %284, i64 0, i32 1
  store ptr %282, ptr %285, align 8, !tbaa !112
  store ptr null, ptr %281, align 8, !tbaa !112
  %286 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !148
  store ptr %287, ptr %279, align 8, !tbaa !110
  store ptr %183, ptr %286, align 8, !tbaa !148
  %288 = load ptr, ptr %4, align 8, !tbaa !106, !noalias !183
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %298, !prof !152

290:                                              ; preds = %277
  %291 = load ptr, ptr %3, align 8, !tbaa !108, !noalias !183
  %292 = load ptr, ptr %291, align 8, !tbaa !73, !noalias !183
  %293 = getelementptr inbounds ptr, ptr %292, i64 2
  %294 = load ptr, ptr %293, align 8, !noalias !183
  %295 = tail call noundef ptr %294(ptr noundef nonnull align 8 dereferenceable(8) %291, i64 noundef 24), !noalias !183
  store ptr %295, ptr %4, align 8, !tbaa !106, !noalias !183
  %296 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %295, i64 0, i32 2
  store ptr %295, ptr %296, align 8, !tbaa !110, !noalias !183
  %297 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %295, i64 0, i32 1
  store ptr %295, ptr %297, align 8, !tbaa !112, !noalias !183
  br label %298

298:                                              ; preds = %290, %277
  %299 = load ptr, ptr %4, align 8, !tbaa !106, !noalias !183
  %300 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !110, !noalias !183
  %302 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !148
  %304 = icmp eq ptr %303, null
  br i1 %304, label %308, label %305, !prof !153

305:                                              ; preds = %298
  %306 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %303, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !110
  br label %314

308:                                              ; preds = %298
  %309 = load ptr, ptr %3, align 8, !tbaa !108
  %310 = load ptr, ptr %309, align 8, !tbaa !73
  %311 = getelementptr inbounds ptr, ptr %310, i64 2
  %312 = load ptr, ptr %311, align 8
  %313 = tail call noundef ptr %312(ptr noundef nonnull align 8 dereferenceable(8) %309, i64 noundef 24), !prof !186
  store ptr %313, ptr %302, align 8, !tbaa !148
  br label %314

314:                                              ; preds = %305, %308
  %315 = phi ptr [ %303, %305 ], [ %313, %308 ]
  %316 = phi ptr [ %307, %305 ], [ null, %308 ]
  store ptr %278, ptr %315, align 8, !tbaa !81
  %317 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %315, i64 0, i32 1
  %318 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %301, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !112
  store ptr %319, ptr %317, align 8, !tbaa !81
  %320 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %315, i64 0, i32 2
  store ptr %301, ptr %320, align 8, !tbaa !81
  %321 = load ptr, ptr %318, align 8, !tbaa !112
  %322 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %321, i64 0, i32 2
  store ptr %315, ptr %322, align 8, !tbaa !110
  store ptr %315, ptr %318, align 8, !tbaa !112
  store ptr %316, ptr %302, align 8, !tbaa !148
  br label %323

323:                                              ; preds = %314, %274
  %324 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %325 = load i8, ptr %324, align 8, !tbaa !155, !range !156, !noundef !118
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %331, label %327, !prof !187

327:                                              ; preds = %323
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %331

328:                                              ; preds = %214
  %329 = load ptr, ptr %183, align 8, !tbaa !81
  %330 = icmp eq ptr %217, %329
  br i1 %330, label %331, label %211, !prof !188, !llvm.loop !189

331:                                              ; preds = %211, %328, %207, %323, %327
  %332 = phi i8 [ 1, %327 ], [ 1, %323 ], [ %185, %207 ], [ %185, %328 ], [ %185, %211 ]
  %333 = and i8 %332, 1
  %334 = icmp ne i8 %333, 0
  br label %335

335:                                              ; preds = %28, %331
  %336 = phi i1 [ %334, %331 ], [ false, %28 ]
  ret i1 %336
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !107

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !108
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !191
  store ptr %10, ptr %2, align 8, !tbaa !106
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !110
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !106
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !113

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !108
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !106
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !110
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !112
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !106
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106, !noalias !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !108, !noalias !192
  %10 = load ptr, ptr %9, align 8, !tbaa !73, !noalias !192
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !192
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !192
  store ptr %13, ptr %5, align 8, !tbaa !106, !noalias !192
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !110, !noalias !192
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !112, !noalias !192
  br label %16

16:                                               ; preds = %4, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !106, !noalias !118
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !110, !noalias !192
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !123
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !108, !noalias !195
  %30 = load ptr, ptr %29, align 8, !tbaa !73, !noalias !195
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !195
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 24), !noalias !195
  store ptr %33, ptr %5, align 8, !tbaa !106, !noalias !195
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !110, !noalias !195
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !112, !noalias !195
  br label %36

36:                                               ; preds = %24, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !106, !noalias !195
  %38 = icmp eq ptr %26, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %26, align 8, !tbaa !81
  %41 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 8, !tbaa !123
  %43 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !126
  %45 = icmp ult i16 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %39
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %47

47:                                               ; preds = %16, %46, %39, %1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !138
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !139

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = load ptr, ptr %0, align 8, !tbaa !141
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !142

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 !prof !199 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106, !noalias !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !203

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !108, !noalias !200
  %7 = load ptr, ptr %6, align 8, !tbaa !73, !noalias !200
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !200
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !200
  store ptr %10, ptr %2, align 8, !tbaa !106, !noalias !200
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !110, !noalias !200
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !112, !noalias !200
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !106, !noalias !200
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !110, !noalias !200
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !110
  %22 = load ptr, ptr %17, align 8, !tbaa !110
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %22, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !112
  store ptr null, ptr %19, align 8, !tbaa !112
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !148
  store ptr %25, ptr %17, align 8, !tbaa !110
  store ptr %16, ptr %24, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !106, !noalias !205
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !208

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !108, !noalias !205
  %8 = load ptr, ptr %7, align 8, !tbaa !73, !noalias !205
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !205
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !191, !noalias !205
  store ptr %11, ptr %3, align 8, !tbaa !106, !noalias !205
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !110, !noalias !205
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !112, !noalias !205
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !106, !noalias !118
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !110, !noalias !205
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !209

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !108, !noalias !210
  %21 = load ptr, ptr %20, align 8, !tbaa !73, !noalias !210
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !210
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !210
  store ptr %24, ptr %3, align 8, !tbaa !106, !noalias !210
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !110, !noalias !210
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !112, !noalias !210
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !106, !noalias !210
  %29 = load ptr, ptr %2, align 8, !tbaa !108
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %88, label %31, !prof !213

31:                                               ; preds = %27, %84
  %32 = phi ptr [ %86, %84 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !81
  %34 = icmp eq ptr %33, null
  br i1 %34, label %84, label %35, !prof !214

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 2
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 1
  %38 = load i16, ptr %36, align 2, !tbaa !126
  %39 = icmp ne i16 %38, 0
  %40 = load i16, ptr %37, align 8
  %41 = icmp ne i16 %40, 0
  %42 = select i1 %39, i1 %41, i1 false, !prof !215
  br i1 %42, label %43, label %45, !prof !216

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  br label %57

45:                                               ; preds = %71, %35
  %46 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = icmp eq ptr %47, null
  br i1 %48, label %80, label %49, !prof !214

49:                                               ; preds = %45
  %50 = load ptr, ptr %33, align 8, !tbaa !217
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %47)
          to label %80 unwind label %54, !prof !218

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %71, %43
  %58 = phi i64 [ 0, %43 ], [ %73, %71 ]
  %59 = phi i16 [ %38, %43 ], [ %74, %71 ]
  %60 = phi i16 [ 0, %43 ], [ %72, %71 ]
  %61 = load ptr, ptr %44, align 8, !tbaa !128
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %61, i64 %58
  %63 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !137
  %65 = icmp ne i32 %64, -2228259
  %66 = load i16, ptr %62, align 4
  %67 = icmp ugt i16 %66, %59
  %68 = select i1 %65, i1 true, i1 %67, !prof !219
  br i1 %68, label %69, label %71, !prof !219

69:                                               ; preds = %57
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %62) #13
  %70 = add i16 %60, 1
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i16 [ %70, %69 ], [ %60, %57 ]
  %73 = add nuw nsw i64 %58, 1
  %74 = load i16, ptr %36, align 2, !tbaa !126
  %75 = zext i16 %74 to i64
  %76 = icmp ult i64 %73, %75
  %77 = load i16, ptr %37, align 8
  %78 = icmp ult i16 %72, %77
  %79 = select i1 %76, i1 %78, i1 false, !prof !215
  br i1 %79, label %57, label %45, !prof !220, !llvm.loop !221

80:                                               ; preds = %45, %49
  %81 = load ptr, ptr %29, align 8, !tbaa !73
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !218
  br label %84

84:                                               ; preds = %80, %31
  %85 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %32, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !110, !noalias !222
  %87 = icmp eq ptr %86, %28
  br i1 %87, label %88, label %31, !prof !225, !llvm.loop !226

88:                                               ; preds = %84, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106, !noalias !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !209

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !108, !noalias !227
  %7 = load ptr, ptr %6, align 8, !tbaa !73, !noalias !227
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !227
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !227
  store ptr %10, ptr %2, align 8, !tbaa !106, !noalias !227
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !110, !noalias !227
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !112, !noalias !227
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !106, !noalias !227
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !110, !noalias !227
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !106, !noalias !230
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !233

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !108, !noalias !230
  %24 = load ptr, ptr %23, align 8, !tbaa !73, !noalias !230
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !230
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !230
  store ptr %27, ptr %2, align 8, !tbaa !106, !noalias !230
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !110, !noalias !230
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !112, !noalias !230
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !106, !noalias !230
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !234

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !110
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !110
  %39 = load ptr, ptr %34, align 8, !tbaa !110
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !112
  store ptr null, ptr %36, align 8, !tbaa !112
  %41 = load ptr, ptr %17, align 8, !tbaa !148
  store ptr %41, ptr %34, align 8, !tbaa !110
  store ptr %19, ptr %17, align 8, !tbaa !148
  br label %18, !llvm.loop !235

42:                                               ; preds = %30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !236 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !70
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !237

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !81
  store ptr %13, ptr %12, align 8, !tbaa !81
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !76
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !238
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !53
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !239

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !53
  %24 = load i64, ptr %4, align 8, !tbaa !76
  %25 = load i64, ptr %6, align 8, !tbaa !70
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %28, ptr %0, align 8, !tbaa !53
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !76
  store i64 %30, ptr %4, align 8, !tbaa !76
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !70
  store i64 %32, ptr %6, align 8, !tbaa !70
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  store ptr %34, ptr %26, align 8, !tbaa !72
  store ptr %23, ptr %3, align 8, !tbaa !53
  store i64 %24, ptr %29, align 8, !tbaa !76
  store i64 %25, ptr %31, align 8, !tbaa !70
  store ptr %27, ptr %33, align 8, !tbaa !72
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !238

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !73
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !240

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !70
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = load ptr, ptr %3, align 8, !tbaa !53
  %53 = load ptr, ptr %52, align 8, !tbaa !73
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !241 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !76
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !238

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !53
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !76
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !70
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !73
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !242
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !72
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = load i64, ptr %9, align 8, !tbaa !76
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !243

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !53
  %28 = load i64, ptr %6, align 8, !tbaa !76
  %29 = load i64, ptr %7, align 8, !tbaa !70
  %30 = load ptr, ptr %8, align 8, !tbaa !72
  %31 = load ptr, ptr %5, align 8, !tbaa !53
  store ptr %31, ptr %0, align 8, !tbaa !53
  %32 = load i64, ptr %14, align 8, !tbaa !76
  store i64 %32, ptr %6, align 8, !tbaa !76
  %33 = load i64, ptr %15, align 8, !tbaa !70
  store i64 %33, ptr %7, align 8, !tbaa !70
  %34 = load ptr, ptr %21, align 8, !tbaa !72
  store ptr %34, ptr %8, align 8, !tbaa !72
  store ptr %27, ptr %5, align 8, !tbaa !53
  store i64 %28, ptr %14, align 8, !tbaa !76
  store i64 %29, ptr %15, align 8, !tbaa !70
  store ptr %30, ptr %21, align 8, !tbaa !72
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !243

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !73
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !70
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !72
  %50 = load ptr, ptr %5, align 8, !tbaa !53
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !244

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !73
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !245
  store ptr %65, ptr %8, align 8, !tbaa !72
  store i64 %3, ptr %7, align 8, !tbaa !70
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !247

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !76
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !70
  br i1 %18, label %21, label %39, !prof !243

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !247

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !248

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !72
  %28 = load i64, ptr %12, align 8, !tbaa !76
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !81
  store ptr %34, ptr %32, align 8, !tbaa !81
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !249, !llvm.loop !250

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !53
  store ptr %42, ptr %5, align 8, !tbaa !53
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !76
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !70
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !73
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !72
  %51 = load i64, ptr %43, align 8, !tbaa !76
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !72
  %56 = load i64, ptr %43, align 8, !tbaa !76
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !72
  %60 = load i64, ptr %43, align 8, !tbaa !76
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !72
  %63 = load i64, ptr %12, align 8, !tbaa !76
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !53
  %67 = load i64, ptr %12, align 8, !tbaa !76
  %68 = load i64, ptr %19, align 8, !tbaa !70
  %69 = load ptr, ptr %15, align 8, !tbaa !72
  %70 = load ptr, ptr %5, align 8, !tbaa !53
  store ptr %70, ptr %0, align 8, !tbaa !53
  %71 = load i64, ptr %43, align 8, !tbaa !76
  store i64 %71, ptr %12, align 8, !tbaa !76
  %72 = load i64, ptr %44, align 8, !tbaa !70
  store i64 %72, ptr %19, align 8, !tbaa !70
  %73 = load ptr, ptr %50, align 8, !tbaa !72
  store ptr %73, ptr %15, align 8, !tbaa !72
  store ptr %66, ptr %5, align 8, !tbaa !53
  store i64 %67, ptr %43, align 8, !tbaa !76
  store i64 %68, ptr %44, align 8, !tbaa !70
  store ptr %69, ptr %50, align 8, !tbaa !72
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !73
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !70
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !72
  %89 = load ptr, ptr %5, align 8, !tbaa !53
  %90 = load ptr, ptr %89, align 8, !tbaa !73
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !251

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !252

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !253

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
  store i64 %36, ptr %12, align 8, !tbaa !76
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %12, ptr %0, align 8, !tbaa !53
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !76
  store i64 %14, ptr %6, align 8, !tbaa !76
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !70
  store i64 %16, ptr %8, align 8, !tbaa !70
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  store ptr %18, ptr %10, align 8, !tbaa !72
  store ptr %5, ptr %3, align 8, !tbaa !53
  store i64 %7, ptr %13, align 8, !tbaa !76
  store i64 %9, ptr %15, align 8, !tbaa !70
  store ptr %11, ptr %17, align 8, !tbaa !72
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !73
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 3}
!36 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev, i64 3}
!38 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 6}
!39 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, i64 41374568}
!40 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 67596232}
!41 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, i64 41374463}
!42 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 26221769}
!43 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 26221769}
!44 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @__clang_call_terminate, i64 20}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 105}
!47 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, i64 6}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 43}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 43}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 38}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 3}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !58, i64 8, !58, i64 16, !55, i64 24}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"long", !56, i64 0}
!59 = !{!60, !61, i64 64}
!60 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !54, i64 0, !54, i64 32, !61, i64 64, !62, i64 72}
!61 = !{!"int", !56, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !63, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !64, i64 0, !67, i64 40}
!64 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !65, i64 8, !66, i64 16}
!65 = !{!"short", !56, i64 0}
!66 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !55, i64 0, !55, i64 8, !55, i64 16}
!67 = !{!"bool", !56, i64 0}
!68 = !{!"branch_weights", i32 3, i32 0}
!69 = !{!"function_entry_count", i64 7}
!70 = !{!54, !58, i64 16}
!71 = !{!"branch_weights", i32 2, i32 5}
!72 = !{!54, !55, i64 24}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !57, i64 0}
!75 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!76 = !{!54, !58, i64 8}
!77 = !{!"branch_weights", i32 1, i32 2}
!78 = !{!"function_entry_count", i64 0}
!79 = !{!"function_entry_count", i64 67596232}
!80 = !{!"branch_weights", i32 41374568, i32 26221664}
!81 = !{!55, !55, i64 0}
!82 = !{!"branch_weights", i32 7550971, i32 1}
!83 = !{!"branch_weights", i32 0, i32 -576078128}
!84 = !{!"branch_weights", i32 2755, i32 -576080884}
!85 = !{!"branch_weights", i32 3712310, i32 -579793195}
!86 = !{!"branch_weights", i32 -583629099, i32 7550971}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!"branch_weights", i32 0, i32 22408347, i32 11442693, i32 11454792}
!91 = !{!"branch_weights", i32 0, i32 22408347}
!92 = !{!"branch_weights", i32 11170256, i32 22680784}
!93 = !{!"branch_weights", i32 34135576, i32 0}
!94 = !{!"branch_weights", i32 67596232, i32 0}
!95 = !{!"branch_weights", i32 41374463, i32 26221769}
!96 = !{!"branch_weights", i32 45272591, i32 22323641}
!97 = !{!"VP", i32 1, i64 22323641, i64 8, i64 22323641}
!98 = !{!"function_entry_count", i64 8}
!99 = !{!"branch_weights", i32 1, i32 0}
!100 = !{!101, !58, i64 8}
!101 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !58, i64 8, !58, i64 16, !55, i64 24}
!102 = !{!103, !61, i64 32}
!103 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !101, i64 0, !61, i64 32}
!104 = distinct !{!104, !88, !89}
!105 = !{!"function_entry_count", i64 41374463}
!106 = !{!66, !55, i64 8}
!107 = !{!"branch_weights", i32 2, i32 82749029}
!108 = !{!66, !55, i64 0}
!109 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!110 = !{!111, !55, i64 16}
!111 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4NodeE", !55, i64 0, !55, i64 8, !55, i64 16}
!112 = !{!111, !55, i64 8}
!113 = !{!"branch_weights", i32 0, i32 82749031}
!114 = !{!"branch_weights", i32 0, i32 41374463}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!117 = distinct !{!117, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!118 = !{}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!121 = distinct !{!121, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!122 = !{!"branch_weights", i32 0, i32 1}
!123 = !{!124, !65, i64 8}
!124 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEE", !125, i64 0, !65, i64 8, !65, i64 10, !55, i64 16}
!125 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !55, i64 0}
!126 = !{!124, !65, i64 10}
!127 = !{!"branch_weights", i32 121789412, i32 39890225}
!128 = !{!124, !55, i64 16}
!129 = !{!"branch_weights", i32 61919682, i32 59869730}
!130 = !{!"branch_weights", i32 1484238, i32 120305174}
!131 = !{!132, !65, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEE", !124, i64 0, !65, i64 24, !65, i64 26}
!133 = !{!132, !65, i64 26}
!134 = !{!"branch_weights", i32 41374463, i32 0}
!135 = !{!136, !65, i64 0}
!136 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockE", !65, i64 0, !61, i64 4}
!137 = !{!136, !61, i64 4}
!138 = !{!101, !58, i64 16}
!139 = !{!"branch_weights", i32 52000, i32 42418003}
!140 = !{!101, !55, i64 24}
!141 = !{!101, !55, i64 0}
!142 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!145 = distinct !{!145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!146 = !{!"branch_weights", i32 0, i32 1484238}
!147 = !{!"branch_weights", i32 1275084, i32 209154}
!148 = !{!66, !55, i64 16}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!151 = distinct !{!151, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!152 = !{!"branch_weights", i32 0, i32 40091652}
!153 = !{!"branch_weights", i32 2521, i32 40089131}
!154 = !{!"VP", i32 0, i64 13, i64 8345045103670217670, i64 13}
!155 = !{!63, !67, i64 40}
!156 = !{i8 0, i8 2}
!157 = !{!"branch_weights", i32 1484238, i32 0}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!160 = distinct !{!160, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!161 = !{!"branch_weights", i32 0, i32 161679637}
!162 = distinct !{!162, !88, !89}
!163 = !{!164, !166}
!164 = distinct !{!164, !165, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!165 = distinct !{!165, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!166 = distinct !{!166, !167, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv: argument 0"}
!167 = distinct !{!167, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv"}
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!170 = distinct !{!170, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv"}
!173 = !{!"branch_weights", i32 1484238, i32 1835010489}
!174 = !{!"branch_weights", i32 935160052, i32 899850437}
!175 = !{!"branch_weights", i32 39890225, i32 1795120264}
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!178 = distinct !{!178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!179 = distinct !{!179, !180, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv: argument 0"}
!180 = distinct !{!180, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv"}
!181 = !{!"branch_weights", i32 0, i32 39890225}
!182 = !{!"branch_weights", i32 10248, i32 39879977}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!185 = distinct !{!185, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!186 = !{!"VP", i32 0, i64 2506, i64 8345045103670217670, i64 2506}
!187 = !{!"branch_weights", i32 39890225, i32 0}
!188 = !{!"branch_weights", i32 0, i32 1795120264}
!189 = distinct !{!189, !88, !89}
!190 = !{!"function_entry_count", i64 41374568}
!191 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!194 = distinct !{!194, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!197 = distinct !{!197, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!198 = !{!"function_entry_count", i64 1095540}
!199 = !{!"function_entry_count", i64 1293593}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!202 = distinct !{!202, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!203 = !{!"branch_weights", i32 0, i32 1293593}
!204 = !{!"function_entry_count", i64 6}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!207 = distinct !{!207, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!208 = !{!"branch_weights", i32 1, i32 5}
!209 = !{!"branch_weights", i32 0, i32 6}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!212 = distinct !{!212, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!213 = !{!"branch_weights", i32 1, i32 191}
!214 = !{!"branch_weights", i32 0, i32 2521}
!215 = !{!"branch_weights", i32 2645, i32 3}
!216 = !{!"branch_weights", i32 127, i32 2394}
!217 = !{!125, !55, i64 0}
!218 = !{!"VP", i32 0, i64 2521, i64 -7405368087501025645, i64 2521}
!219 = !{!"branch_weights", i32 105, i32 22}
!220 = !{!"branch_weights", i32 0, i32 127}
!221 = distinct !{!221, !88, !89}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!224 = distinct !{!224, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!225 = !{!"branch_weights", i32 191, i32 80481}
!226 = distinct !{!226, !88, !89}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!229 = distinct !{!229, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!232 = distinct !{!232, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!233 = !{!"branch_weights", i32 0, i32 2527}
!234 = !{!"branch_weights", i32 6, i32 2521}
!235 = distinct !{!235, !88, !89}
!236 = !{!"function_entry_count", i64 93818046}
!237 = !{!"branch_weights", i32 93818003, i32 43}
!238 = !{!"branch_weights", i32 5, i32 38}
!239 = !{!"branch_weights", i32 43, i32 0}
!240 = !{!"VP", i32 0, i64 38, i64 -7405368087501025645, i64 38}
!241 = !{!"function_entry_count", i64 43}
!242 = !{!"VP", i32 0, i64 38, i64 8345045103670217670, i64 38}
!243 = !{!"branch_weights", i32 38, i32 0}
!244 = !{!"branch_weights", i32 0, i32 5}
!245 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!246 = !{!"function_entry_count", i64 38}
!247 = !{!"branch_weights", i32 0, i32 38}
!248 = !{!"branch_weights", i32 1, i32 151}
!249 = !{!"branch_weights", i32 151, i32 162961}
!250 = distinct !{!250, !88, !89}
!251 = distinct !{!251, !88, !89}
!252 = distinct !{!252, !88, !89}
!253 = distinct !{!253, !88, !89}
