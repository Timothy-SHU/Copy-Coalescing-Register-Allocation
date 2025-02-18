; ModuleID = 'XalanDOMStringReusableAllocator.cpp'
source_filename = "XalanDOMStringReusableAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = linkonce_odr dso_local constant [62 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [84 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !57

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !60

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !61
  store ptr %11, ptr %3, align 8, !tbaa !59
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !64
  br label %14

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr %3, align 8, !tbaa !59
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !65

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !53
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24)
  store ptr %24, ptr %3, align 8, !tbaa !59
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !62
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !64
  br label %27

27:                                               ; preds = %19, %14
  %28 = load ptr, ptr %3, align 8, !tbaa !59
  %29 = icmp eq ptr %17, %28
  br i1 %29, label %50, label %30, !prof !66

30:                                               ; preds = %27
  %31 = icmp eq ptr %28, null
  br i1 %31, label %32, label %40, !prof !67

32:                                               ; preds = %30
  %33 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !68
  %34 = load ptr, ptr %33, align 8, !tbaa !44, !noalias !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !68
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 24), !noalias !68
  store ptr %37, ptr %3, align 8, !tbaa !59, !noalias !68
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !62, !noalias !68
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %39, align 8, !tbaa !64, !noalias !68
  br label %40

40:                                               ; preds = %32, %30
  %41 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !68
  %42 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !62, !noalias !68
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %44, i64 0, i32 1
  %46 = load i16, ptr %45, align 8, !tbaa !72
  %47 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %44, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !75
  %49 = icmp ult i16 %46, %48
  br i1 %49, label %126, label %50, !prof !76

50:                                               ; preds = %40, %27
  %51 = load ptr, ptr %2, align 8, !tbaa !53
  %52 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %53 = load i16, ptr %52, align 8, !tbaa !47
  %54 = load ptr, ptr %51, align 8, !tbaa !44
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32), !prof !77
  store ptr %51, ptr %57, align 8, !tbaa !71
  %58 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %57, i64 0, i32 1
  store i16 0, ptr %58, align 8, !tbaa !72
  %59 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %57, i64 0, i32 2
  store i16 %53, ptr %59, align 2, !tbaa !75
  %60 = zext i16 %53 to i64
  %61 = mul nuw nsw i64 %60, 40
  %62 = load ptr, ptr %51, align 8, !tbaa !44
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %61)
          to label %66 unwind label %81, !prof !77

66:                                               ; preds = %50
  %67 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %57, i64 0, i32 3
  store ptr %65, ptr %67, align 8, !tbaa !78
  %68 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %57, i64 0, i32 1
  store i16 0, ptr %68, align 8, !tbaa !79
  %69 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %57, i64 0, i32 2
  store i16 0, ptr %69, align 2, !tbaa !81
  %70 = load i16, ptr %59, align 2, !tbaa !75
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %90, label %72, !prof !82

72:                                               ; preds = %66
  %73 = zext i16 %70 to i64
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %77, %74 ]
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %65, i64 %75
  %77 = add nuw nsw i64 %75, 1
  %78 = trunc i64 %77 to i16
  store i16 %78, ptr %76, align 4, !tbaa !83
  %79 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %76, i64 0, i32 1
  store i32 -2228259, ptr %79, align 4, !tbaa !86
  %80 = icmp eq i64 %77, %73
  br i1 %80, label %90, label %74, !prof !87, !llvm.loop !88

81:                                               ; preds = %50
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load ptr, ptr %51, align 8, !tbaa !44
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %57)
          to label %89 unwind label %86

86:                                               ; preds = %81
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  tail call void @__clang_call_terminate(ptr %88) #13
  unreachable

89:                                               ; preds = %81
  resume { ptr, i32 } %82

90:                                               ; preds = %74, %66
  %91 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !91
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %101, !prof !94

93:                                               ; preds = %90
  %94 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !91
  %95 = load ptr, ptr %94, align 8, !tbaa !44, !noalias !91
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8, !noalias !91
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %94, i64 noundef 24), !noalias !91
  store ptr %98, ptr %3, align 8, !tbaa !59, !noalias !91
  %99 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %98, i64 0, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !62, !noalias !91
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %98, i64 0, i32 1
  store ptr %98, ptr %100, align 8, !tbaa !64, !noalias !91
  br label %101

101:                                              ; preds = %93, %90
  %102 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !91
  %103 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !62, !noalias !91
  %105 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !95
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108, !prof !96

108:                                              ; preds = %101
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  br label %117

111:                                              ; preds = %101
  %112 = load ptr, ptr %2, align 8, !tbaa !53
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = getelementptr inbounds ptr, ptr %113, i64 2
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %112, i64 noundef 24), !prof !97
  store ptr %116, ptr %105, align 8, !tbaa !95
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi ptr [ %106, %108 ], [ %116, %111 ]
  %119 = phi ptr [ %110, %108 ], [ null, %111 ]
  store ptr %57, ptr %118, align 8, !tbaa !71
  %120 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %118, i64 0, i32 1
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %104, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  store ptr %122, ptr %120, align 8, !tbaa !71
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %118, i64 0, i32 2
  store ptr %104, ptr %123, align 8, !tbaa !71
  %124 = load ptr, ptr %121, align 8, !tbaa !64
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %124, i64 0, i32 2
  store ptr %118, ptr %125, align 8, !tbaa !62
  store ptr %118, ptr %121, align 8, !tbaa !64
  store ptr %119, ptr %105, align 8, !tbaa !95
  br label %126

126:                                              ; preds = %117, %40
  %127 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !98
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %137, !prof !101

