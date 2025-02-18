; ModuleID = 'XStringCachedAllocator.cpp'
source_filename = "XStringCachedAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XStringCached" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" }
%"class.xalanc_1_10::XStringBase" = type { %"class.xalanc_1_10::XObject", double, %"class.xalanc_1_10::XObjectResultTreeFragProxy" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XObjectResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", %"class.xalanc_1_10::XObjectResultTreeFragProxyText" }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = linkonce_odr dso_local constant [61 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [83 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1022XStringCachedAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XStringCachedAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XStringCachedAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !42 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022XStringCachedAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !56

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #12
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !59

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !52
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !prof !60
  store ptr %12, ptr %4, align 8, !tbaa !58
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63
  br label %15

15:                                               ; preds = %7, %2
  %16 = load ptr, ptr %4, align 8, !tbaa !58
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28, !prof !64

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !52
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24)
  store ptr %25, ptr %4, align 8, !tbaa !58
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !61
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !63
  br label %28

28:                                               ; preds = %20, %15
  %29 = load ptr, ptr %4, align 8, !tbaa !58
  %30 = icmp eq ptr %18, %29
  br i1 %30, label %51, label %31, !prof !65

31:                                               ; preds = %28
  %32 = icmp eq ptr %29, null
  br i1 %32, label %33, label %41, !prof !66

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !67
  %35 = load ptr, ptr %34, align 8, !tbaa !43, !noalias !67
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8, !noalias !67
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef 24), !noalias !67
  store ptr %38, ptr %4, align 8, !tbaa !58, !noalias !67
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %38, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !61, !noalias !67
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %38, i64 0, i32 1
  store ptr %38, ptr %40, align 8, !tbaa !63, !noalias !67
  br label %41

41:                                               ; preds = %33, %31
  %42 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !67
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !61, !noalias !67
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %45, i64 0, i32 1
  %47 = load i16, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %45, i64 0, i32 2
  %49 = load i16, ptr %48, align 2, !tbaa !74
  %50 = icmp ult i16 %47, %49
  br i1 %50, label %127, label %51, !prof !75

51:                                               ; preds = %41, %28
  %52 = load ptr, ptr %3, align 8, !tbaa !52
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %54 = load i16, ptr %53, align 8, !tbaa !46
  %55 = load ptr, ptr %52, align 8, !tbaa !43
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef 32), !prof !76
  store ptr %52, ptr %58, align 8, !tbaa !70
  %59 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %58, i64 0, i32 1
  store i16 0, ptr %59, align 8, !tbaa !71
  %60 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %58, i64 0, i32 2
  store i16 %54, ptr %60, align 2, !tbaa !74
  %61 = zext i16 %54 to i64
  %62 = mul nuw nsw i64 %61, 80
  %63 = load ptr, ptr %52, align 8, !tbaa !43
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef %62)
          to label %67 unwind label %82, !prof !76

67:                                               ; preds = %51
  %68 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %58, i64 0, i32 3
  store ptr %66, ptr %68, align 8, !tbaa !77
  %69 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %58, i64 0, i32 1
  store i16 0, ptr %69, align 8, !tbaa !78
  %70 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %58, i64 0, i32 2
  store i16 0, ptr %70, align 2, !tbaa !80
  %71 = load i16, ptr %60, align 2, !tbaa !74
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %91, label %73, !prof !81

73:                                               ; preds = %67
  %74 = zext i16 %71 to i64
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i64 [ 0, %73 ], [ %78, %75 ]
  %77 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %66, i64 %76
  %78 = add nuw nsw i64 %76, 1
  %79 = trunc i64 %78 to i16
  store i16 %79, ptr %77, align 4, !tbaa !82
  %80 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %77, i64 0, i32 1
  store i32 -2228259, ptr %80, align 4, !tbaa !85
  %81 = icmp eq i64 %78, %74
  br i1 %81, label %91, label %75, !prof !86, !llvm.loop !87

82:                                               ; preds = %51
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load ptr, ptr %52, align 8, !tbaa !43
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull %58)
          to label %90 unwind label %87

87:                                               ; preds = %82
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  tail call void @__clang_call_terminate(ptr %89) #12
  unreachable

90:                                               ; preds = %82
  resume { ptr, i32 } %83

91:                                               ; preds = %75, %67
  %92 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !90
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102, !prof !93

94:                                               ; preds = %91
  %95 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !90
  %96 = load ptr, ptr %95, align 8, !tbaa !43, !noalias !90
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = load ptr, ptr %97, align 8, !noalias !90
  %99 = tail call noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(8) %95, i64 noundef 24), !noalias !90
  store ptr %99, ptr %4, align 8, !tbaa !58, !noalias !90
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %99, i64 0, i32 2
  store ptr %99, ptr %100, align 8, !tbaa !61, !noalias !90
  %101 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %99, i64 0, i32 1
  store ptr %99, ptr %101, align 8, !tbaa !63, !noalias !90
  br label %102

102:                                              ; preds = %94, %91
  %103 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !90
  %104 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !61, !noalias !90
  %106 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !94
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109, !prof !95

109:                                              ; preds = %102
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !61
  br label %118

112:                                              ; preds = %102
  %113 = load ptr, ptr %3, align 8, !tbaa !52
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = getelementptr inbounds ptr, ptr %114, i64 2
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(8) %113, i64 noundef 24), !prof !60
  store ptr %117, ptr %106, align 8, !tbaa !94
  br label %118

118:                                              ; preds = %112, %109
  %119 = phi ptr [ %107, %109 ], [ %117, %112 ]
  %120 = phi ptr [ %111, %109 ], [ null, %112 ]
  store ptr %58, ptr %119, align 8, !tbaa !70
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %119, i64 0, i32 1
  %122 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %105, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  store ptr %123, ptr %121, align 8, !tbaa !70
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %119, i64 0, i32 2
  store ptr %105, ptr %124, align 8, !tbaa !70
  %125 = load ptr, ptr %122, align 8, !tbaa !63
  %126 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %125, i64 0, i32 2
  store ptr %119, ptr %126, align 8, !tbaa !61
  store ptr %119, ptr %122, align 8, !tbaa !63
  store ptr %120, ptr %106, align 8, !tbaa !94
  br label %127

127:                                              ; preds = %118, %41
  %128 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !96
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %138, !prof !99

130:                                              ; preds = %127
  %131 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !96
  %132 = load ptr, ptr %131, align 8, !tbaa !43, !noalias !96
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  %134 = load ptr, ptr %133, align 8, !noalias !96
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(8) %131, i64 noundef 24), !noalias !96
  store ptr %135, ptr %4, align 8, !tbaa !58, !noalias !96
  %136 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %135, i64 0, i32 2
  store ptr %135, ptr %136, align 8, !tbaa !61, !noalias !96
  %137 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %135, i64 0, i32 1
  store ptr %135, ptr %137, align 8, !tbaa !63, !noalias !96
  br label %138

138:                                              ; preds = %130, %127
  %139 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !96
  %140 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !61, !noalias !96
  %142 = load ptr, ptr %141, align 8, !tbaa !70
  %143 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %142, i64 0, i32 1
  %144 = load i16, ptr %143, align 8, !tbaa !71
  %145 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %142, i64 0, i32 2
  %146 = load i16, ptr %145, align 2, !tbaa !74
  %147 = icmp eq i16 %144, %146
  br i1 %147, label %161, label %148, !prof !99

148:                                              ; preds = %138
  %149 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %142, i64 0, i32 1
  %150 = load i16, ptr %149, align 8, !tbaa !78
  %151 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %142, i64 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !80
  %153 = icmp eq i16 %150, %152
  %154 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %142, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !77
  %156 = zext i16 %150 to i64
  %157 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %155, i64 %156
  br i1 %153, label %158, label %161, !prof !100

158:                                              ; preds = %148
  %159 = load i16, ptr %157, align 4, !tbaa !82
  store i16 %159, ptr %151, align 2, !tbaa !80
  %160 = add i16 %144, 1
  store i16 %160, ptr %143, align 8, !tbaa !71
  br label %161

161:                                              ; preds = %148, %138, %158
  %162 = phi ptr [ null, %138 ], [ %157, %158 ], [ %157, %148 ]
  %163 = load ptr, ptr %3, align 8, !tbaa !52
  tail call void @_ZN11xalanc_1_1013XStringCachedC1ERNS_21XPathExecutionContext25GetAndReleaseCachedStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %162, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %163)
  %164 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !101
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %174, !prof !99

