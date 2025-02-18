; ModuleID = 'XTokenStringAdapterAllocator.cpp'
source_filename = "XTokenStringAdapterAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XTokenStringAdapter" = type { %"class.xalanc_1_10::XStringBase", ptr }
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
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5clearEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtED2Ev = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE = linkonce_odr dso_local constant [67 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [89 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !62

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #2 align 2 !prof !63 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @_ZN11xalanc_1_1019XTokenStringAdapterC1ERKNS_6XTokenERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17, !prof !65

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8, !tbaa !58
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24), !prof !66
  store ptr %14, ptr %6, align 8, !tbaa !64
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %9, %1
  %18 = load ptr, ptr %6, align 8, !tbaa !64
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30, !prof !70

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !58
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !64
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !67
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !69
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !64
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %55, label %33, !prof !71

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %45, !prof !75

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !72
  %39 = load ptr, ptr %38, align 8, !tbaa !49, !noalias !72
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8, !noalias !72
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !noalias !72
  store ptr %42, ptr %34, align 8, !tbaa !64, !noalias !72
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %42, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !67, !noalias !72
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %42, i64 0, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !69, !noalias !72
  br label %45

45:                                               ; preds = %33, %37
  %46 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !72
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !67, !noalias !72
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %49, i64 0, i32 1
  %51 = load i16, ptr %50, align 8, !tbaa !77
  %52 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %49, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !80
  %54 = icmp ult i16 %51, %53
  br i1 %54, label %60, label %55, !prof !81

55:                                               ; preds = %45, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %56 = load ptr, ptr %5, align 8, !tbaa !58
  %57 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %58, ptr %2, align 2, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %59 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %59, ptr %4, align 8, !tbaa !76
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %60

60:                                               ; preds = %55, %45
  %61 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !64, !noalias !83
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72, !prof !86

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !83
  %66 = load ptr, ptr %65, align 8, !tbaa !49, !noalias !83
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !83
  %69 = call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 24), !noalias !83
  store ptr %69, ptr %61, align 8, !tbaa !64, !noalias !83
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !67, !noalias !83
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !69, !noalias !83
  br label %72

72:                                               ; preds = %60, %64
  %73 = load ptr, ptr %61, align 8, !tbaa !64, !noalias !83
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !67, !noalias !83
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  %77 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %76, i64 0, i32 1
  %78 = load i16, ptr %77, align 8, !tbaa !77
  %79 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %76, i64 0, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !80
  %81 = icmp eq i16 %78, %80
  br i1 %81, label %95, label %82, !prof !86

82:                                               ; preds = %72
  %83 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %76, i64 0, i32 1
  %84 = load i16, ptr %83, align 8, !tbaa !87
  %85 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %76, i64 0, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !89
  %87 = icmp eq i16 %84, %86
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %76, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !90
  %90 = zext i16 %84 to i64
  %91 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %89, i64 %90
  br i1 %87, label %92, label %95, !prof !91

92:                                               ; preds = %82
  %93 = load i16, ptr %91, align 4, !tbaa !92
  store i16 %93, ptr %85, align 2, !tbaa !89
  %94 = add i16 %78, 1
  store i16 %94, ptr %77, align 8, !tbaa !77
  br label %95

95:                                               ; preds = %82, %72, %92
  %96 = phi ptr [ null, %72 ], [ %91, %92 ], [ %91, %82 ]
  ret ptr %96
}

declare void @_ZN11xalanc_1_1019XTokenStringAdapterC1ERKNS_6XTokenERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16, !prof !86

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !95
  %10 = load ptr, ptr %9, align 8, !tbaa !49, !noalias !95
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !95
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !95
  store ptr %13, ptr %5, align 8, !tbaa !64, !noalias !95
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !67, !noalias !95
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !69, !noalias !95
  br label %16

16:                                               ; preds = %2, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !98
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !67, !noalias !95
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !89
  %23 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 1
  store i16 %22, ptr %23, align 8, !tbaa !87
  %24 = icmp eq ptr %17, null
  br i1 %24, label %25, label %33, !prof !86

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !99
  %27 = load ptr, ptr %26, align 8, !tbaa !49, !noalias !99
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !noalias !99
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 24), !noalias !99
  store ptr %30, ptr %5, align 8, !tbaa !64, !noalias !99
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %30, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !67, !noalias !99
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %30, i64 0, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !69, !noalias !99
  br label %33