129:                                              ; preds = %126
  %130 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !98
  %131 = load ptr, ptr %130, align 8, !tbaa !44, !noalias !98
  %132 = getelementptr inbounds ptr, ptr %131, i64 2
  %133 = load ptr, ptr %132, align 8, !noalias !98
  %134 = tail call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(8) %130, i64 noundef 24), !noalias !98
  store ptr %134, ptr %3, align 8, !tbaa !59, !noalias !98
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %134, i64 0, i32 2
  store ptr %134, ptr %135, align 8, !tbaa !62, !noalias !98
  %136 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %134, i64 0, i32 1
  store ptr %134, ptr %136, align 8, !tbaa !64, !noalias !98
  br label %137

137:                                              ; preds = %129, %126
  %138 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !98
  %139 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !62, !noalias !98
  %141 = load ptr, ptr %140, align 8, !tbaa !71
  %142 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %141, i64 0, i32 1
  %143 = load i16, ptr %142, align 8, !tbaa !72
  %144 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %141, i64 0, i32 2
  %145 = load i16, ptr %144, align 2, !tbaa !75
  %146 = icmp eq i16 %143, %145
  br i1 %146, label %160, label %147, !prof !101

147:                                              ; preds = %137
  %148 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %141, i64 0, i32 1
  %149 = load i16, ptr %148, align 8, !tbaa !79
  %150 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %141, i64 0, i32 2
  %151 = load i16, ptr %150, align 2, !tbaa !81
  %152 = icmp eq i16 %149, %151
  %153 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %141, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !78
  %155 = zext i16 %149 to i64
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %154, i64 %155
  br i1 %152, label %157, label %160, !prof !102

157:                                              ; preds = %147
  %158 = load i16, ptr %156, align 4, !tbaa !83
  store i16 %158, ptr %150, align 2, !tbaa !81
  %159 = add i16 %143, 1
  store i16 %159, ptr %142, align 8, !tbaa !72
  br label %160

160:                                              ; preds = %147, %137, %157
  %161 = phi ptr [ null, %137 ], [ %156, %157 ], [ %156, %147 ]
  %162 = load ptr, ptr %2, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %161, ptr noundef nonnull align 8 dereferenceable(8) %162)
  %163 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !103
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %173, !prof !101

165:                                              ; preds = %160
  %166 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !103
  %167 = load ptr, ptr %166, align 8, !tbaa !44, !noalias !103
  %168 = getelementptr inbounds ptr, ptr %167, i64 2
  %169 = load ptr, ptr %168, align 8, !noalias !103
  %170 = tail call noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %166, i64 noundef 24), !noalias !103
  store ptr %170, ptr %3, align 8, !tbaa !59, !noalias !103
  %171 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %170, i64 0, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !62, !noalias !103
  %172 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %170, i64 0, i32 1
  store ptr %170, ptr %172, align 8, !tbaa !64, !noalias !103
  br label %173

173:                                              ; preds = %165, %160
  %174 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !106
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !62, !noalias !103
  %177 = load ptr, ptr %176, align 8, !tbaa !71
  %178 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %177, i64 0, i32 2
  %179 = load i16, ptr %178, align 2, !tbaa !81
  %180 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %177, i64 0, i32 1
  store i16 %179, ptr %180, align 8, !tbaa !79
  %181 = icmp eq ptr %174, null
  br i1 %181, label %182, label %190, !prof !101

182:                                              ; preds = %173
  %183 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !107
  %184 = load ptr, ptr %183, align 8, !tbaa !44, !noalias !107
  %185 = getelementptr inbounds ptr, ptr %184, i64 2
  %186 = load ptr, ptr %185, align 8, !noalias !107
  %187 = tail call noundef ptr %186(ptr noundef nonnull align 8 dereferenceable(8) %183, i64 noundef 24), !noalias !107
  store ptr %187, ptr %3, align 8, !tbaa !59, !noalias !107
  %188 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %187, i64 0, i32 2
  store ptr %187, ptr %188, align 8, !tbaa !62, !noalias !107
  %189 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %187, i64 0, i32 1
  store ptr %187, ptr %189, align 8, !tbaa !64, !noalias !107
  br label %190

190:                                              ; preds = %182, %173
  %191 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !106
  %192 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !62, !noalias !107
  %194 = load ptr, ptr %193, align 8, !tbaa !71
  %195 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %194, i64 0, i32 1
  %196 = load i16, ptr %195, align 8, !tbaa !72
  %197 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %194, i64 0, i32 2
  %198 = load i16, ptr %197, align 2, !tbaa !75
  %199 = icmp ult i16 %196, %198
  br i1 %199, label %268, label %200, !prof !110

200:                                              ; preds = %190
  %201 = icmp eq ptr %191, null
  br i1 %201, label %202, label %210, !prof !111

202:                                              ; preds = %200
  %203 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !112
  %204 = load ptr, ptr %203, align 8, !tbaa !44, !noalias !112
  %205 = getelementptr inbounds ptr, ptr %204, i64 2
  %206 = load ptr, ptr %205, align 8, !noalias !112
  %207 = tail call noundef ptr %206(ptr noundef nonnull align 8 dereferenceable(8) %203, i64 noundef 24), !noalias !112
  store ptr %207, ptr %3, align 8, !tbaa !59, !noalias !112
  %208 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %207, i64 0, i32 2
  store ptr %207, ptr %208, align 8, !tbaa !62, !noalias !112
  %209 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %207, i64 0, i32 1
  store ptr %207, ptr %209, align 8, !tbaa !64, !noalias !112
  br label %210

210:                                              ; preds = %202, %200
  %211 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !106
  %212 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !62, !noalias !112
  %214 = load ptr, ptr %213, align 8, !tbaa !71
  %215 = icmp eq ptr %211, null
  br i1 %215, label %216, label %224, !prof !111