166:                                              ; preds = %161
  %167 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !101
  %168 = load ptr, ptr %167, align 8, !tbaa !43, !noalias !101
  %169 = getelementptr inbounds ptr, ptr %168, i64 2
  %170 = load ptr, ptr %169, align 8, !noalias !101
  %171 = tail call noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(8) %167, i64 noundef 24), !noalias !101
  store ptr %171, ptr %4, align 8, !tbaa !58, !noalias !101
  %172 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %171, i64 0, i32 2
  store ptr %171, ptr %172, align 8, !tbaa !61, !noalias !101
  %173 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %171, i64 0, i32 1
  store ptr %171, ptr %173, align 8, !tbaa !63, !noalias !101
  br label %174

174:                                              ; preds = %166, %161
  %175 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %176 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !61, !noalias !101
  %178 = load ptr, ptr %177, align 8, !tbaa !70
  %179 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %178, i64 0, i32 2
  %180 = load i16, ptr %179, align 2, !tbaa !80
  %181 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %178, i64 0, i32 1
  store i16 %180, ptr %181, align 8, !tbaa !78
  %182 = icmp eq ptr %175, null
  br i1 %182, label %183, label %191, !prof !99

183:                                              ; preds = %174
  %184 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !105
  %185 = load ptr, ptr %184, align 8, !tbaa !43, !noalias !105
  %186 = getelementptr inbounds ptr, ptr %185, i64 2
  %187 = load ptr, ptr %186, align 8, !noalias !105
  %188 = tail call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(8) %184, i64 noundef 24), !noalias !105
  store ptr %188, ptr %4, align 8, !tbaa !58, !noalias !105
  %189 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %188, i64 0, i32 2
  store ptr %188, ptr %189, align 8, !tbaa !61, !noalias !105
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %188, i64 0, i32 1
  store ptr %188, ptr %190, align 8, !tbaa !63, !noalias !105
  br label %191

191:                                              ; preds = %183, %174
  %192 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %193 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !61, !noalias !105
  %195 = load ptr, ptr %194, align 8, !tbaa !70
  %196 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %195, i64 0, i32 1
  %197 = load i16, ptr %196, align 8, !tbaa !71
  %198 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %195, i64 0, i32 2
  %199 = load i16, ptr %198, align 2, !tbaa !74
  %200 = icmp ult i16 %197, %199
  br i1 %200, label %269, label %201, !prof !108

201:                                              ; preds = %191
  %202 = icmp eq ptr %192, null
  br i1 %202, label %203, label %211, !prof !109

203:                                              ; preds = %201
  %204 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !110
  %205 = load ptr, ptr %204, align 8, !tbaa !43, !noalias !110
  %206 = getelementptr inbounds ptr, ptr %205, i64 2
  %207 = load ptr, ptr %206, align 8, !noalias !110
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(8) %204, i64 noundef 24), !noalias !110
  store ptr %208, ptr %4, align 8, !tbaa !58, !noalias !110
  %209 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %208, i64 0, i32 2
  store ptr %208, ptr %209, align 8, !tbaa !61, !noalias !110
  %210 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %208, i64 0, i32 1
  store ptr %208, ptr %210, align 8, !tbaa !63, !noalias !110
  br label %211

211:                                              ; preds = %203, %201
  %212 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %213 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !61, !noalias !110
  %215 = load ptr, ptr %214, align 8, !tbaa !70
  %216 = icmp eq ptr %212, null
  br i1 %216, label %217, label %225, !prof !109

217:                                              ; preds = %211
  %218 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !113
  %219 = load ptr, ptr %218, align 8, !tbaa !43, !noalias !113
  %220 = getelementptr inbounds ptr, ptr %219, i64 2
  %221 = load ptr, ptr %220, align 8, !noalias !113
  %222 = tail call noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(8) %218, i64 noundef 24), !noalias !113
  store ptr %222, ptr %4, align 8, !tbaa !58, !noalias !113
  %223 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %222, i64 0, i32 2
  store ptr %222, ptr %223, align 8, !tbaa !61, !noalias !113
  %224 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %222, i64 0, i32 1
  store ptr %222, ptr %224, align 8, !tbaa !63, !noalias !113
  br label %225

225:                                              ; preds = %217, %211
  %226 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %227 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !61, !noalias !113
  %229 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %228, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !61
  %231 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %228, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !63
  %233 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %232, i64 0, i32 2
  store ptr %230, ptr %233, align 8, !tbaa !61
  %234 = load ptr, ptr %229, align 8, !tbaa !61
  %235 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %234, i64 0, i32 1
  store ptr %232, ptr %235, align 8, !tbaa !63
  store ptr null, ptr %231, align 8, !tbaa !63
  %236 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !94
  store ptr %237, ptr %229, align 8, !tbaa !61
  store ptr %228, ptr %236, align 8, !tbaa !94
  %238 = icmp eq ptr %226, null
  br i1 %238, label %239, label %247, !prof !109

239:                                              ; preds = %225
  %240 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !116
  %241 = load ptr, ptr %240, align 8, !tbaa !43, !noalias !116
  %242 = getelementptr inbounds ptr, ptr %241, i64 2
  %243 = load ptr, ptr %242, align 8, !noalias !116
  %244 = tail call noundef ptr %243(ptr noundef nonnull align 8 dereferenceable(8) %240, i64 noundef 24), !noalias !116
  store ptr %244, ptr %4, align 8, !tbaa !58, !noalias !116
  %245 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %244, i64 0, i32 2
  store ptr %244, ptr %245, align 8, !tbaa !61, !noalias !116
  %246 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %244, i64 0, i32 1
  store ptr %244, ptr %246, align 8, !tbaa !63, !noalias !116
  br label %247

247:                                              ; preds = %239, %225
  %248 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !116
  %249 = load ptr, ptr %236, align 8, !tbaa !94
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251, !prof !109

251:                                              ; preds = %247
  %252 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %249, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !61
  br label %260

254:                                              ; preds = %247
  %255 = load ptr, ptr %3, align 8, !tbaa !52
  %256 = load ptr, ptr %255, align 8, !tbaa !43
  %257 = getelementptr inbounds ptr, ptr %256, i64 2
  %258 = load ptr, ptr %257, align 8
  %259 = tail call noundef ptr %258(ptr noundef nonnull align 8 dereferenceable(8) %255, i64 noundef 24)
  store ptr %259, ptr %236, align 8, !tbaa !94
  br label %260

260:                                              ; preds = %254, %251
  %261 = phi ptr [ %249, %251 ], [ %259, %254 ]
  %262 = phi ptr [ %253, %251 ], [ null, %254 ]
  store ptr %215, ptr %261, align 8, !tbaa !70
  %263 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %261, i64 0, i32 1
  %264 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %248, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !63
  store ptr %265, ptr %263, align 8, !tbaa !70
  %266 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %261, i64 0, i32 2
  store ptr %248, ptr %266, align 8, !tbaa !70
  %267 = load ptr, ptr %264, align 8, !tbaa !63
  %268 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %267, i64 0, i32 2
  store ptr %261, ptr %268, align 8, !tbaa !61
  store ptr %261, ptr %264, align 8, !tbaa !63
  store ptr %262, ptr %236, align 8, !tbaa !94
  br label %269

269:                                              ; preds = %191, %260
  ret ptr %162
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !59

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !60
  store ptr %11, ptr %3, align 8, !tbaa !58
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr %3, align 8, !tbaa !58
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !64

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !52
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24)
  store ptr %24, ptr %3, align 8, !tbaa !58
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !61
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !63
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !58
  %29 = icmp eq ptr %17, %28
  br i1 %29, label %52, label %30, !prof !65

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !58, !noalias !120
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42, !prof !66

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !120
  %36 = load ptr, ptr %35, align 8, !tbaa !43, !noalias !120
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !120
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 24), !noalias !120
  store ptr %39, ptr %31, align 8, !tbaa !58, !noalias !120
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !61, !noalias !120
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !63, !noalias !120
  br label %42

42:                                               ; preds = %30, %34
  %43 = load ptr, ptr %31, align 8, !tbaa !58, !noalias !120
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !61, !noalias !120
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  %47 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 1
  %48 = load i16, ptr %47, align 8, !tbaa !71
  %49 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 2
  %50 = load i16, ptr %49, align 2, !tbaa !74
  %51 = icmp ult i16 %48, %50
  br i1 %51, label %128, label %52, !prof !75