33:                                               ; preds = %16, %25
  %34 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !98
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !67, !noalias !99
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 1
  %39 = load i16, ptr %38, align 8, !tbaa !77
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !80
  %42 = icmp ult i16 %39, %41
  br i1 %42, label %58, label %43, !prof !91

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %44 = icmp eq ptr %34, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = load ptr, ptr %4, align 8, !tbaa !58, !noalias !102
  %47 = load ptr, ptr %46, align 8, !tbaa !49, !noalias !102
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8, !noalias !102
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef 24), !noalias !102
  store ptr %50, ptr %5, align 8, !tbaa !64, !noalias !102
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %50, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !67, !noalias !102
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %50, i64 0, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !69, !noalias !102
  br label %53

53:                                               ; preds = %43, %45
  %54 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !102
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !67, !noalias !102
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  store ptr %57, ptr %3, align 8, !tbaa !76
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %58

58:                                               ; preds = %53, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !63 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1)
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17, !prof !65

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !58
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24), !prof !66
  store ptr %14, ptr %6, align 8, !tbaa !64
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %9, %2
  %18 = load ptr, ptr %6, align 8, !tbaa !64
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30, !prof !70

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !58
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !64
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !67
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !69
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !64
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %219, label %33, !prof !86

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !105
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %45, !prof !86

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !105
  %39 = load ptr, ptr %38, align 8, !tbaa !49, !noalias !105
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8, !noalias !105
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !noalias !105
  store ptr %42, ptr %34, align 8, !tbaa !64, !noalias !105
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %42, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !67, !noalias !105
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %42, i64 0, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !69, !noalias !105
  br label %45

45:                                               ; preds = %33, %37
  %46 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !98
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !67, !noalias !105
  %49 = icmp eq ptr %46, null
  br i1 %49, label %50, label %58, !prof !86

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !108
  %52 = load ptr, ptr %51, align 8, !tbaa !49, !noalias !108
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !108
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 24), !noalias !108
  store ptr %55, ptr %34, align 8, !tbaa !64, !noalias !108
  %56 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !67, !noalias !108
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %57, align 8, !tbaa !69, !noalias !108
  br label %58

58:                                               ; preds = %45, %50
  %59 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !108
  %60 = icmp eq ptr %48, %59
  br i1 %60, label %137, label %61, !prof !111

61:                                               ; preds = %58, %133
  %62 = phi ptr [ %135, %133 ], [ %48, %58 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %63, i64 0, i32 1
  %65 = load i16, ptr %64, align 8, !tbaa !77
  %66 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %63, i64 0, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !80
  %68 = icmp ult i16 %65, %67
  br i1 %68, label %69, label %137, !prof !91

69:                                               ; preds = %61
  %70 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %63, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !90
  %72 = icmp ule ptr %71, %1
  %73 = zext i16 %67 to i64
  %74 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %71, i64 %73
  %75 = icmp ugt ptr %74, %1
  %76 = select i1 %72, i1 %75, i1 false, !prof !91
  br i1 %76, label %77, label %133, !prof !91

77:                                               ; preds = %69
  %78 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %63, i64 0, i32 1
  %79 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %63, i64 0, i32 3
  %80 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %63, i64 0, i32 1
  %81 = load i16, ptr %80, align 8, !tbaa !87
  %82 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %63, i64 0, i32 2
  %83 = load i16, ptr %82, align 2, !tbaa !89
  %84 = icmp eq i16 %81, %83
  br i1 %84, label %89, label %85, !prof !91

85:                                               ; preds = %77
  %86 = zext i16 %81 to i64
  %87 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %71, i64 %86
  store i16 %83, ptr %87, align 4, !tbaa !92
  %88 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %87, i64 0, i32 1
  store i32 -2228259, ptr %88, align 4, !tbaa !112
  store i16 %81, ptr %82, align 2, !tbaa !89
  br label %89

89:                                               ; preds = %77, %85
  %90 = load ptr, ptr %1, align 8, !tbaa !49
  %91 = load ptr, ptr %90, align 8
  tail call void %91(ptr noundef nonnull align 8 dereferenceable(72) %1) #9, !prof !113
  %92 = load i16, ptr %80, align 8, !tbaa !87
  store i16 %92, ptr %1, align 4, !tbaa !92
  %93 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %93, align 4, !tbaa !112
  %94 = load ptr, ptr %79, align 8, !tbaa !90
  %95 = ptrtoint ptr %1 to i64
  %96 = ptrtoint ptr %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 72
  %99 = trunc i64 %98 to i16
  store i16 %99, ptr %82, align 2, !tbaa !89
  store i16 %99, ptr %80, align 8, !tbaa !87
  %100 = load i16, ptr %78, align 8, !tbaa !77
  %101 = add i16 %100, -1
  store i16 %101, ptr %78, align 8, !tbaa !77
  %102 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !114
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %112, !prof !86

104:                                              ; preds = %89
  %105 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !114
  %106 = load ptr, ptr %105, align 8, !tbaa !49, !noalias !114
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8, !noalias !114
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %105, i64 noundef 24), !noalias !114
  store ptr %109, ptr %34, align 8, !tbaa !64, !noalias !114
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %109, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !67, !noalias !114
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %109, i64 0, i32 1
  store ptr %109, ptr %111, align 8, !tbaa !69, !noalias !114
  br label %112