216:                                              ; preds = %210
  %217 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !115
  %218 = load ptr, ptr %217, align 8, !tbaa !44, !noalias !115
  %219 = getelementptr inbounds ptr, ptr %218, i64 2
  %220 = load ptr, ptr %219, align 8, !noalias !115
  %221 = tail call noundef ptr %220(ptr noundef nonnull align 8 dereferenceable(8) %217, i64 noundef 24), !noalias !115
  store ptr %221, ptr %3, align 8, !tbaa !59, !noalias !115
  %222 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %221, i64 0, i32 2
  store ptr %221, ptr %222, align 8, !tbaa !62, !noalias !115
  %223 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %221, i64 0, i32 1
  store ptr %221, ptr %223, align 8, !tbaa !64, !noalias !115
  br label %224

224:                                              ; preds = %216, %210
  %225 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !106
  %226 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !62, !noalias !115
  %228 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !62
  %230 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %227, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !64
  %232 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %231, i64 0, i32 2
  store ptr %229, ptr %232, align 8, !tbaa !62
  %233 = load ptr, ptr %228, align 8, !tbaa !62
  %234 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %233, i64 0, i32 1
  store ptr %231, ptr %234, align 8, !tbaa !64
  store ptr null, ptr %230, align 8, !tbaa !64
  %235 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !95
  store ptr %236, ptr %228, align 8, !tbaa !62
  store ptr %227, ptr %235, align 8, !tbaa !95
  %237 = icmp eq ptr %225, null
  br i1 %237, label %238, label %246, !prof !111

238:                                              ; preds = %224
  %239 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !118
  %240 = load ptr, ptr %239, align 8, !tbaa !44, !noalias !118
  %241 = getelementptr inbounds ptr, ptr %240, i64 2
  %242 = load ptr, ptr %241, align 8, !noalias !118
  %243 = tail call noundef ptr %242(ptr noundef nonnull align 8 dereferenceable(8) %239, i64 noundef 24), !noalias !118
  store ptr %243, ptr %3, align 8, !tbaa !59, !noalias !118
  %244 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %243, i64 0, i32 2
  store ptr %243, ptr %244, align 8, !tbaa !62, !noalias !118
  %245 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %243, i64 0, i32 1
  store ptr %243, ptr %245, align 8, !tbaa !64, !noalias !118
  br label %246

246:                                              ; preds = %238, %224
  %247 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !118
  %248 = load ptr, ptr %235, align 8, !tbaa !95
  %249 = icmp eq ptr %248, null
  br i1 %249, label %253, label %250, !prof !111

250:                                              ; preds = %246
  %251 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %248, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !62
  br label %259

253:                                              ; preds = %246
  %254 = load ptr, ptr %2, align 8, !tbaa !53
  %255 = load ptr, ptr %254, align 8, !tbaa !44
  %256 = getelementptr inbounds ptr, ptr %255, i64 2
  %257 = load ptr, ptr %256, align 8
  %258 = tail call noundef ptr %257(ptr noundef nonnull align 8 dereferenceable(8) %254, i64 noundef 24)
  store ptr %258, ptr %235, align 8, !tbaa !95
  br label %259

259:                                              ; preds = %253, %250
  %260 = phi ptr [ %248, %250 ], [ %258, %253 ]
  %261 = phi ptr [ %252, %250 ], [ null, %253 ]
  store ptr %214, ptr %260, align 8, !tbaa !71
  %262 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %260, i64 0, i32 1
  %263 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %247, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !64
  store ptr %264, ptr %262, align 8, !tbaa !71
  %265 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %260, i64 0, i32 2
  store ptr %247, ptr %265, align 8, !tbaa !71
  %266 = load ptr, ptr %263, align 8, !tbaa !64
  %267 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %266, i64 0, i32 2
  store ptr %260, ptr %267, align 8, !tbaa !62
  store ptr %260, ptr %263, align 8, !tbaa !64
  store ptr %261, ptr %235, align 8, !tbaa !95
  br label %268

268:                                              ; preds = %190, %259
  ret ptr %161
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !60

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !97
  store ptr %11, ptr %3, align 8, !tbaa !59
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !64
  br label %14

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr %3, align 8, !tbaa !59
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !65

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !53
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24)
  store ptr %24, ptr %3, align 8, !tbaa !59
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !62
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !64
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !59
  %29 = icmp eq ptr %17, %28
  br i1 %29, label %52, label %30, !prof !66

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59, !noalias !122
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42, !prof !67

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !122
  %36 = load ptr, ptr %35, align 8, !tbaa !44, !noalias !122
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !122
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 24), !noalias !122
  store ptr %39, ptr %31, align 8, !tbaa !59, !noalias !122
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !62, !noalias !122
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !64, !noalias !122
  br label %42

42:                                               ; preds = %30, %34
  %43 = load ptr, ptr %31, align 8, !tbaa !59, !noalias !122
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !62, !noalias !122
  %46 = load ptr, ptr %45, align 8, !tbaa !71
  %47 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 1
  %48 = load i16, ptr %47, align 8, !tbaa !72
  %49 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 2
  %50 = load i16, ptr %49, align 2, !tbaa !75
  %51 = icmp ult i16 %48, %50
  br i1 %51, label %128, label %52, !prof !76

52:                                               ; preds = %42, %27
  %53 = load ptr, ptr %2, align 8, !tbaa !53
  %54 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %55 = load i16, ptr %54, align 8, !tbaa !47
  %56 = load ptr, ptr %53, align 8, !tbaa !44
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !prof !97
  store ptr %53, ptr %59, align 8, !tbaa !71
  %60 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 1
  store i16 0, ptr %60, align 8, !tbaa !72
  %61 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 2
  store i16 %55, ptr %61, align 2, !tbaa !75
  %62 = zext i16 %55 to i64
  %63 = mul nuw nsw i64 %62, 40
  %64 = load ptr, ptr %53, align 8, !tbaa !44
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %63)
          to label %68 unwind label %83, !prof !77