52:                                               ; preds = %42, %27
  %53 = load ptr, ptr %2, align 8, !tbaa !52
  %54 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %55 = load i16, ptr %54, align 8, !tbaa !46
  %56 = load ptr, ptr %53, align 8, !tbaa !43
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !prof !60
  store ptr %53, ptr %59, align 8, !tbaa !70
  %60 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 1
  store i16 0, ptr %60, align 8, !tbaa !71
  %61 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 2
  store i16 %55, ptr %61, align 2, !tbaa !74
  %62 = zext i16 %55 to i64
  %63 = mul nuw nsw i64 %62, 80
  %64 = load ptr, ptr %53, align 8, !tbaa !43
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %63)
          to label %68 unwind label %83, !prof !76

68:                                               ; preds = %52
  %69 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 3
  store ptr %67, ptr %69, align 8, !tbaa !77
  %70 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %59, i64 0, i32 1
  store i16 0, ptr %70, align 8, !tbaa !78
  %71 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %59, i64 0, i32 2
  store i16 0, ptr %71, align 2, !tbaa !80
  %72 = load i16, ptr %61, align 2, !tbaa !74
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %92, label %74, !prof !81

74:                                               ; preds = %68
  %75 = zext i16 %72 to i64
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %79, %76 ]
  %78 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %67, i64 %77
  %79 = add nuw nsw i64 %77, 1
  %80 = trunc i64 %79 to i16
  store i16 %80, ptr %78, align 4, !tbaa !82
  %81 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %78, i64 0, i32 1
  store i32 -2228259, ptr %81, align 4, !tbaa !85
  %82 = icmp eq i64 %79, %75
  br i1 %82, label %92, label %76, !prof !86, !llvm.loop !87

83:                                               ; preds = %52
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %53, align 8, !tbaa !43
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull %59)
          to label %91 unwind label %88

88:                                               ; preds = %83
  %89 = landingpad { ptr, i32 }
          catch ptr null
  %90 = extractvalue { ptr, i32 } %89, 0
  tail call void @__clang_call_terminate(ptr %90) #12
  unreachable

91:                                               ; preds = %83
  resume { ptr, i32 } %84

92:                                               ; preds = %76, %68
  %93 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !123
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %103, !prof !93

95:                                               ; preds = %92
  %96 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !123
  %97 = load ptr, ptr %96, align 8, !tbaa !43, !noalias !123
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8, !noalias !123
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %96, i64 noundef 24), !noalias !123
  store ptr %100, ptr %3, align 8, !tbaa !58, !noalias !123
  %101 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %100, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !61, !noalias !123
  %102 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %100, i64 0, i32 1
  store ptr %100, ptr %102, align 8, !tbaa !63, !noalias !123
  br label %103

103:                                              ; preds = %95, %92
  %104 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !123
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !61, !noalias !123
  %107 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !94
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110, !prof !95

110:                                              ; preds = %103
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %108, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !61
  br label %119

113:                                              ; preds = %103
  %114 = load ptr, ptr %2, align 8, !tbaa !52
  %115 = load ptr, ptr %114, align 8, !tbaa !43
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %114, i64 noundef 24), !prof !60
  store ptr %118, ptr %107, align 8, !tbaa !94
  br label %119

119:                                              ; preds = %110, %113
  %120 = phi ptr [ %108, %110 ], [ %118, %113 ]
  %121 = phi ptr [ %112, %110 ], [ null, %113 ]
  store ptr %59, ptr %120, align 8, !tbaa !70
  %122 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %120, i64 0, i32 1
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %106, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !63
  store ptr %124, ptr %122, align 8, !tbaa !70
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %120, i64 0, i32 2
  store ptr %106, ptr %125, align 8, !tbaa !70
  %126 = load ptr, ptr %123, align 8, !tbaa !63
  %127 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %126, i64 0, i32 2
  store ptr %120, ptr %127, align 8, !tbaa !61
  store ptr %120, ptr %123, align 8, !tbaa !63
  store ptr %121, ptr %107, align 8, !tbaa !94
  br label %128

128:                                              ; preds = %119, %42
  %129 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !58, !noalias !126
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %140, !prof !99

132:                                              ; preds = %128
  %133 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !126
  %134 = load ptr, ptr %133, align 8, !tbaa !43, !noalias !126
  %135 = getelementptr inbounds ptr, ptr %134, i64 2
  %136 = load ptr, ptr %135, align 8, !noalias !126
  %137 = tail call noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(8) %133, i64 noundef 24), !noalias !126
  store ptr %137, ptr %129, align 8, !tbaa !58, !noalias !126
  %138 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %137, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !61, !noalias !126
  %139 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %137, i64 0, i32 1
  store ptr %137, ptr %139, align 8, !tbaa !63, !noalias !126
  br label %140

140:                                              ; preds = %128, %132
  %141 = load ptr, ptr %129, align 8, !tbaa !58, !noalias !126
  %142 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !61, !noalias !126
  %144 = load ptr, ptr %143, align 8, !tbaa !70
  %145 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %144, i64 0, i32 1
  %146 = load i16, ptr %145, align 8, !tbaa !71
  %147 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %144, i64 0, i32 2
  %148 = load i16, ptr %147, align 2, !tbaa !74
  %149 = icmp eq i16 %146, %148
  br i1 %149, label %163, label %150, !prof !99

150:                                              ; preds = %140
  %151 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %144, i64 0, i32 1
  %152 = load i16, ptr %151, align 8, !tbaa !78
  %153 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %144, i64 0, i32 2
  %154 = load i16, ptr %153, align 2, !tbaa !80
  %155 = icmp eq i16 %152, %154
  %156 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %144, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !77
  %158 = zext i16 %152 to i64
  %159 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %157, i64 %158
  br i1 %155, label %160, label %163, !prof !100

160:                                              ; preds = %150
  %161 = load i16, ptr %159, align 4, !tbaa !82
  store i16 %161, ptr %153, align 2, !tbaa !80
  %162 = add i16 %146, 1
  store i16 %162, ptr %145, align 8, !tbaa !71
  br label %163

163:                                              ; preds = %150, %140, %160
  %164 = phi ptr [ null, %140 ], [ %159, %160 ], [ %159, %150 ]
  ret ptr %164
}

declare void @_ZN11xalanc_1_1013XStringCachedC1ERNS_21XPathExecutionContext25GetAndReleaseCachedStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !99

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !129
  %9 = load ptr, ptr %8, align 8, !tbaa !43, !noalias !129
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !129
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !129
  store ptr %12, ptr %4, align 8, !tbaa !58, !noalias !129
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61, !noalias !129
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63, !noalias !129
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61, !noalias !129
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !80
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !78
  %23 = icmp eq ptr %16, null
  br i1 %23, label %24, label %32, !prof !99

24:                                               ; preds = %15
  %25 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !132
  %26 = load ptr, ptr %25, align 8, !tbaa !43, !noalias !132
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !132
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24), !noalias !132
  store ptr %29, ptr %4, align 8, !tbaa !58, !noalias !132
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !61, !noalias !132
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !63, !noalias !132
  br label %32

32:                                               ; preds = %15, %24
  %33 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !61, !noalias !132
  %36 = load ptr, ptr %35, align 8, !tbaa !70
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i16, ptr %37, align 8, !tbaa !71
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !74
  %41 = icmp ult i16 %38, %40
  br i1 %41, label %111, label %42, !prof !108

42:                                               ; preds = %32
  %43 = icmp eq ptr %33, null
  br i1 %43, label %44, label %52, !prof !109

44:                                               ; preds = %42
  %45 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !135
  %46 = load ptr, ptr %45, align 8, !tbaa !43, !noalias !135
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8, !noalias !135
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef 24), !noalias !135
  store ptr %49, ptr %4, align 8, !tbaa !58, !noalias !135
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %49, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !61, !noalias !135
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %49, i64 0, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !63, !noalias !135
  br label %52

52:                                               ; preds = %42, %44
  %53 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !61, !noalias !135
  %56 = load ptr, ptr %55, align 8, !tbaa !70
  %57 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %58 = icmp eq ptr %53, null
  br i1 %58, label %59, label %67, !prof !109