112:                                              ; preds = %89, %104
  %113 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !114
  %114 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !67, !noalias !114
  %116 = icmp eq ptr %62, %115
  br i1 %116, label %128, label %117, !prof !91

117:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %118 = load ptr, ptr %62, align 8, !tbaa !76
  store ptr %118, ptr %3, align 8, !tbaa !76
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %62, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !67
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %62, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !69
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %122, i64 0, i32 2
  store ptr %120, ptr %123, align 8, !tbaa !67
  %124 = load ptr, ptr %119, align 8, !tbaa !67
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %124, i64 0, i32 1
  store ptr %122, ptr %125, align 8, !tbaa !69
  store ptr null, ptr %121, align 8, !tbaa !69
  %126 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !117
  store ptr %127, ptr %119, align 8, !tbaa !67
  store ptr %62, ptr %126, align 8, !tbaa !117
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %128

128:                                              ; preds = %117, %112
  %129 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %130 = load i8, ptr %129, align 8, !tbaa !59, !range !118, !noundef !98
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132, !prof !91

132:                                              ; preds = %128
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %137

133:                                              ; preds = %69
  %134 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %62, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !67, !noalias !119
  %136 = icmp eq ptr %135, %59
  br i1 %136, label %137, label %61, !prof !86, !llvm.loop !122

137:                                              ; preds = %61, %133, %58, %128, %132
  %138 = phi ptr [ %62, %132 ], [ %62, %128 ], [ %48, %58 ], [ %135, %133 ], [ %62, %61 ]
  %139 = phi i1 [ false, %132 ], [ false, %128 ], [ true, %58 ], [ true, %133 ], [ true, %61 ]
  %140 = phi i8 [ 1, %132 ], [ 1, %128 ], [ 0, %58 ], [ 0, %133 ], [ 0, %61 ]
  %141 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !125
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %151, !prof !86

143:                                              ; preds = %137
  %144 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !125
  %145 = load ptr, ptr %144, align 8, !tbaa !49, !noalias !125
  %146 = getelementptr inbounds ptr, ptr %145, i64 2
  %147 = load ptr, ptr %146, align 8, !noalias !125
  %148 = call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(8) %144, i64 noundef 24), !noalias !125
  store ptr %148, ptr %34, align 8, !tbaa !64, !noalias !125
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %148, i64 0, i32 2
  store ptr %148, ptr %149, align 8, !tbaa !67, !noalias !125
  %150 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %148, i64 0, i32 1
  store ptr %148, ptr %150, align 8, !tbaa !69, !noalias !125
  br label %151

151:                                              ; preds = %137, %143
  %152 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !98
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %162, !prof !86

154:                                              ; preds = %151
  %155 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !130
  %156 = load ptr, ptr %155, align 8, !tbaa !49, !noalias !130
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8, !noalias !130
  %159 = call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %155, i64 noundef 24), !noalias !130
  store ptr %159, ptr %34, align 8, !tbaa !64, !noalias !130
  %160 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %159, i64 0, i32 2
  store ptr %159, ptr %160, align 8, !tbaa !67, !noalias !130
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %159, i64 0, i32 1
  store ptr %159, ptr %161, align 8, !tbaa !69, !noalias !130
  br label %162

162:                                              ; preds = %151, %154
  %163 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !130
  %164 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !67, !noalias !130
  br i1 %139, label %166, label %215

166:                                              ; preds = %162, %212
  %167 = phi ptr [ %171, %212 ], [ %152, %162 ]
  %168 = icmp eq ptr %167, %165
  br i1 %168, label %215, label %169, !prof !91

169:                                              ; preds = %166
  %170 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %167, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !69, !noalias !98
  %172 = load ptr, ptr %171, align 8, !tbaa !76
  %173 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %172, i64 0, i32 2
  %174 = load i16, ptr %173, align 2, !tbaa !80
  %175 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %172, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !90
  %177 = icmp ule ptr %176, %1
  %178 = zext i16 %174 to i64
  %179 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %176, i64 %178
  %180 = icmp ugt ptr %179, %1
  %181 = select i1 %177, i1 %180, i1 false
  br i1 %181, label %182, label %212