68:                                               ; preds = %52
  %69 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 3
  store ptr %67, ptr %69, align 8, !tbaa !78
  %70 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %59, i64 0, i32 1
  store i16 0, ptr %70, align 8, !tbaa !79
  %71 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %59, i64 0, i32 2
  store i16 0, ptr %71, align 2, !tbaa !81
  %72 = load i16, ptr %61, align 2, !tbaa !75
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %92, label %74, !prof !82

74:                                               ; preds = %68
  %75 = zext i16 %72 to i64
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %79, %76 ]
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %67, i64 %77
  %79 = add nuw nsw i64 %77, 1
  %80 = trunc i64 %79 to i16
  store i16 %80, ptr %78, align 4, !tbaa !83
  %81 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %78, i64 0, i32 1
  store i32 -2228259, ptr %81, align 4, !tbaa !86
  %82 = icmp eq i64 %79, %75
  br i1 %82, label %92, label %76, !prof !87, !llvm.loop !88

83:                                               ; preds = %52
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %53, align 8, !tbaa !44
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull %59)
          to label %91 unwind label %88

88:                                               ; preds = %83
  %89 = landingpad { ptr, i32 }
          catch ptr null
  %90 = extractvalue { ptr, i32 } %89, 0
  tail call void @__clang_call_terminate(ptr %90) #13
  unreachable

91:                                               ; preds = %83
  resume { ptr, i32 } %84

92:                                               ; preds = %76, %68
  %93 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !125
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %103, !prof !94

95:                                               ; preds = %92
  %96 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !125
  %97 = load ptr, ptr %96, align 8, !tbaa !44, !noalias !125
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8, !noalias !125
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %96, i64 noundef 24), !noalias !125
  store ptr %100, ptr %3, align 8, !tbaa !59, !noalias !125
  %101 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %100, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !62, !noalias !125
  %102 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %100, i64 0, i32 1
  store ptr %100, ptr %102, align 8, !tbaa !64, !noalias !125
  br label %103

103:                                              ; preds = %95, %92
  %104 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !125
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !62, !noalias !125
  %107 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !95
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110, !prof !96

110:                                              ; preds = %103
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %108, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !62
  br label %119

113:                                              ; preds = %103
  %114 = load ptr, ptr %2, align 8, !tbaa !53
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %114, i64 noundef 24), !prof !97
  store ptr %118, ptr %107, align 8, !tbaa !95
  br label %119

119:                                              ; preds = %110, %113
  %120 = phi ptr [ %108, %110 ], [ %118, %113 ]
  %121 = phi ptr [ %112, %110 ], [ null, %113 ]
  store ptr %59, ptr %120, align 8, !tbaa !71
  %122 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %120, i64 0, i32 1
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %106, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !64
  store ptr %124, ptr %122, align 8, !tbaa !71
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %120, i64 0, i32 2
  store ptr %106, ptr %125, align 8, !tbaa !71
  %126 = load ptr, ptr %123, align 8, !tbaa !64
  %127 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %126, i64 0, i32 2
  store ptr %120, ptr %127, align 8, !tbaa !62
  store ptr %120, ptr %123, align 8, !tbaa !64
  store ptr %121, ptr %107, align 8, !tbaa !95
  br label %128

128:                                              ; preds = %119, %42
  %129 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !59, !noalias !128
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %140, !prof !101

132:                                              ; preds = %128
  %133 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !128
  %134 = load ptr, ptr %133, align 8, !tbaa !44, !noalias !128
  %135 = getelementptr inbounds ptr, ptr %134, i64 2
  %136 = load ptr, ptr %135, align 8, !noalias !128
  %137 = tail call noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(8) %133, i64 noundef 24), !noalias !128
  store ptr %137, ptr %129, align 8, !tbaa !59, !noalias !128
  %138 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %137, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !62, !noalias !128
  %139 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %137, i64 0, i32 1
  store ptr %137, ptr %139, align 8, !tbaa !64, !noalias !128
  br label %140

140:                                              ; preds = %128, %132
  %141 = load ptr, ptr %129, align 8, !tbaa !59, !noalias !128
  %142 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !62, !noalias !128
  %144 = load ptr, ptr %143, align 8, !tbaa !71
  %145 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %144, i64 0, i32 1
  %146 = load i16, ptr %145, align 8, !tbaa !72
  %147 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %144, i64 0, i32 2
  %148 = load i16, ptr %147, align 2, !tbaa !75
  %149 = icmp eq i16 %146, %148
  br i1 %149, label %163, label %150, !prof !101

150:                                              ; preds = %140
  %151 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %144, i64 0, i32 1
  %152 = load i16, ptr %151, align 8, !tbaa !79
  %153 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %144, i64 0, i32 2
  %154 = load i16, ptr %153, align 2, !tbaa !81
  %155 = icmp eq i16 %152, %154
  %156 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %144, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !78
  %158 = zext i16 %152 to i64
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %157, i64 %158
  br i1 %155, label %160, label %163, !prof !102

160:                                              ; preds = %150
  %161 = load i16, ptr %159, align 4, !tbaa !83
  store i16 %161, ptr %153, align 2, !tbaa !81
  %162 = add i16 %146, 1
  store i16 %162, ptr %145, align 8, !tbaa !72
  br label %163