59:                                               ; preds = %52
  %60 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !138
  %61 = load ptr, ptr %60, align 8, !tbaa !43, !noalias !138
  %62 = getelementptr inbounds ptr, ptr %61, i64 2
  %63 = load ptr, ptr %62, align 8, !noalias !138
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %60, i64 noundef 24), !noalias !138
  store ptr %64, ptr %57, align 8, !tbaa !58, !noalias !138
  %65 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %64, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !61, !noalias !138
  %66 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %64, i64 0, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !63, !noalias !138
  br label %67

67:                                               ; preds = %52, %59
  %68 = load ptr, ptr %57, align 8, !tbaa !58, !noalias !104
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !61, !noalias !138
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !61
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !63
  %75 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %74, i64 0, i32 2
  store ptr %72, ptr %75, align 8, !tbaa !61
  %76 = load ptr, ptr %71, align 8, !tbaa !61
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %76, i64 0, i32 1
  store ptr %74, ptr %77, align 8, !tbaa !63
  store ptr null, ptr %73, align 8, !tbaa !63
  %78 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !94
  store ptr %79, ptr %71, align 8, !tbaa !61
  store ptr %70, ptr %78, align 8, !tbaa !94
  %80 = icmp eq ptr %68, null
  br i1 %80, label %81, label %89, !prof !109

81:                                               ; preds = %67
  %82 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !141
  %83 = load ptr, ptr %82, align 8, !tbaa !43, !noalias !141
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8, !noalias !141
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %82, i64 noundef 24), !noalias !141
  store ptr %86, ptr %57, align 8, !tbaa !58, !noalias !141
  %87 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %86, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !61, !noalias !141
  %88 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %86, i64 0, i32 1
  store ptr %86, ptr %88, align 8, !tbaa !63, !noalias !141
  br label %89

89:                                               ; preds = %81, %67
  %90 = load ptr, ptr %57, align 8, !tbaa !58, !noalias !141
  %91 = load ptr, ptr %78, align 8, !tbaa !94
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !109

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %91, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !61
  br label %102

96:                                               ; preds = %89
  %97 = load ptr, ptr %3, align 8, !tbaa !52
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97, i64 noundef 24)
  store ptr %101, ptr %78, align 8, !tbaa !94
  br label %102

102:                                              ; preds = %93, %96
  %103 = phi ptr [ %91, %93 ], [ %101, %96 ]
  %104 = phi ptr [ %95, %93 ], [ null, %96 ]
  store ptr %56, ptr %103, align 8, !tbaa !70
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %103, i64 0, i32 1
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %90, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !63
  store ptr %107, ptr %105, align 8, !tbaa !70
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %103, i64 0, i32 2
  store ptr %90, ptr %108, align 8, !tbaa !70
  %109 = load ptr, ptr %106, align 8, !tbaa !63
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %109, i64 0, i32 2
  store ptr %103, ptr %110, align 8, !tbaa !61
  store ptr %103, ptr %106, align 8, !tbaa !63
  store ptr %104, ptr %78, align 8, !tbaa !94
  br label %111

111:                                              ; preds = %102, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !59

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !52
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !prof !60
  store ptr %12, ptr %4, align 8, !tbaa !58
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63
  br label %15

15:                                               ; preds = %7, %2
  %16 = load ptr, ptr %4, align 8, !tbaa !58
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28, !prof !64

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !52
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24)
  store ptr %25, ptr %4, align 8, !tbaa !58
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !61
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !63
  br label %28

28:                                               ; preds = %20, %15
  %29 = load ptr, ptr %4, align 8, !tbaa !58
  %30 = icmp eq ptr %18, %29
  br i1 %30, label %305, label %31, !prof !99

31:                                               ; preds = %28
  %32 = icmp eq ptr %29, null
  br i1 %32, label %33, label %41, !prof !99

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !144
  %35 = load ptr, ptr %34, align 8, !tbaa !43, !noalias !144
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8, !noalias !144
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef 24), !noalias !144
  store ptr %38, ptr %4, align 8, !tbaa !58, !noalias !144
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %38, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !61, !noalias !144
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %38, i64 0, i32 1
  store ptr %38, ptr %40, align 8, !tbaa !63, !noalias !144
  br label %41

41:                                               ; preds = %33, %31
  %42 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !61, !noalias !144
  %45 = icmp eq ptr %42, null
  br i1 %45, label %46, label %54, !prof !99

46:                                               ; preds = %41
  %47 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !147
  %48 = load ptr, ptr %47, align 8, !tbaa !43, !noalias !147
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8, !noalias !147
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef 24), !noalias !147
  store ptr %51, ptr %4, align 8, !tbaa !58, !noalias !147
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %51, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !61, !noalias !147
  %53 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %51, i64 0, i32 1
  store ptr %51, ptr %53, align 8, !tbaa !63, !noalias !147
  br label %54

54:                                               ; preds = %46, %41
  %55 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !147
  %56 = icmp eq ptr %44, %55
  br i1 %56, label %166, label %57, !prof !150

57:                                               ; preds = %54, %162
  %58 = phi ptr [ %164, %162 ], [ %44, %54 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  %60 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 1
  %61 = load i16, ptr %60, align 8, !tbaa !71
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 2
  %63 = load i16, ptr %62, align 2, !tbaa !74
  %64 = icmp ult i16 %61, %63
  br i1 %64, label %65, label %166, !prof !151

65:                                               ; preds = %57
  %66 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !77
  %68 = icmp ule ptr %67, %1
  %69 = zext i16 %63 to i64
  %70 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %67, i64 %69
  %71 = icmp ugt ptr %70, %1
  %72 = select i1 %68, i1 %71, i1 false, !prof !152
  br i1 %72, label %73, label %162, !prof !153

73:                                               ; preds = %65
  %74 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 1
  %75 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 3
  %76 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %59, i64 0, i32 1
  %77 = load i16, ptr %76, align 8, !tbaa !78
  %78 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %59, i64 0, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !80
  %80 = icmp eq i16 %77, %79
  br i1 %80, label %85, label %81, !prof !100

81:                                               ; preds = %73
  %82 = zext i16 %77 to i64
  %83 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %67, i64 %82
  store i16 %79, ptr %83, align 4, !tbaa !82
  %84 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %83, i64 0, i32 1
  store i32 -2228259, ptr %84, align 4, !tbaa !85
  store i16 %77, ptr %78, align 2, !tbaa !80
  br label %85

85:                                               ; preds = %81, %73
  %86 = load ptr, ptr %1, align 8, !tbaa !43
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(80) %1) #11, !prof !154
  %88 = load i16, ptr %76, align 8, !tbaa !78
  store i16 %88, ptr %1, align 4, !tbaa !82
  %89 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %89, align 4, !tbaa !85
  %90 = load ptr, ptr %75, align 8, !tbaa !77
  %91 = ptrtoint ptr %1 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 80
  %95 = trunc i64 %94 to i16
  store i16 %95, ptr %78, align 2, !tbaa !80
  store i16 %95, ptr %76, align 8, !tbaa !78
  %96 = load i16, ptr %74, align 8, !tbaa !71
  %97 = add i16 %96, -1
  store i16 %97, ptr %74, align 8, !tbaa !71
  %98 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !155
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %108, !prof !158

100:                                              ; preds = %85
  %101 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !155
  %102 = load ptr, ptr %101, align 8, !tbaa !43, !noalias !155
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8, !noalias !155
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %101, i64 noundef 24), !noalias !155
  store ptr %105, ptr %4, align 8, !tbaa !58, !noalias !155
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %105, i64 0, i32 2
  store ptr %105, ptr %106, align 8, !tbaa !61, !noalias !155
  %107 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %105, i64 0, i32 1
  store ptr %105, ptr %107, align 8, !tbaa !63, !noalias !155
  br label %108

108:                                              ; preds = %100, %85
  %109 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !61, !noalias !155
  %112 = icmp eq ptr %58, %111
  br i1 %112, label %157, label %113, !prof !159