182:                                              ; preds = %169
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %172, ptr noundef %1)
  %183 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !135
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !135
  %187 = load ptr, ptr %186, align 8, !tbaa !49, !noalias !135
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8, !noalias !135
  %190 = call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %186, i64 noundef 24), !noalias !135
  store ptr %190, ptr %34, align 8, !tbaa !64, !noalias !135
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %190, i64 0, i32 2
  store ptr %190, ptr %191, align 8, !tbaa !67, !noalias !135
  %192 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %190, i64 0, i32 1
  store ptr %190, ptr %192, align 8, !tbaa !69, !noalias !135
  br label %193

193:                                              ; preds = %182, %185
  %194 = load ptr, ptr %34, align 8, !tbaa !64, !noalias !135
  %195 = icmp eq ptr %167, %194
  br i1 %195, label %207, label %196

196:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %197 = load ptr, ptr %138, align 8, !tbaa !76
  store ptr %197, ptr %4, align 8, !tbaa !76
  %198 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %138, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !67
  %200 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %138, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !69
  %202 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %201, i64 0, i32 2
  store ptr %199, ptr %202, align 8, !tbaa !67
  %203 = load ptr, ptr %198, align 8, !tbaa !67
  %204 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %203, i64 0, i32 1
  store ptr %201, ptr %204, align 8, !tbaa !69
  store ptr null, ptr %200, align 8, !tbaa !69
  %205 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !117
  store ptr %206, ptr %198, align 8, !tbaa !67
  store ptr %138, ptr %205, align 8, !tbaa !117
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %207

207:                                              ; preds = %196, %193
  %208 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %209 = load i8, ptr %208, align 8, !tbaa !59, !range !118, !noundef !98
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %215

212:                                              ; preds = %169
  %213 = load ptr, ptr %138, align 8, !tbaa !76
  %214 = icmp eq ptr %172, %213
  br i1 %214, label %215, label %166, !llvm.loop !140

215:                                              ; preds = %166, %212, %162, %207, %211
  %216 = phi i8 [ 1, %211 ], [ 1, %207 ], [ %140, %162 ], [ %140, %212 ], [ %140, %166 ]
  %217 = and i8 %216, 1
  %218 = icmp ne i8 %217, 0
  br label %219

219:                                              ; preds = %30, %215
  %220 = phi i1 [ %218, %215 ], [ false, %30 ]
  ret i1 %220
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 align 2 !prof !141 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !146

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !143
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !143
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !143
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !143
  store ptr %11, ptr %3, align 8, !tbaa !64, !noalias !143
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !67, !noalias !143
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !69, !noalias !143
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !98
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !67, !noalias !143
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !146

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !147
  %21 = load ptr, ptr %20, align 8, !tbaa !49, !noalias !147
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !147
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !147
  store ptr %24, ptr %3, align 8, !tbaa !64, !noalias !147
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !67, !noalias !147
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !69, !noalias !147
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !147
  %29 = load ptr, ptr %2, align 8, !tbaa !58
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !150

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !111

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %33) #9
  %36 = load ptr, ptr %29, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !151
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !67, !noalias !152
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !62, !llvm.loop !155

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !58
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24)
  store ptr %14, ptr %6, align 8, !tbaa !64
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr %6, align 8, !tbaa !64
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !58
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !64
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !67
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !69
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !64
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %49
  %34 = phi ptr [ %51, %49 ], [ %20, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 1
  %37 = load i16, ptr %36, align 8, !tbaa !77
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !80
  %40 = icmp ult i16 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = icmp ule ptr %43, %1
  %45 = zext i16 %39 to i64
  %46 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %43, i64 %45
  %47 = icmp ugt ptr %46, %1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %98, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = icmp eq ptr %51, %31
  br i1 %52, label %53, label %33, !llvm.loop !157

53:                                               ; preds = %33, %49, %30
  %54 = phi ptr [ %20, %30 ], [ %34, %33 ], [ %51, %49 ]
  %55 = icmp eq ptr %31, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !158
  %58 = load ptr, ptr %57, align 8, !tbaa !49, !noalias !158
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !noalias !158
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 24), !noalias !158
  store ptr %61, ptr %6, align 8, !tbaa !64, !noalias !158
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %61, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !67, !noalias !158
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %61, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !69, !noalias !158
  br label %64

64:                                               ; preds = %53, %56
  %65 = load ptr, ptr %6, align 8, !tbaa !64, !noalias !98
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !161
  %69 = load ptr, ptr %68, align 8, !tbaa !49, !noalias !161
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !161
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 24), !noalias !161
  store ptr %72, ptr %6, align 8, !tbaa !64, !noalias !161
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !67, !noalias !161
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !69, !noalias !161
  br label %75