163:                                              ; preds = %150, %140, %160
  %164 = phi ptr [ null, %140 ], [ %159, %160 ], [ %159, %150 ]
  ret ptr %164
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !101

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !131
  %9 = load ptr, ptr %8, align 8, !tbaa !44, !noalias !131
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !131
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !131
  store ptr %12, ptr %4, align 8, !tbaa !59, !noalias !131
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !62, !noalias !131
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !64, !noalias !131
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !106
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !62, !noalias !131
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !81
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !79
  %23 = icmp eq ptr %16, null
  br i1 %23, label %24, label %32, !prof !101

24:                                               ; preds = %15
  %25 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !134
  %26 = load ptr, ptr %25, align 8, !tbaa !44, !noalias !134
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !134
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24), !noalias !134
  store ptr %29, ptr %4, align 8, !tbaa !59, !noalias !134
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !62, !noalias !134
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !64, !noalias !134
  br label %32

32:                                               ; preds = %15, %24
  %33 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !106
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !62, !noalias !134
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i16, ptr %37, align 8, !tbaa !72
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !75
  %41 = icmp ult i16 %38, %40
  br i1 %41, label %111, label %42, !prof !110

42:                                               ; preds = %32
  %43 = icmp eq ptr %33, null
  br i1 %43, label %44, label %52, !prof !111

44:                                               ; preds = %42
  %45 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !137
  %46 = load ptr, ptr %45, align 8, !tbaa !44, !noalias !137
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8, !noalias !137
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef 24), !noalias !137
  store ptr %49, ptr %4, align 8, !tbaa !59, !noalias !137
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %49, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !62, !noalias !137
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %49, i64 0, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !64, !noalias !137
  br label %52

52:                                               ; preds = %42, %44
  %53 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !106
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !62, !noalias !137
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  %57 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %58 = icmp eq ptr %53, null
  br i1 %58, label %59, label %67, !prof !111

59:                                               ; preds = %52
  %60 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !140
  %61 = load ptr, ptr %60, align 8, !tbaa !44, !noalias !140
  %62 = getelementptr inbounds ptr, ptr %61, i64 2
  %63 = load ptr, ptr %62, align 8, !noalias !140
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %60, i64 noundef 24), !noalias !140
  store ptr %64, ptr %57, align 8, !tbaa !59, !noalias !140
  %65 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %64, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !62, !noalias !140
  %66 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %64, i64 0, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !64, !noalias !140
  br label %67

67:                                               ; preds = %52, %59
  %68 = load ptr, ptr %57, align 8, !tbaa !59, !noalias !106
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !62, !noalias !140
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  %75 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %74, i64 0, i32 2
  store ptr %72, ptr %75, align 8, !tbaa !62
  %76 = load ptr, ptr %71, align 8, !tbaa !62
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %76, i64 0, i32 1
  store ptr %74, ptr %77, align 8, !tbaa !64
  store ptr null, ptr %73, align 8, !tbaa !64
  %78 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !95
  store ptr %79, ptr %71, align 8, !tbaa !62
  store ptr %70, ptr %78, align 8, !tbaa !95
  %80 = icmp eq ptr %68, null
  br i1 %80, label %81, label %89, !prof !111

81:                                               ; preds = %67
  %82 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !143
  %83 = load ptr, ptr %82, align 8, !tbaa !44, !noalias !143
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8, !noalias !143
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %82, i64 noundef 24), !noalias !143
  store ptr %86, ptr %57, align 8, !tbaa !59, !noalias !143
  %87 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %86, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !62, !noalias !143
  %88 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %86, i64 0, i32 1
  store ptr %86, ptr %88, align 8, !tbaa !64, !noalias !143
  br label %89

89:                                               ; preds = %81, %67
  %90 = load ptr, ptr %57, align 8, !tbaa !59, !noalias !143
  %91 = load ptr, ptr %78, align 8, !tbaa !95
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !111

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %91, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  br label %102

96:                                               ; preds = %89
  %97 = load ptr, ptr %3, align 8, !tbaa !53
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97, i64 noundef 24)
  store ptr %101, ptr %78, align 8, !tbaa !95
  br label %102

102:                                              ; preds = %93, %96
  %103 = phi ptr [ %91, %93 ], [ %101, %96 ]
  %104 = phi ptr [ %95, %93 ], [ null, %96 ]
  store ptr %56, ptr %103, align 8, !tbaa !71
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %103, i64 0, i32 1
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %90, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  store ptr %107, ptr %105, align 8, !tbaa !71
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %103, i64 0, i32 2
  store ptr %90, ptr %108, align 8, !tbaa !71
  %109 = load ptr, ptr %106, align 8, !tbaa !64
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %109, i64 0, i32 2
  store ptr %103, ptr %110, align 8, !tbaa !62
  store ptr %103, ptr %106, align 8, !tbaa !64
  store ptr %104, ptr %78, align 8, !tbaa !95
  br label %111

111:                                              ; preds = %102, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !121 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %4)
  ret ptr %4
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createERKNS_14XalanDOMStringEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 !prof !121 {
  %5 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %2, i32 noundef %3)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %5)
  ret ptr %5
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !121 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %4)
  ret ptr %4
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEjt(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #5 align 2 !prof !121 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %4)
  ret ptr %4
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !121 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !53
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24)
  store ptr %14, ptr %6, align 8, !tbaa !59
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !64
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr %6, align 8, !tbaa !59
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !53
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !59
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !64
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !59
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %49
  %34 = phi ptr [ %51, %49 ], [ %20, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 1
  %37 = load i16, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !75
  %40 = icmp ult i16 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = icmp ule ptr %43, %1
  %45 = zext i16 %39 to i64
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %43, i64 %45
  %47 = icmp ugt ptr %46, %1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %98, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = icmp eq ptr %51, %31
  br i1 %52, label %53, label %33, !llvm.loop !146

53:                                               ; preds = %33, %49, %30
  %54 = phi ptr [ %20, %30 ], [ %34, %33 ], [ %51, %49 ]
  %55 = icmp eq ptr %31, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !147
  %58 = load ptr, ptr %57, align 8, !tbaa !44, !noalias !147
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !noalias !147
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 24), !noalias !147
  store ptr %61, ptr %6, align 8, !tbaa !59, !noalias !147
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %61, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !62, !noalias !147
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %61, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !64, !noalias !147
  br label %64