113:                                              ; preds = %108
  %114 = load ptr, ptr %58, align 8, !tbaa !70
  %115 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %58, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  %117 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %58, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %118, i64 0, i32 2
  store ptr %116, ptr %119, align 8, !tbaa !61
  %120 = load ptr, ptr %115, align 8, !tbaa !61
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %120, i64 0, i32 1
  store ptr %118, ptr %121, align 8, !tbaa !63
  store ptr null, ptr %117, align 8, !tbaa !63
  %122 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !94
  store ptr %123, ptr %115, align 8, !tbaa !61
  store ptr %58, ptr %122, align 8, !tbaa !94
  %124 = icmp eq ptr %109, null
  br i1 %124, label %125, label %133, !prof !93

125:                                              ; preds = %113
  %126 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !160
  %127 = load ptr, ptr %126, align 8, !tbaa !43, !noalias !160
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !160
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 24), !noalias !160
  store ptr %130, ptr %4, align 8, !tbaa !58, !noalias !160
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !61, !noalias !160
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !63, !noalias !160
  br label %133

133:                                              ; preds = %125, %113
  %134 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !160
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !61, !noalias !160
  %137 = load ptr, ptr %122, align 8, !tbaa !94
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139, !prof !95

139:                                              ; preds = %133
  %140 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %137, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !61
  br label %148

142:                                              ; preds = %133
  %143 = load ptr, ptr %3, align 8, !tbaa !52
  %144 = load ptr, ptr %143, align 8, !tbaa !43
  %145 = getelementptr inbounds ptr, ptr %144, i64 2
  %146 = load ptr, ptr %145, align 8
  %147 = tail call noundef ptr %146(ptr noundef nonnull align 8 dereferenceable(8) %143, i64 noundef 24), !prof !163
  store ptr %147, ptr %122, align 8, !tbaa !94
  br label %148

148:                                              ; preds = %142, %139
  %149 = phi ptr [ %137, %139 ], [ %147, %142 ]
  %150 = phi ptr [ %141, %139 ], [ null, %142 ]
  store ptr %114, ptr %149, align 8, !tbaa !70
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %149, i64 0, i32 1
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %136, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !63
  store ptr %153, ptr %151, align 8, !tbaa !70
  %154 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %149, i64 0, i32 2
  store ptr %136, ptr %154, align 8, !tbaa !70
  %155 = load ptr, ptr %152, align 8, !tbaa !63
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %155, i64 0, i32 2
  store ptr %149, ptr %156, align 8, !tbaa !61
  store ptr %149, ptr %152, align 8, !tbaa !63
  store ptr %150, ptr %122, align 8, !tbaa !94
  br label %157

157:                                              ; preds = %148, %108
  %158 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %159 = load i8, ptr %158, align 8, !tbaa !53, !range !164, !noundef !104
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %166, label %161, !prof !165

161:                                              ; preds = %157
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %166

162:                                              ; preds = %65
  %163 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %58, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !61, !noalias !166
  %165 = icmp eq ptr %164, %55
  br i1 %165, label %166, label %57, !prof !169, !llvm.loop !170

166:                                              ; preds = %162, %57, %161, %157, %54
  %167 = phi ptr [ %58, %161 ], [ %58, %157 ], [ %44, %54 ], [ %164, %162 ], [ %58, %57 ]
  %168 = phi i1 [ false, %161 ], [ false, %157 ], [ true, %54 ], [ true, %57 ], [ true, %162 ]
  %169 = phi i8 [ 1, %161 ], [ 1, %157 ], [ 0, %54 ], [ 0, %57 ], [ 0, %162 ]
  %170 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !171
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %180, !prof !99

172:                                              ; preds = %166
  %173 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !171
  %174 = load ptr, ptr %173, align 8, !tbaa !43, !noalias !171
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8, !noalias !171
  %177 = tail call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %173, i64 noundef 24), !noalias !171
  store ptr %177, ptr %4, align 8, !tbaa !58, !noalias !171
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %177, i64 0, i32 2
  store ptr %177, ptr %178, align 8, !tbaa !61, !noalias !171
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %177, i64 0, i32 1
  store ptr %177, ptr %179, align 8, !tbaa !63, !noalias !171
  br label %180

180:                                              ; preds = %172, %166
  %181 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %191, !prof !99

183:                                              ; preds = %180
  %184 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !176
  %185 = load ptr, ptr %184, align 8, !tbaa !43, !noalias !176
  %186 = getelementptr inbounds ptr, ptr %185, i64 2
  %187 = load ptr, ptr %186, align 8, !noalias !176
  %188 = tail call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(8) %184, i64 noundef 24), !noalias !176
  store ptr %188, ptr %4, align 8, !tbaa !58, !noalias !176
  %189 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %188, i64 0, i32 2
  store ptr %188, ptr %189, align 8, !tbaa !61, !noalias !176
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %188, i64 0, i32 1
  store ptr %188, ptr %190, align 8, !tbaa !63, !noalias !176
  br label %191

191:                                              ; preds = %183, %180
  %192 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !176
  %193 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !61, !noalias !176
  br i1 %168, label %195, label %301

195:                                              ; preds = %191, %298
  %196 = phi ptr [ %200, %298 ], [ %181, %191 ]
  %197 = icmp eq ptr %196, %194
  br i1 %197, label %301, label %198, !prof !181

198:                                              ; preds = %195
  %199 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %196, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !63, !noalias !104
  %201 = load ptr, ptr %200, align 8, !tbaa !70
  %202 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %201, i64 0, i32 2
  %203 = load i16, ptr %202, align 2, !tbaa !74
  %204 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %201, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !77
  %206 = icmp ule ptr %205, %1
  %207 = zext i16 %203 to i64
  %208 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %205, i64 %207
  %209 = icmp ugt ptr %208, %1
  %210 = select i1 %206, i1 %209, i1 false, !prof !182
  br i1 %210, label %211, label %298, !prof !183

211:                                              ; preds = %198
  %212 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %201, i64 0, i32 3
  %213 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %201, i64 0, i32 1
  %214 = load i16, ptr %213, align 8, !tbaa !78
  %215 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %201, i64 0, i32 2
  %216 = load i16, ptr %215, align 2, !tbaa !80
  %217 = icmp eq i16 %214, %216
  br i1 %217, label %222, label %218, !prof !100

218:                                              ; preds = %211
  %219 = zext i16 %214 to i64
  %220 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %205, i64 %219
  store i16 %216, ptr %220, align 4, !tbaa !82
  %221 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %220, i64 0, i32 1
  store i32 -2228259, ptr %221, align 4, !tbaa !85
  store i16 %214, ptr %215, align 2, !tbaa !80
  br label %222

222:                                              ; preds = %218, %211
  %223 = load ptr, ptr %1, align 8, !tbaa !43
  %224 = load ptr, ptr %223, align 8
  tail call void %224(ptr noundef nonnull align 8 dereferenceable(80) %1) #11, !prof !184
  %225 = load i16, ptr %213, align 8, !tbaa !78
  store i16 %225, ptr %1, align 4, !tbaa !82
  %226 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %226, align 4, !tbaa !85
  %227 = load ptr, ptr %212, align 8, !tbaa !77
  %228 = ptrtoint ptr %1 to i64
  %229 = ptrtoint ptr %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 80
  %232 = trunc i64 %231 to i16
  store i16 %232, ptr %215, align 2, !tbaa !80
  store i16 %232, ptr %213, align 8, !tbaa !78
  %233 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %201, i64 0, i32 1
  %234 = load i16, ptr %233, align 8, !tbaa !71
  %235 = add i16 %234, -1
  store i16 %235, ptr %233, align 8, !tbaa !71
  %236 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !185
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %246, !prof !190

238:                                              ; preds = %222
  %239 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !185
  %240 = load ptr, ptr %239, align 8, !tbaa !43, !noalias !185
  %241 = getelementptr inbounds ptr, ptr %240, i64 2
  %242 = load ptr, ptr %241, align 8, !noalias !185
  %243 = tail call noundef ptr %242(ptr noundef nonnull align 8 dereferenceable(8) %239, i64 noundef 24), !noalias !185
  store ptr %243, ptr %4, align 8, !tbaa !58, !noalias !185
  %244 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %243, i64 0, i32 2
  store ptr %243, ptr %244, align 8, !tbaa !61, !noalias !185
  %245 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %243, i64 0, i32 1
  store ptr %243, ptr %245, align 8, !tbaa !63, !noalias !185
  br label %246

246:                                              ; preds = %238, %222
  %247 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %248 = icmp eq ptr %196, %247
  br i1 %248, label %293, label %249, !prof !191