75:                                               ; preds = %64, %67
  %76 = load ptr, ptr %6, align 8, !tbaa !64, !noalias !161
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !67, !noalias !161
  br label %79

79:                                               ; preds = %95, %75
  %80 = phi ptr [ %65, %75 ], [ %84, %95 ]
  %81 = icmp eq ptr %80, %78
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  %85 = load ptr, ptr %84, align 8, !tbaa !76
  %86 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !80
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !90
  %90 = icmp ule ptr %89, %1
  %91 = zext i16 %87 to i64
  %92 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %89, i64 %91
  %93 = icmp ugt ptr %92, %1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load ptr, ptr %54, align 8, !tbaa !76
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %79, !llvm.loop !164

98:                                               ; preds = %41, %95, %79, %82, %2
  %99 = phi i1 [ false, %2 ], [ true, %82 ], [ false, %79 ], [ false, %95 ], [ true, %41 ]
  ret i1 %99
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !156 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64, !noalias !165
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !165
  %13 = load ptr, ptr %12, align 8, !tbaa !49, !noalias !165
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !165
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !165
  store ptr %16, ptr %8, align 8, !tbaa !64, !noalias !165
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !67, !noalias !165
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !69, !noalias !165
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !64, !noalias !165
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69, !noalias !168
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !80
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %30 = load ptr, ptr %5, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !76
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !64, !noalias !171
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !171
  %40 = load ptr, ptr %39, align 8, !tbaa !49, !noalias !171
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !171
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !171
  store ptr %43, ptr %35, align 8, !tbaa !64, !noalias !171
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !67, !noalias !171
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !69, !noalias !171
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !64, !noalias !171
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !69, !noalias !174
  %50 = load ptr, ptr %49, align 8, !tbaa !76
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !77
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !80
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !87
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !89
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !90
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %63, i64 %64
  br i1 %61, label %66, label %69

66:                                               ; preds = %56
  %67 = load i16, ptr %65, align 4, !tbaa !92
  store i16 %67, ptr %59, align 2, !tbaa !89
  %68 = add i16 %52, 1
  store i16 %68, ptr %51, align 8, !tbaa !77
  br label %69

69:                                               ; preds = %56, %46, %66
  %70 = phi ptr [ null, %46 ], [ %65, %66 ], [ %65, %56 ]
  ret ptr %70
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !177
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58, !noalias !177
  %9 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !177
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !177
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !177
  store ptr %12, ptr %3, align 8, !tbaa !64, !noalias !177
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !67, !noalias !177
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !69, !noalias !177
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !177
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69, !noalias !180
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !89
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64, !noalias !183
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !183
  %9 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !183
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !183
  store ptr %12, ptr %4, align 8, !tbaa !64, !noalias !183
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !67, !noalias !183
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !69, !noalias !183
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !64, !noalias !98
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !67, !noalias !183
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !186
  %22 = load ptr, ptr %21, align 8, !tbaa !49, !noalias !186
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !186
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !186
  store ptr %25, ptr %4, align 8, !tbaa !64, !noalias !186
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !67, !noalias !186
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !69, !noalias !186
  br label %28