64:                                               ; preds = %53, %56
  %65 = load ptr, ptr %6, align 8, !tbaa !59, !noalias !106
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !150
  %69 = load ptr, ptr %68, align 8, !tbaa !44, !noalias !150
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !150
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 24), !noalias !150
  store ptr %72, ptr %6, align 8, !tbaa !59, !noalias !150
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !62, !noalias !150
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !64, !noalias !150
  br label %75

75:                                               ; preds = %64, %67
  %76 = load ptr, ptr %6, align 8, !tbaa !59, !noalias !150
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !62, !noalias !150
  br label %79

79:                                               ; preds = %95, %75
  %80 = phi ptr [ %65, %75 ], [ %84, %95 ]
  %81 = icmp eq ptr %80, %78
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !64
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  %86 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !75
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !78
  %90 = icmp ule ptr %89, %1
  %91 = zext i16 %87 to i64
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %89, i64 %91
  %93 = icmp ugt ptr %92, %1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load ptr, ptr %54, align 8, !tbaa !71
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %79, !llvm.loop !153

98:                                               ; preds = %41, %95, %79, %82, %2
  %99 = phi i1 [ false, %2 ], [ true, %82 ], [ false, %79 ], [ false, %95 ], [ true, %41 ]
  ret i1 %99
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !158

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !155
  %8 = load ptr, ptr %7, align 8, !tbaa !44, !noalias !155
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !155
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !61, !noalias !155
  store ptr %11, ptr %3, align 8, !tbaa !59, !noalias !155
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !62, !noalias !155
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !64, !noalias !155
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !106
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !62, !noalias !155
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !159

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !160
  %21 = load ptr, ptr %20, align 8, !tbaa !44, !noalias !160
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !160
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !160
  store ptr %24, ptr %3, align 8, !tbaa !59, !noalias !160
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !62, !noalias !160
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !64, !noalias !160
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !160
  %29 = load ptr, ptr %2, align 8, !tbaa !53
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %88, label %31, !prof !163

31:                                               ; preds = %27, %84
  %32 = phi ptr [ %86, %84 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %84, label %35, !prof !164

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 2
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 1
  %38 = load i16, ptr %36, align 2, !tbaa !75
  %39 = icmp ne i16 %38, 0
  %40 = load i16, ptr %37, align 8
  %41 = icmp ne i16 %40, 0
  %42 = select i1 %39, i1 %41, i1 false, !prof !165
  br i1 %42, label %43, label %45, !prof !166

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  br label %57

45:                                               ; preds = %71, %35
  %46 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  %48 = icmp eq ptr %47, null
  br i1 %48, label %80, label %49, !prof !164

49:                                               ; preds = %45
  %50 = load ptr, ptr %33, align 8, !tbaa !167
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %47)
          to label %80 unwind label %54, !prof !168

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #13
  unreachable

57:                                               ; preds = %71, %43
  %58 = phi i64 [ 0, %43 ], [ %73, %71 ]
  %59 = phi i16 [ %38, %43 ], [ %74, %71 ]
  %60 = phi i16 [ 0, %43 ], [ %72, %71 ]
  %61 = load ptr, ptr %44, align 8, !tbaa !78
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %61, i64 %58
  %63 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !86
  %65 = icmp ne i32 %64, -2228259
  %66 = load i16, ptr %62, align 4
  %67 = icmp ugt i16 %66, %59
  %68 = select i1 %65, i1 true, i1 %67, !prof !169
  br i1 %68, label %69, label %71, !prof !169

69:                                               ; preds = %57
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %62) #12
  %70 = add i16 %60, 1
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i16 [ %70, %69 ], [ %60, %57 ]
  %73 = add nuw nsw i64 %58, 1
  %74 = load i16, ptr %36, align 2, !tbaa !75
  %75 = zext i16 %74 to i64
  %76 = icmp ult i64 %73, %75
  %77 = load i16, ptr %37, align 8
  %78 = icmp ult i16 %72, %77
  %79 = select i1 %76, i1 %78, i1 false, !prof !165
  br i1 %79, label %57, label %45, !prof !170, !llvm.loop !171

80:                                               ; preds = %45, %49
  %81 = load ptr, ptr %29, align 8, !tbaa !44
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !168
  br label %84

84:                                               ; preds = %80, %31
  %85 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %32, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !62, !noalias !172
  %87 = icmp eq ptr %86, %28
  br i1 %87, label %88, label %31, !prof !175, !llvm.loop !176

88:                                               ; preds = %84, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !121 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !121 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59, !noalias !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !53, !noalias !177
  %13 = load ptr, ptr %12, align 8, !tbaa !44, !noalias !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !177
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !177
  store ptr %16, ptr %8, align 8, !tbaa !59, !noalias !177
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !62, !noalias !177
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !64, !noalias !177
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !59, !noalias !177
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !64, !noalias !180
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !75
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %30 = load ptr, ptr %5, align 8, !tbaa !53
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !71
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59, !noalias !184
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !53, !noalias !184
  %40 = load ptr, ptr %39, align 8, !tbaa !44, !noalias !184
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !184
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !184
  store ptr %43, ptr %35, align 8, !tbaa !59, !noalias !184
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !62, !noalias !184
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !64, !noalias !184
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !59, !noalias !184
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !64, !noalias !187
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !75
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !79
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !81
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !78
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %63, i64 %64
  br i1 %61, label %66, label %69