249:                                              ; preds = %246
  %250 = load ptr, ptr %167, align 8, !tbaa !70
  %251 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %167, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !61
  %253 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %167, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !63
  %255 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %254, i64 0, i32 2
  store ptr %252, ptr %255, align 8, !tbaa !61
  %256 = load ptr, ptr %251, align 8, !tbaa !61
  %257 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %256, i64 0, i32 1
  store ptr %254, ptr %257, align 8, !tbaa !63
  store ptr null, ptr %253, align 8, !tbaa !63
  %258 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !94
  store ptr %259, ptr %251, align 8, !tbaa !61
  store ptr %167, ptr %258, align 8, !tbaa !94
  %260 = icmp eq ptr %247, null
  br i1 %260, label %261, label %269, !prof !93

261:                                              ; preds = %249
  %262 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !192
  %263 = load ptr, ptr %262, align 8, !tbaa !43, !noalias !192
  %264 = getelementptr inbounds ptr, ptr %263, i64 2
  %265 = load ptr, ptr %264, align 8, !noalias !192
  %266 = tail call noundef ptr %265(ptr noundef nonnull align 8 dereferenceable(8) %262, i64 noundef 24), !noalias !192
  store ptr %266, ptr %4, align 8, !tbaa !58, !noalias !192
  %267 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %266, i64 0, i32 2
  store ptr %266, ptr %267, align 8, !tbaa !61, !noalias !192
  %268 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %266, i64 0, i32 1
  store ptr %266, ptr %268, align 8, !tbaa !63, !noalias !192
  br label %269

269:                                              ; preds = %261, %249
  %270 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !192
  %271 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %270, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !61, !noalias !192
  %273 = load ptr, ptr %258, align 8, !tbaa !94
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275, !prof !95

275:                                              ; preds = %269
  %276 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %273, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !61
  br label %284

278:                                              ; preds = %269
  %279 = load ptr, ptr %3, align 8, !tbaa !52
  %280 = load ptr, ptr %279, align 8, !tbaa !43
  %281 = getelementptr inbounds ptr, ptr %280, i64 2
  %282 = load ptr, ptr %281, align 8
  %283 = tail call noundef ptr %282(ptr noundef nonnull align 8 dereferenceable(8) %279, i64 noundef 24), !prof !195
  store ptr %283, ptr %258, align 8, !tbaa !94
  br label %284

284:                                              ; preds = %278, %275
  %285 = phi ptr [ %273, %275 ], [ %283, %278 ]
  %286 = phi ptr [ %277, %275 ], [ null, %278 ]
  store ptr %250, ptr %285, align 8, !tbaa !70
  %287 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %285, i64 0, i32 1
  %288 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %272, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !63
  store ptr %289, ptr %287, align 8, !tbaa !70
  %290 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %285, i64 0, i32 2
  store ptr %272, ptr %290, align 8, !tbaa !70
  %291 = load ptr, ptr %288, align 8, !tbaa !63
  %292 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %291, i64 0, i32 2
  store ptr %285, ptr %292, align 8, !tbaa !61
  store ptr %285, ptr %288, align 8, !tbaa !63
  store ptr %286, ptr %258, align 8, !tbaa !94
  br label %293

293:                                              ; preds = %284, %246
  %294 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %295 = load i8, ptr %294, align 8, !tbaa !53, !range !164, !noundef !104
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %301, label %297, !prof !196

297:                                              ; preds = %293
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %301

298:                                              ; preds = %198
  %299 = load ptr, ptr %167, align 8, !tbaa !70
  %300 = icmp eq ptr %201, %299
  br i1 %300, label %301, label %195, !prof !197, !llvm.loop !198

301:                                              ; preds = %298, %195, %297, %293, %191
  %302 = phi i8 [ 1, %297 ], [ 1, %293 ], [ %169, %191 ], [ %169, %195 ], [ %169, %298 ]
  %303 = and i8 %302, 1
  %304 = icmp ne i8 %303, 0
  br label %305

305:                                              ; preds = %28, %301
  %306 = phi i1 [ %304, %301 ], [ false, %28 ]
  ret i1 %306
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 align 2 !prof !199 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !200 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !204

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !201
  %8 = load ptr, ptr %7, align 8, !tbaa !43, !noalias !201
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !201
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !201
  store ptr %11, ptr %3, align 8, !tbaa !58, !noalias !201
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61, !noalias !201
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63, !noalias !201
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !104
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61, !noalias !201
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !204

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !205
  %21 = load ptr, ptr %20, align 8, !tbaa !43, !noalias !205
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !205
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !205
  store ptr %24, ptr %3, align 8, !tbaa !58, !noalias !205
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !61, !noalias !205
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !63, !noalias !205
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !205
  %29 = load ptr, ptr %2, align 8, !tbaa !52
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %90, label %31, !prof !208

31:                                               ; preds = %27, %86
  %32 = phi ptr [ %88, %86 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35, !prof !209

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 2
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 1
  %38 = load i16, ptr %36, align 2, !tbaa !74
  %39 = icmp ne i16 %38, 0
  %40 = load i16, ptr %37, align 8
  %41 = icmp ne i16 %40, 0
  %42 = select i1 %39, i1 %41, i1 false, !prof !210
  br i1 %42, label %43, label %45, !prof !150

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  br label %57

45:                                               ; preds = %73, %35
  %46 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  %48 = icmp eq ptr %47, null
  br i1 %48, label %82, label %49, !prof !209

49:                                               ; preds = %45
  %50 = load ptr, ptr %33, align 8, !tbaa !211
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %47)
          to label %82 unwind label %54, !prof !212

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #12
  unreachable

57:                                               ; preds = %73, %43
  %58 = phi i64 [ 0, %43 ], [ %75, %73 ]
  %59 = phi i16 [ %38, %43 ], [ %76, %73 ]
  %60 = phi i16 [ 0, %43 ], [ %74, %73 ]
  %61 = load ptr, ptr %44, align 8, !tbaa !77
  %62 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %61, i64 %58
  %63 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !85
  %65 = icmp ne i32 %64, -2228259
  %66 = load i16, ptr %62, align 4
  %67 = icmp ugt i16 %66, %59
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load ptr, ptr %62, align 8, !tbaa !43
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(80) %62) #11
  %72 = add i16 %60, 1
  br label %73

73:                                               ; preds = %69, %57
  %74 = phi i16 [ %72, %69 ], [ %60, %57 ]
  %75 = add nuw nsw i64 %58, 1
  %76 = load i16, ptr %36, align 2, !tbaa !74
  %77 = zext i16 %76 to i64
  %78 = icmp ult i64 %75, %77
  %79 = load i16, ptr %37, align 8
  %80 = icmp ult i16 %74, %79
  %81 = select i1 %78, i1 %80, i1 false, !prof !210
  br i1 %81, label %57, label %45, !prof !150, !llvm.loop !213

82:                                               ; preds = %45, %49
  %83 = load ptr, ptr %29, align 8, !tbaa !43
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !212
  br label %86

86:                                               ; preds = %82, %31
  %87 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %32, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !61, !noalias !214
  %89 = icmp eq ptr %88, %28
  br i1 %89, label %90, label %31, !prof !217, !llvm.loop !218

90:                                               ; preds = %86, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !119 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !52
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24)
  store ptr %14, ptr %6, align 8, !tbaa !58
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !61
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr %6, align 8, !tbaa !58
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !52
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !58
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !58
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %49
  %34 = phi ptr [ %51, %49 ], [ %20, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 1
  %37 = load i16, ptr %36, align 8, !tbaa !71
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !74
  %40 = icmp ult i16 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = icmp ule ptr %43, %1
  %45 = zext i16 %39 to i64
  %46 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %43, i64 %45
  %47 = icmp ugt ptr %46, %1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %98, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = icmp eq ptr %51, %31
  br i1 %52, label %53, label %33, !llvm.loop !219

53:                                               ; preds = %33, %49, %30
  %54 = phi ptr [ %20, %30 ], [ %34, %33 ], [ %51, %49 ]
  %55 = icmp eq ptr %31, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !220
  %58 = load ptr, ptr %57, align 8, !tbaa !43, !noalias !220
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !noalias !220
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 24), !noalias !220
  store ptr %61, ptr %6, align 8, !tbaa !58, !noalias !220
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %61, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !61, !noalias !220
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %61, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !63, !noalias !220
  br label %64