28:                                               ; preds = %15, %20
  %29 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %47, %28
  %31 = phi ptr [ %4, %28 ], [ %35, %47 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !76
  %33 = icmp ne ptr %32, %18
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !80
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  %42 = icmp ule ptr %41, %1
  %43 = zext i16 %39 to i64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %41, i64 %43
  %45 = icmp ugt ptr %44, %1
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, ptr %29, align 4, !tbaa !112
  %49 = icmp ne i32 %48, -2228259
  %50 = load i16, ptr %1, align 4
  %51 = icmp ugt i16 %50, %39
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %30, !llvm.loop !189

53:                                               ; preds = %34, %47, %30
  ret i1 %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !156 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !111

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67, !noalias !190
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !193
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !111

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !193
  %14 = load ptr, ptr %13, align 8, !tbaa !49, !noalias !193
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !193
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !64, !noalias !193
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !67, !noalias !193
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !69, !noalias !193
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !193
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !62

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !67, !noalias !196
  %27 = load ptr, ptr %0, align 8, !tbaa !58
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !199

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !200

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = load ptr, ptr %0, align 8, !tbaa !58
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !151

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !64
  %46 = load ptr, ptr %0, align 8, !tbaa !58
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !151

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
  tail call void @__clang_call_terminate(ptr %59) #10
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !65

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !66
  store ptr %10, ptr %2, align 8, !tbaa !64
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !69
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !64
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !70

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !64
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !67
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !69
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !64
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !201
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !201
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !201
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !201
  store ptr %11, ptr %3, align 8, !tbaa !64, !noalias !201
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !67, !noalias !201
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !69, !noalias !201
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !201
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !117
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !58
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !117
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %31, ptr %29, align 8, !tbaa !76
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  store ptr %34, ptr %32, align 8, !tbaa !76
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !76
  %36 = load ptr, ptr %33, align 8, !tbaa !69
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !67
  store ptr %29, ptr %33, align 8, !tbaa !69
  store ptr %30, ptr %16, align 8, !tbaa !117
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !204
  %9 = load i16, ptr %3, align 2, !tbaa !82
  store ptr %2, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i16 0, ptr %10, align 8, !tbaa !77
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !80
  %12 = zext i16 %9 to i64
  %13 = mul nuw nsw i64 %12, 72
  %14 = load ptr, ptr %2, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
          to label %18 unwind label %34, !prof !204

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !90
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 1
  store i16 0, ptr %20, align 8, !tbaa !87
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 2
  store i16 0, ptr %21, align 2, !tbaa !89
  %22 = load i16, ptr %11, align 2, !tbaa !80
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24, !prof !205

24:                                               ; preds = %18
  %25 = zext i16 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %17, i64 %27
  %29 = add nuw nsw i64 %27, 1
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %28, align 4, !tbaa !92
  %31 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %28, i64 0, i32 1
  store i32 -2228259, ptr %31, align 4, !tbaa !112
  %32 = icmp eq i64 %29, %25
  br i1 %32, label %33, label %26, !prof !206, !llvm.loop !207

33:                                               ; preds = %26, %18
  store ptr %8, ptr %1, align 8, !tbaa !76
  ret ptr %8

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %0, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %42 unwind label %39

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #10
  unreachable

42:                                               ; preds = %34
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !208
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !111

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !208
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !208
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !208
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !208
  store ptr %11, ptr %3, align 8, !tbaa !64, !noalias !208
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !67, !noalias !208
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !69, !noalias !208
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !64, !noalias !208
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !67, !noalias !208
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !62

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  br label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !58
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24), !prof !204
  store ptr %29, ptr %18, align 8, !tbaa !117
  br label %30

30:                                               ; preds = %21, %24
  %31 = phi ptr [ %19, %21 ], [ %29, %24 ]
  %32 = phi ptr [ %23, %21 ], [ null, %24 ]
  %33 = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %33, ptr %31, align 8, !tbaa !76
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  store ptr %36, ptr %34, align 8, !tbaa !76
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %31, i64 0, i32 2
  store ptr %17, ptr %37, align 8, !tbaa !76
  %38 = load ptr, ptr %35, align 8, !tbaa !69
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %38, i64 0, i32 2
  store ptr %31, ptr %39, align 8, !tbaa !67
  store ptr %31, ptr %35, align 8, !tbaa !69
  store ptr %32, ptr %18, align 8, !tbaa !117
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !211
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !211
  %7 = load ptr, ptr %6, align 8, !tbaa !49, !noalias !211
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !211
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !211
  store ptr %10, ptr %2, align 8, !tbaa !64, !noalias !211
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !67, !noalias !211
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !69, !noalias !211
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !211
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67, !noalias !211
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !67
  %22 = load ptr, ptr %17, align 8, !tbaa !67
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %22, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !69
  store ptr null, ptr %19, align 8, !tbaa !69
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  store ptr %25, ptr %17, align 8, !tbaa !67
  store ptr %16, ptr %24, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !89
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %14, label %8, !prof !91

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = zext i16 %4 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %10, i64 %11
  store i16 %6, ptr %12, align 4, !tbaa !92
  %13 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %12, i64 0, i32 1
  store i32 -2228259, ptr %13, align 4, !tbaa !112
  store i16 %4, ptr %5, align 2, !tbaa !89
  br label %14

14:                                               ; preds = %8, %2
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %1) #9, !prof !214
  %17 = load i16, ptr %3, align 8, !tbaa !87
  store i16 %17, ptr %1, align 4, !tbaa !92
  %18 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %18, align 4, !tbaa !112
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 72
  %25 = trunc i64 %24 to i16
  store i16 %25, ptr %5, align 2, !tbaa !89
  store i16 %25, ptr %3, align 8, !tbaa !87
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %27 = load i16, ptr %26, align 8, !tbaa !77
  %28 = add i16 %27, -1
  store i16 %28, ptr %26, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #5 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !215
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !215
  %10 = load ptr, ptr %9, align 8, !tbaa !49, !noalias !215
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !215
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !215
  store ptr %13, ptr %5, align 8, !tbaa !64, !noalias !215
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !67, !noalias !215
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !69, !noalias !215
  br label %16