66:                                               ; preds = %56
  %67 = load i16, ptr %65, align 4, !tbaa !83
  store i16 %67, ptr %59, align 2, !tbaa !81
  %68 = add i16 %52, 1
  store i16 %68, ptr %51, align 8, !tbaa !72
  br label %69

69:                                               ; preds = %56, %46, %66
  %70 = phi ptr [ null, %46 ], [ %65, %66 ], [ %65, %56 ]
  ret ptr %70
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !190
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53, !noalias !190
  %9 = load ptr, ptr %8, align 8, !tbaa !44, !noalias !190
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !190
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !190
  store ptr %12, ptr %3, align 8, !tbaa !59, !noalias !190
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !62, !noalias !190
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !64, !noalias !190
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !190
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !64, !noalias !193
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !81
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !196
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !196
  %9 = load ptr, ptr %8, align 8, !tbaa !44, !noalias !196
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !196
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !196
  store ptr %12, ptr %4, align 8, !tbaa !59, !noalias !196
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !62, !noalias !196
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !64, !noalias !196
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !106
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !62, !noalias !196
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !199
  %22 = load ptr, ptr %21, align 8, !tbaa !44, !noalias !199
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !199
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !199
  store ptr %25, ptr %4, align 8, !tbaa !59, !noalias !199
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !62, !noalias !199
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !64, !noalias !199
  br label %28