64:                                               ; preds = %53, %56
  %65 = load ptr, ptr %6, align 8, !tbaa !58, !noalias !104
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !223
  %69 = load ptr, ptr %68, align 8, !tbaa !43, !noalias !223
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !223
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 24), !noalias !223
  store ptr %72, ptr %6, align 8, !tbaa !58, !noalias !223
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !61, !noalias !223
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !63, !noalias !223
  br label %75

75:                                               ; preds = %64, %67
  %76 = load ptr, ptr %6, align 8, !tbaa !58, !noalias !223
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !61, !noalias !223
  br label %79

79:                                               ; preds = %95, %75
  %80 = phi ptr [ %65, %75 ], [ %84, %95 ]
  %81 = icmp eq ptr %80, %78
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !63
  %85 = load ptr, ptr %84, align 8, !tbaa !70
  %86 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !74
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !77
  %90 = icmp ule ptr %89, %1
  %91 = zext i16 %87 to i64
  %92 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %89, i64 %91
  %93 = icmp ugt ptr %92, %1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load ptr, ptr %54, align 8, !tbaa !70
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %79, !llvm.loop !226

98:                                               ; preds = %41, %95, %79, %82, %2
  %99 = phi i1 [ false, %2 ], [ true, %82 ], [ false, %79 ], [ false, %95 ], [ true, %41 ]
  ret i1 %99
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !119 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !119 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !58, !noalias !227
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !52, !noalias !227
  %13 = load ptr, ptr %12, align 8, !tbaa !43, !noalias !227
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !227
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !227
  store ptr %16, ptr %8, align 8, !tbaa !58, !noalias !227
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !61, !noalias !227
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !63, !noalias !227
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !58, !noalias !227
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !63, !noalias !230
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !71
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !74
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %30 = load ptr, ptr %5, align 8, !tbaa !52
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !70
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !58, !noalias !234
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !52, !noalias !234
  %40 = load ptr, ptr %39, align 8, !tbaa !43, !noalias !234
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !234
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !234
  store ptr %43, ptr %35, align 8, !tbaa !58, !noalias !234
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !61, !noalias !234
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !63, !noalias !234
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !58, !noalias !234
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !63, !noalias !237
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !71
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !74
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !78
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !80
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !77
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %63, i64 %64
  br i1 %61, label %66, label %69

66:                                               ; preds = %56
  %67 = load i16, ptr %65, align 4, !tbaa !82
  store i16 %67, ptr %59, align 2, !tbaa !80
  %68 = add i16 %52, 1
  store i16 %68, ptr %51, align 8, !tbaa !71
  br label %69

69:                                               ; preds = %56, %46, %66
  %70 = phi ptr [ null, %46 ], [ %65, %66 ], [ %65, %56 ]
  ret ptr %70
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !240
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52, !noalias !240
  %9 = load ptr, ptr %8, align 8, !tbaa !43, !noalias !240
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !240
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !240
  store ptr %12, ptr %3, align 8, !tbaa !58, !noalias !240
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61, !noalias !240
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63, !noalias !240
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !240
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !63, !noalias !243
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !80
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !78
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !246
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !246
  %9 = load ptr, ptr %8, align 8, !tbaa !43, !noalias !246
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !246
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !246
  store ptr %12, ptr %4, align 8, !tbaa !58, !noalias !246
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61, !noalias !246
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63, !noalias !246
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !104
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61, !noalias !246
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !249
  %22 = load ptr, ptr %21, align 8, !tbaa !43, !noalias !249
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !249
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !249
  store ptr %25, ptr %4, align 8, !tbaa !58, !noalias !249
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !61, !noalias !249
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !63, !noalias !249
  br label %28