16:                                               ; preds = %4, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !98
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !67, !noalias !215
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !218
  %30 = load ptr, ptr %29, align 8, !tbaa !49, !noalias !218
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !218
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 24), !noalias !218
  store ptr %33, ptr %5, align 8, !tbaa !64, !noalias !218
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !67, !noalias !218
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !69, !noalias !218
  br label %36

36:                                               ; preds = %24, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !64, !noalias !218
  %38 = icmp eq ptr %26, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %26, align 8, !tbaa !76
  %41 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 8, !tbaa !77
  %43 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !80
  %45 = icmp ult i16 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %39
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %47

47:                                               ; preds = %16, %46, %39, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !221
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !146

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !221
  %7 = load ptr, ptr %6, align 8, !tbaa !49, !noalias !221
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !221
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !221
  store ptr %10, ptr %2, align 8, !tbaa !64, !noalias !221
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !67, !noalias !221
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !69, !noalias !221
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !221
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67, !noalias !221
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !224
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !227

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !224
  %23 = load ptr, ptr %22, align 8, !tbaa !49, !noalias !224
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !224
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !224
  store ptr %26, ptr %2, align 8, !tbaa !64, !noalias !224
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !67, !noalias !224
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !69, !noalias !224
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !64, !noalias !224
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !228

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !67
  %39 = load ptr, ptr %34, align 8, !tbaa !67
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !69
  store ptr null, ptr %36, align 8, !tbaa !69
  %41 = load ptr, ptr %33, align 8, !tbaa !117
  store ptr %41, ptr %34, align 8, !tbaa !67
  store ptr %18, ptr %33, align 8, !tbaa !117
  br label %17, !llvm.loop !229

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !80
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !62
  br i1 %8, label %9, label %11, !prof !111

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %24

11:                                               ; preds = %42, %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !111

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !230
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %13)
          to label %23 unwind label %20, !prof !151

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #10
  unreachable

23:                                               ; preds = %11, %15
  ret void

24:                                               ; preds = %9, %42
  %25 = phi i64 [ 0, %9 ], [ %44, %42 ]
  %26 = phi i16 [ %4, %9 ], [ %45, %42 ]
  %27 = phi i16 [ 0, %9 ], [ %43, %42 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !90
  %29 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %28, i64 %25
  %30 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenStringAdapter>::NextBlock", ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !112
  %32 = icmp ne i32 %31, -2228259
  %33 = load i16, ptr %29, align 4
  %34 = icmp ugt i16 %33, %26
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load ptr, ptr %10, align 8, !tbaa !90
  %38 = getelementptr inbounds %"class.xalanc_1_10::XTokenStringAdapter", ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(72) %38) #9
  %41 = add i16 %27, 1
  br label %42