28:                                               ; preds = %15, %20
  %29 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %47, %28
  %31 = phi ptr [ %4, %28 ], [ %35, %47 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = icmp ne ptr %32, %18
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !75
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = icmp ule ptr %41, %1
  %43 = zext i16 %39 to i64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %41, i64 %43
  %45 = icmp ugt ptr %44, %1
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, ptr %29, align 4, !tbaa !86
  %49 = icmp ne i32 %48, -2228259
  %50 = load i16, ptr %1, align 4
  %51 = icmp ugt i16 %50, %39
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %30, !llvm.loop !202

53:                                               ; preds = %34, %47, %30
  ret i1 %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !121 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !203

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !62, !noalias !204
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !207
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !203

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !207
  %14 = load ptr, ptr %13, align 8, !tbaa !44, !noalias !207
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !207
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !59, !noalias !207
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !62, !noalias !207
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !64, !noalias !207
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !207
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !57

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !62, !noalias !210
  %27 = load ptr, ptr %0, align 8, !tbaa !53
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !213

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !214

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !62
  %40 = load ptr, ptr %0, align 8, !tbaa !53
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !168

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !59
  %46 = load ptr, ptr %0, align 8, !tbaa !53
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !215

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #13
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !60

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !53
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !97
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !64
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !59
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !65

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !53
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !59
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !64
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !59
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !217
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !111

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !217
  %8 = load ptr, ptr %7, align 8, !tbaa !44, !noalias !217
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !217
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !217
  store ptr %11, ptr %3, align 8, !tbaa !59, !noalias !217
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !62, !noalias !217
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !64, !noalias !217
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !217
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !111

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !53
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !95
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %31, ptr %29, align 8, !tbaa !71
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  store ptr %34, ptr %32, align 8, !tbaa !71
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !71
  %36 = load ptr, ptr %33, align 8, !tbaa !64
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !62
  store ptr %29, ptr %33, align 8, !tbaa !64
  store ptr %30, ptr %16, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !121 {
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !97
  %9 = load i16, ptr %3, align 2, !tbaa !183
  store ptr %2, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i16 0, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !75
  %12 = zext i16 %9 to i64
  %13 = mul nuw nsw i64 %12, 40
  %14 = load ptr, ptr %2, align 8, !tbaa !44
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
          to label %18 unwind label %34, !prof !77

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !78
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 1
  store i16 0, ptr %20, align 8, !tbaa !79
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 2
  store i16 0, ptr %21, align 2, !tbaa !81
  %22 = load i16, ptr %11, align 2, !tbaa !75
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24, !prof !82

24:                                               ; preds = %18
  %25 = zext i16 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 %27
  %29 = add nuw nsw i64 %27, 1
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %28, align 4, !tbaa !83
  %31 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %28, i64 0, i32 1
  store i32 -2228259, ptr %31, align 4, !tbaa !86
  %32 = icmp eq i64 %29, %25
  br i1 %32, label %33, label %26, !prof !87, !llvm.loop !88

33:                                               ; preds = %26, %18
  store ptr %8, ptr %1, align 8, !tbaa !71
  ret ptr %8

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %0, align 8, !tbaa !44
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %42 unwind label %39

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #13
  unreachable

42:                                               ; preds = %34
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !154 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !220
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !159

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !220
  %7 = load ptr, ptr %6, align 8, !tbaa !44, !noalias !220
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !220
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !220
  store ptr %10, ptr %2, align 8, !tbaa !59, !noalias !220
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !62, !noalias !220
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !64, !noalias !220
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !220
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !62, !noalias !220
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !223
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !226

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !223
  %24 = load ptr, ptr %23, align 8, !tbaa !44, !noalias !223
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !223
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !223
  store ptr %27, ptr %2, align 8, !tbaa !59, !noalias !223
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !62, !noalias !223
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !64, !noalias !223
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !223
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !227

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !62
  %39 = load ptr, ptr %34, align 8, !tbaa !62
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !64
  store ptr null, ptr %36, align 8, !tbaa !64
  %41 = load ptr, ptr %17, align 8, !tbaa !95
  store ptr %41, ptr %34, align 8, !tbaa !62
  store ptr %19, ptr %17, align 8, !tbaa !95
  br label %18, !llvm.loop !228

42:                                               ; preds = %30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !230
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !233

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  %8 = load ptr, ptr %0, align 8, !tbaa !235
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !236

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 3}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, i64 3}
!38 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 41374568}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 105}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, i64 6}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 3}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !49, i64 8, !51, i64 16}
!49 = !{!"short", !50, i64 0}
!50 = !{!"omnipotent char", !46, i64 0}
!51 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"any pointer", !50, i64 0}
!53 = !{!51, !52, i64 0}
!54 = !{!55, !56, i64 40}
!55 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !48, i64 0, !56, i64 40}
!56 = !{!"bool", !50, i64 0}
!57 = !{!"branch_weights", i32 3, i32 0}
!58 = !{!"function_entry_count", i64 41374568}
!59 = !{!51, !52, i64 8}
!60 = !{!"branch_weights", i32 2, i32 82749029}
!61 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!62 = !{!63, !52, i64 16}
!63 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4NodeE", !52, i64 0, !52, i64 8, !52, i64 16}
!64 = !{!63, !52, i64 8}
!65 = !{!"branch_weights", i32 0, i32 82749031}
!66 = !{!"branch_weights", i32 2, i32 41374566}
!67 = !{!"branch_weights", i32 0, i32 41374566}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!70 = distinct !{!70, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!71 = !{!52, !52, i64 0}
!72 = !{!73, !49, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEE", !74, i64 0, !49, i64 8, !49, i64 10, !52, i64 16}
!74 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !52, i64 0}
!75 = !{!73, !49, i64 10}
!76 = !{!"branch_weights", i32 41372047, i32 2519}
!77 = !{!"VP", i32 0, i64 2521, i64 8345045103670217670, i64 2521}
!78 = !{!73, !52, i64 16}
!79 = !{!80, !49, i64 24}
!80 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEE", !73, i64 0, !49, i64 24, !49, i64 26}
!81 = !{!80, !49, i64 26}
!82 = !{!"branch_weights", i32 1, i32 2520}
!83 = !{!84, !49, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockE", !49, i64 0, !85, i64 4}
!85 = !{!"int", !50, i64 0}
!86 = !{!84, !85, i64 4}
!87 = !{!"branch_weights", i32 2520, i32 78152}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!93 = distinct !{!93, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!94 = !{!"branch_weights", i32 0, i32 40091652}
!95 = !{!51, !52, i64 16}
!96 = !{!"branch_weights", i32 2521, i32 40089131}
!97 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!100 = distinct !{!100, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!101 = !{!"branch_weights", i32 0, i32 41374568}
!102 = !{!"branch_weights", i32 41374568, i32 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!105 = distinct !{!105, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!106 = !{}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!109 = distinct !{!109, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!110 = !{!"branch_weights", i32 40080975, i32 1293593}
!111 = !{!"branch_weights", i32 0, i32 1293593}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!117 = distinct !{!117, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!120 = distinct !{!120, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!121 = !{!"function_entry_count", i64 0}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!124 = distinct !{!124, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!127 = distinct !{!127, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!130 = distinct !{!130, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!133 = distinct !{!133, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!136 = distinct !{!136, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!139 = distinct !{!139, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!142 = distinct !{!142, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!145 = distinct !{!145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!146 = distinct !{!146, !89, !90}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv: argument 0"}
!149 = distinct !{!149, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv: argument 0"}
!152 = distinct !{!152, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv"}
!153 = distinct !{!153, !89, !90}
!154 = !{!"function_entry_count", i64 6}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!157 = distinct !{!157, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!158 = !{!"branch_weights", i32 1, i32 5}
!159 = !{!"branch_weights", i32 0, i32 6}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!162 = distinct !{!162, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!163 = !{!"branch_weights", i32 1, i32 191}
!164 = !{!"branch_weights", i32 0, i32 2521}
!165 = !{!"branch_weights", i32 2645, i32 3}
!166 = !{!"branch_weights", i32 127, i32 2394}
!167 = !{!74, !52, i64 0}
!168 = !{!"VP", i32 0, i64 2521, i64 -7405368087501025645, i64 2521}
!169 = !{!"branch_weights", i32 105, i32 22}
!170 = !{!"branch_weights", i32 0, i32 127}
!171 = distinct !{!171, !89, !90}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!174 = distinct !{!174, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!175 = !{!"branch_weights", i32 191, i32 80481}
!176 = distinct !{!176, !89, !90}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!179 = distinct !{!179, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!182 = distinct !{!182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!183 = !{!49, !49, i64 0}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!186 = distinct !{!186, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!189 = distinct !{!189, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!192 = distinct !{!192, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!195 = distinct !{!195, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv: argument 0"}
!198 = distinct !{!198, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv: argument 0"}
!201 = distinct !{!201, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv"}
!202 = distinct !{!202, !89, !90}
!203 = !{!"branch_weights", i32 0, i32 3}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!206 = distinct !{!206, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!209 = distinct !{!209, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!212 = distinct !{!212, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi"}
!213 = distinct !{!213, !89, !90}
!214 = !{!"branch_weights", i32 3, i32 2521}
!215 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!216 = !{!"function_entry_count", i64 41374463}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!219 = distinct !{!219, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv: argument 0"}
!222 = distinct !{!222, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv: argument 0"}
!225 = distinct !{!225, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv"}
!226 = !{!"branch_weights", i32 0, i32 2527}
!227 = !{!"branch_weights", i32 6, i32 2521}
!228 = distinct !{!228, !89, !90}
!229 = !{!"function_entry_count", i64 42470003}
!230 = !{!231, !232, i64 16}
!231 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !232, i64 8, !232, i64 16, !52, i64 24}
!232 = !{!"long", !50, i64 0}
!233 = !{!"branch_weights", i32 52000, i32 42418003}
!234 = !{!231, !52, i64 24}
!235 = !{!231, !52, i64 0}
!236 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