28:                                               ; preds = %15, %20
  %29 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %47, %28
  %31 = phi ptr [ %4, %28 ], [ %35, %47 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = icmp ne ptr %32, %18
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !74
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = icmp ule ptr %41, %1
  %43 = zext i16 %39 to i64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %41, i64 %43
  %45 = icmp ugt ptr %44, %1
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, ptr %29, align 4, !tbaa !85
  %49 = icmp ne i32 %48, -2228259
  %50 = load i16, ptr %1, align 4
  %51 = icmp ugt i16 %50, %39
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %30, !llvm.loop !252

53:                                               ; preds = %34, %47, %30
  ret i1 %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !119 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !150

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !253
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !256
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !150

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !256
  %14 = load ptr, ptr %13, align 8, !tbaa !43, !noalias !256
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !256
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !58, !noalias !256
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !61, !noalias !256
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !63, !noalias !256
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !256
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !56

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !61, !noalias !259
  %27 = load ptr, ptr %0, align 8, !tbaa !52
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !262

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !263

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %0, align 8, !tbaa !52
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !212

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !58
  %46 = load ptr, ptr %0, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !264

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
  tail call void @__clang_call_terminate(ptr %59) #12
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !59

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !60
  store ptr %10, ptr %2, align 8, !tbaa !58
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !58
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !64

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !52
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !58
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !58
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !265
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !109

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !265
  %8 = load ptr, ptr %7, align 8, !tbaa !43, !noalias !265
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !265
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !265
  store ptr %11, ptr %3, align 8, !tbaa !58, !noalias !265
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61, !noalias !265
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63, !noalias !265
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !265
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !109

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !52
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !94
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %31, ptr %29, align 8, !tbaa !70
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  store ptr %34, ptr %32, align 8, !tbaa !70
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !70
  %36 = load ptr, ptr %33, align 8, !tbaa !63
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !61
  store ptr %29, ptr %33, align 8, !tbaa !63
  store ptr %30, ptr %16, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !119 {
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !60
  %9 = load i16, ptr %3, align 2, !tbaa !233
  store ptr %2, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i16 0, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !74
  %12 = zext i16 %9 to i64
  %13 = mul nuw nsw i64 %12, 80
  %14 = load ptr, ptr %2, align 8, !tbaa !43
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
          to label %18 unwind label %34, !prof !76

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !77
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 1
  store i16 0, ptr %20, align 8, !tbaa !78
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 2
  store i16 0, ptr %21, align 2, !tbaa !80
  %22 = load i16, ptr %11, align 2, !tbaa !74
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24, !prof !81

24:                                               ; preds = %18
  %25 = zext i16 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %17, i64 %27
  %29 = add nuw nsw i64 %27, 1
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %28, align 4, !tbaa !82
  %31 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %28, i64 0, i32 1
  store i32 -2228259, ptr %31, align 4, !tbaa !85
  %32 = icmp eq i64 %29, %25
  br i1 %32, label %33, label %26, !prof !86, !llvm.loop !87

33:                                               ; preds = %26, %18
  store ptr %8, ptr %1, align 8, !tbaa !70
  ret ptr %8

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %0, align 8, !tbaa !43
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %42 unwind label %39

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #12
  unreachable

42:                                               ; preds = %34
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !268
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !109

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !268
  %7 = load ptr, ptr %6, align 8, !tbaa !43, !noalias !268
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !268
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !268
  store ptr %10, ptr %2, align 8, !tbaa !58, !noalias !268
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !61, !noalias !268
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63, !noalias !268
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !268
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61, !noalias !268
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !61
  %22 = load ptr, ptr %17, align 8, !tbaa !61
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %22, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !63
  store ptr null, ptr %19, align 8, !tbaa !63
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  store ptr %25, ptr %17, align 8, !tbaa !61
  store ptr %16, ptr %24, align 8, !tbaa !94
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #5 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !271
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !271
  %10 = load ptr, ptr %9, align 8, !tbaa !43, !noalias !271
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !271
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !271
  store ptr %13, ptr %5, align 8, !tbaa !58, !noalias !271
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !61, !noalias !271
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !63, !noalias !271
  br label %16

16:                                               ; preds = %4, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !104
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61, !noalias !271
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !71
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !274
  %30 = load ptr, ptr %29, align 8, !tbaa !43, !noalias !274
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !274
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 24), !noalias !274
  store ptr %33, ptr %5, align 8, !tbaa !58, !noalias !274
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !61, !noalias !274
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !63, !noalias !274
  br label %36

36:                                               ; preds = %24, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !274
  %38 = icmp eq ptr %26, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %26, align 8, !tbaa !70
  %41 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 8, !tbaa !71
  %43 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !74
  %45 = icmp ult i16 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %39
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %47

47:                                               ; preds = %16, %46, %39, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !200 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !277
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !204

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !277
  %7 = load ptr, ptr %6, align 8, !tbaa !43, !noalias !277
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !277
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !277
  store ptr %10, ptr %2, align 8, !tbaa !58, !noalias !277
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !61, !noalias !277
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63, !noalias !277
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !277
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61, !noalias !277
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !280
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !283

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !280
  %24 = load ptr, ptr %23, align 8, !tbaa !43, !noalias !280
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !280
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !280
  store ptr %27, ptr %2, align 8, !tbaa !58, !noalias !280
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !61, !noalias !280
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !63, !noalias !280
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !280
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !284

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !61
  %39 = load ptr, ptr %34, align 8, !tbaa !61
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !63
  store ptr null, ptr %36, align 8, !tbaa !63
  %41 = load ptr, ptr %17, align 8, !tbaa !94
  store ptr %41, ptr %34, align 8, !tbaa !61
  store ptr %19, ptr %17, align 8, !tbaa !94
  br label %18, !llvm.loop !285

42:                                               ; preds = %30
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

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
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1013XStringCachedC1ERNS_21XPathExecutionContext25GetAndReleaseCachedStringERN11xercesc_2_713MemoryManagerE, i64 67113825}
!39 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 4}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, i64 5}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE", !48, i64 8, !50, i64 16}
!48 = !{!"short", !49, i64 0}
!49 = !{!"omnipotent char", !45, i64 0}
!50 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"any pointer", !49, i64 0}
!52 = !{!50, !51, i64 0}
!53 = !{!54, !55, i64 40}
!54 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE", !47, i64 0, !55, i64 40}
!55 = !{!"bool", !49, i64 0}
!56 = !{!"branch_weights", i32 1, i32 0}
!57 = !{!"function_entry_count", i64 67113825}
!58 = !{!50, !51, i64 8}
!59 = !{!"branch_weights", i32 1, i32 134227649}
!60 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!61 = !{!62, !51, i64 16}
!62 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4NodeE", !51, i64 0, !51, i64 8, !51, i64 16}
!63 = !{!62, !51, i64 8}
!64 = !{!"branch_weights", i32 0, i32 134227650}
!65 = !{!"branch_weights", i32 1, i32 67113824}
!66 = !{!"branch_weights", i32 0, i32 67113824}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!69 = distinct !{!69, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!70 = !{!51, !51, i64 0}
!71 = !{!72, !48, i64 8}
!72 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEE", !73, i64 0, !48, i64 8, !48, i64 10, !51, i64 16}
!73 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEEE", !51, i64 0}
!74 = !{!72, !48, i64 10}
!75 = !{!"branch_weights", i32 67112077, i32 1747}
!76 = !{!"VP", i32 0, i64 1748, i64 8345045103670217670, i64 1748}
!77 = !{!72, !51, i64 16}
!78 = !{!79, !48, i64 24}
!79 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEE", !72, i64 0, !48, i64 24, !48, i64 26}
!80 = !{!79, !48, i64 26}
!81 = !{!"branch_weights", i32 1, i32 1747}
!82 = !{!83, !48, i64 0}
!83 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockE", !48, i64 0, !84, i64 4}
!84 = !{!"int", !49, i64 0}
!85 = !{!83, !84, i64 4}
!86 = !{!"branch_weights", i32 1747, i32 15733}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!92 = distinct !{!92, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!93 = !{!"branch_weights", i32 0, i32 4957759}
!94 = !{!50, !51, i64 16}
!95 = !{!"branch_weights", i32 1748, i32 4956011}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!99 = !{!"branch_weights", i32 0, i32 67113825}
!100 = !{!"branch_weights", i32 67113825, i32 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!103 = distinct !{!103, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!104 = !{}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!107 = distinct !{!107, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!108 = !{!"branch_weights", i32 62171599, i32 4942226}
!109 = !{!"branch_weights", i32 0, i32 4942226}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!112 = distinct !{!112, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!115 = distinct !{!115, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!118 = distinct !{!118, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!119 = !{!"function_entry_count", i64 0}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!122 = distinct !{!122, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!125 = distinct !{!125, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!128 = distinct !{!128, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!131 = distinct !{!131, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!140 = distinct !{!140, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!143 = distinct !{!143, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!149 = distinct !{!149, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!150 = !{!"branch_weights", i32 0, i32 1}
!151 = !{!"branch_weights", i32 -108054843, i32 1239460}
!152 = !{!"branch_weights", i32 441055913, i32 -549110757}
!153 = !{!"branch_weights", i32 15538996, i32 -123593839}
!154 = !{!"VP", i32 0, i64 62155975, i64 5052897452563322459, i64 62155975}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!157 = distinct !{!157, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!158 = !{!"branch_weights", i32 0, i32 62155984}
!159 = !{!"branch_weights", i32 57215530, i32 4940454}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!162 = distinct !{!162, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!163 = !{!"VP", i32 0, i64 1741, i64 8345045103670217670, i64 1741}
!164 = !{i8 0, i8 2}
!165 = !{!"branch_weights", i32 62155984, i32 0}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!168 = distinct !{!168, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!169 = !{!"branch_weights", i32 0, i32 -106815383}
!170 = distinct !{!170, !88, !89}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!173 = distinct !{!173, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!174 = distinct !{!174, !175, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv: argument 0"}
!175 = distinct !{!175, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv"}
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!178 = distinct !{!178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!179 = distinct !{!179, !180, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv: argument 0"}
!180 = distinct !{!180, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv"}
!181 = !{!"branch_weights", i32 62155984, i32 7192213}
!182 = !{!"branch_weights", i32 5111570, i32 2080643}
!183 = !{!"branch_weights", i32 4957841, i32 2234372}
!184 = !{!"VP", i32 0, i64 4957841, i64 5052897452563322459, i64 4957841}
!185 = !{!186, !188}
!186 = distinct !{!186, !187, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!187 = distinct !{!187, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!188 = distinct !{!188, !189, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv: argument 0"}
!189 = distinct !{!189, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv"}
!190 = !{!"branch_weights", i32 0, i32 4957841}
!191 = !{!"branch_weights", i32 4942284, i32 15557}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!194 = distinct !{!194, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!195 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!196 = !{!"branch_weights", i32 4957841, i32 0}
!197 = !{!"branch_weights", i32 0, i32 2234372}
!198 = distinct !{!198, !88, !89}
!199 = !{!"function_entry_count", i64 4}
!200 = !{!"function_entry_count", i64 5}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!203 = distinct !{!203, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!204 = !{!"branch_weights", i32 0, i32 5}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!207 = distinct !{!207, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!208 = !{!"branch_weights", i32 1, i32 159}
!209 = !{!"branch_weights", i32 0, i32 1748}
!210 = !{!"branch_weights", i32 1748, i32 0}
!211 = !{!73, !51, i64 0}
!212 = !{!"VP", i32 0, i64 1748, i64 -7405368087501025645, i64 1748}
!213 = distinct !{!213, !88, !89}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!216 = distinct !{!216, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!217 = !{!"branch_weights", i32 159, i32 55777}
!218 = distinct !{!218, !88, !89}
!219 = distinct !{!219, !88, !89}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv: argument 0"}
!222 = distinct !{!222, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv: argument 0"}
!225 = distinct !{!225, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv"}
!226 = distinct !{!226, !88, !89}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!229 = distinct !{!229, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!232 = distinct !{!232, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!233 = !{!48, !48, i64 0}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!236 = distinct !{!236, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!239 = distinct !{!239, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!242 = distinct !{!242, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!245 = distinct !{!245, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv: argument 0"}
!248 = distinct !{!248, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv: argument 0"}
!251 = distinct !{!251, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv"}
!252 = distinct !{!252, !88, !89}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!255 = distinct !{!255, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!258 = distinct !{!258, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!261 = distinct !{!261, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi"}
!262 = distinct !{!262, !88, !89}
!263 = !{!"branch_weights", i32 1, i32 1748}
!264 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!267 = distinct !{!267, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!270 = distinct !{!270, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!273 = distinct !{!273, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!276 = distinct !{!276, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv: argument 0"}
!279 = distinct !{!279, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv: argument 0"}
!282 = distinct !{!282, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv"}
!283 = !{!"branch_weights", i32 0, i32 1753}
!284 = !{!"branch_weights", i32 5, i32 1748}
!285 = distinct !{!285, !88, !89}