42:                                               ; preds = %36, %24
  %43 = phi i16 [ %41, %36 ], [ %27, %24 ]
  %44 = add nuw nsw i64 %25, 1
  %45 = load i16, ptr %2, align 2, !tbaa !80
  %46 = zext i16 %45 to i64
  %47 = icmp ult i64 %44, %46
  %48 = load i16, ptr %3, align 8
  %49 = icmp ult i16 %43, %48
  %50 = select i1 %47, i1 %49, i1 false, !prof !62
  br i1 %50, label %24, label %11, !prof !111, !llvm.loop !231
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv, i64 103035}
!39 = !{ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE, ptr @_ZN11xalanc_1_1019XTokenStringAdapterC1ERKNS_6XTokenERN11xercesc_2_713MemoryManagerE, i64 103035}
!40 = !{ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE16commitAllocationEPS1_, i64 103035}
!41 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE10push_frontERKS4_, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEE13destroyObjectEPS1_, i64 103035}
!44 = !{ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 4}
!45 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtED2Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5clearEv, i64 5}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenStringAdapterENS_18ReusableArenaBlockIS1_tEEEE", !54, i64 8, !56, i64 16}
!54 = !{!"short", !55, i64 0}
!55 = !{!"omnipotent char", !51, i64 0}
!56 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"any pointer", !55, i64 0}
!58 = !{!56, !57, i64 0}
!59 = !{!60, !61, i64 40}
!60 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenStringAdapterEEE", !53, i64 0, !61, i64 40}
!61 = !{!"bool", !55, i64 0}
!62 = !{!"branch_weights", i32 1, i32 0}
!63 = !{!"function_entry_count", i64 103035}
!64 = !{!56, !57, i64 8}
!65 = !{!"branch_weights", i32 1, i32 206069}
!66 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!67 = !{!68, !57, i64 16}
!68 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4NodeE", !57, i64 0, !57, i64 8, !57, i64 16}
!69 = !{!68, !57, i64 8}
!70 = !{!"branch_weights", i32 0, i32 206070}
!71 = !{!"branch_weights", i32 1, i32 103034}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!74 = distinct !{!74, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!75 = !{!"branch_weights", i32 0, i32 103034}
!76 = !{!57, !57, i64 0}
!77 = !{!78, !54, i64 8}
!78 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_19XTokenStringAdapterEtEE", !79, i64 0, !54, i64 8, !54, i64 10, !57, i64 16}
!79 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_19XTokenStringAdapterEEE", !57, i64 0}
!80 = !{!78, !54, i64 10}
!81 = !{!"branch_weights", i32 103034, i32 0}
!82 = !{!54, !54, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!85 = distinct !{!85, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!86 = !{!"branch_weights", i32 0, i32 103035}
!87 = !{!88, !54, i64 24}
!88 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtEE", !78, i64 0, !54, i64 24, !54, i64 26}
!89 = !{!88, !54, i64 26}
!90 = !{!78, !57, i64 16}
!91 = !{!"branch_weights", i32 103035, i32 0}
!92 = !{!93, !54, i64 0}
!93 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_19XTokenStringAdapterEtE9NextBlockE", !54, i64 0, !94, i64 4}
!94 = !{!"int", !55, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!97 = distinct !{!97, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!98 = !{}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!104 = distinct !{!104, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!107 = distinct !{!107, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!110 = distinct !{!110, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!111 = !{!"branch_weights", i32 0, i32 1}
!112 = !{!93, !94, i64 4}
!113 = !{!"VP", i32 0, i64 103035, i64 2362206933932609567, i64 103035}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!116 = distinct !{!116, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!117 = !{!56, !57, i64 16}
!118 = !{i8 0, i8 2}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!121 = distinct !{!121, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!122 = distinct !{!122, !123, !124}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!127 = distinct !{!127, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!128 = distinct !{!128, !129, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv: argument 0"}
!129 = distinct !{!129, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv"}
!130 = !{!131, !133}
!131 = distinct !{!131, !132, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!132 = distinct !{!132, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4rendEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4rendEv"}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!138 = distinct !{!138, !139, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv: argument 0"}
!139 = distinct !{!139, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv"}
!140 = distinct !{!140, !123, !124}
!141 = !{!"function_entry_count", i64 4}
!142 = !{!"function_entry_count", i64 5}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!145 = distinct !{!145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!146 = !{!"branch_weights", i32 0, i32 5}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!149 = distinct !{!149, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!150 = !{!"branch_weights", i32 4, i32 1}
!151 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!154 = distinct !{!154, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!155 = distinct !{!155, !123, !124}
!156 = !{!"function_entry_count", i64 0}
!157 = distinct !{!157, !123, !124}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv: argument 0"}
!160 = distinct !{!160, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4rendEv: argument 0"}
!163 = distinct !{!163, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4rendEv"}
!164 = distinct !{!164, !123, !124}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!167 = distinct !{!167, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!170 = distinct !{!170, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!173 = distinct !{!173, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!176 = distinct !{!176, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!179 = distinct !{!179, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!182 = distinct !{!182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4rendEv: argument 0"}
!185 = distinct !{!185, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE4rendEv"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv: argument 0"}
!188 = distinct !{!188, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE6rbeginEv"}
!189 = distinct !{!189, !123, !124}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!192 = distinct !{!192, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!195 = distinct !{!195, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!198 = distinct !{!198, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEi"}
!199 = distinct !{!199, !123, !124}
!200 = !{!"branch_weights", i32 1, i32 1}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!203 = distinct !{!203, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!204 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!205 = !{!"branch_weights", i32 1, i32 127}
!206 = !{!"branch_weights", i32 127, i32 1153}
!207 = distinct !{!207, !123, !124}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!213 = distinct !{!213, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!214 = !{!"VP", i32 0, i64 0, i64 2362206933932609567, i64 0}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!217 = distinct !{!217, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!220 = distinct !{!220, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv: argument 0"}
!223 = distinct !{!223, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE5beginEv"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv: argument 0"}
!226 = distinct !{!226, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenStringAdapterEtEEE3endEv"}
!227 = !{!"branch_weights", i32 0, i32 6}
!228 = !{!"branch_weights", i32 5, i32 1}
!229 = distinct !{!229, !123, !124}
!230 = !{!79, !57, i64 0}
!231 = distinct !{!231, !123, !124}
