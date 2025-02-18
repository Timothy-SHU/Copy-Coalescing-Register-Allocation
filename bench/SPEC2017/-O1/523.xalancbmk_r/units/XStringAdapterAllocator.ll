; ModuleID = 'XStringAdapterAllocator.cpp'
source_filename = "XStringAdapterAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XStringAdapter" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XObjectPtr" }
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
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5clearEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtED2Ev = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE = linkonce_odr dso_local constant [62 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [84 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1023XStringAdapterAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XStringAdapterAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !41 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !55

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #9
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XStringAdapterAllocator12createStringERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !56 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @_ZN11xalanc_1_1014XStringAdapterC1ERKNS_10XObjectPtrERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 !prof !56 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !58
  %13 = load ptr, ptr %12, align 8, !tbaa !42, !noalias !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !58
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !58
  store ptr %16, ptr %8, align 8, !tbaa !57, !noalias !58
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !61, !noalias !58
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !63, !noalias !58
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !58
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !61, !noalias !58
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !68
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %30 = load ptr, ptr %5, align 8, !tbaa !51
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !64
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !57, !noalias !70
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !70
  %40 = load ptr, ptr %39, align 8, !tbaa !42, !noalias !70
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !70
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !70
  store ptr %43, ptr %35, align 8, !tbaa !57, !noalias !70
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !61, !noalias !70
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !63, !noalias !70
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !57, !noalias !70
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !61, !noalias !70
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !65
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !68
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !73
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !75
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %63, i64 %64
  br i1 %61, label %66, label %69

66:                                               ; preds = %56
  %67 = load i16, ptr %65, align 4, !tbaa !77
  store i16 %67, ptr %59, align 2, !tbaa !75
  %68 = add i16 %52, 1
  store i16 %68, ptr %51, align 8, !tbaa !65
  br label %69

69:                                               ; preds = %56, %46, %66
  %70 = phi ptr [ null, %46 ], [ %65, %66 ], [ %65, %56 ]
  ret ptr %70
}

declare void @_ZN11xalanc_1_1014XStringAdapterC1ERKNS_10XObjectPtrERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !51, !noalias !80
  %10 = load ptr, ptr %9, align 8, !tbaa !42, !noalias !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !80
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !80
  store ptr %13, ptr %5, align 8, !tbaa !57, !noalias !80
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !61, !noalias !80
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !63, !noalias !80
  br label %16

16:                                               ; preds = %2, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !83
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61, !noalias !80
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !75
  %23 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 1
  store i16 %22, ptr %23, align 8, !tbaa !73
  %24 = icmp eq ptr %17, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8, !tbaa !51, !noalias !84
  %27 = load ptr, ptr %26, align 8, !tbaa !42, !noalias !84
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !noalias !84
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 24), !noalias !84
  store ptr %30, ptr %5, align 8, !tbaa !57, !noalias !84
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %30, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !61, !noalias !84
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %30, i64 0, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !63, !noalias !84
  br label %33

33:                                               ; preds = %16, %25
  %34 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !83
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !61, !noalias !84
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 1
  %39 = load i16, ptr %38, align 8, !tbaa !65
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !68
  %42 = icmp ult i16 %39, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %44 = icmp eq ptr %34, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = load ptr, ptr %4, align 8, !tbaa !51, !noalias !87
  %47 = load ptr, ptr %46, align 8, !tbaa !42, !noalias !87
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8, !noalias !87
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef 24), !noalias !87
  store ptr %50, ptr %5, align 8, !tbaa !57, !noalias !87
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %50, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !61, !noalias !87
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %50, i64 0, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !63, !noalias !87
  br label %53

53:                                               ; preds = %43, %45
  %54 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !87
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !61, !noalias !87
  %57 = load ptr, ptr %56, align 8, !tbaa !64
  store ptr %57, ptr %3, align 8, !tbaa !64
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %58

58:                                               ; preds = %53, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1023XStringAdapterAllocator7destroyEPNS_14XStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !56 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1)
  ret i1 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %169, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !90
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !90
  %13 = load ptr, ptr %12, align 8, !tbaa !42, !noalias !90
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !90
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !90
  store ptr %16, ptr %8, align 8, !tbaa !57, !noalias !90
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !61, !noalias !90
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !63, !noalias !90
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !83
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !61, !noalias !90
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !93
  %26 = load ptr, ptr %25, align 8, !tbaa !42, !noalias !93
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !93
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24), !noalias !93
  store ptr %29, ptr %8, align 8, !tbaa !57, !noalias !93
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !61, !noalias !93
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !63, !noalias !93
  br label %32

32:                                               ; preds = %19, %24
  %33 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !93
  %34 = icmp eq ptr %22, %33
  br i1 %34, label %87, label %35

35:                                               ; preds = %32, %83
  %36 = phi ptr [ %85, %83 ], [ %22, %32 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 1
  %39 = load i16, ptr %38, align 8, !tbaa !65
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !68
  %42 = icmp ult i16 %39, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %35
  %44 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = icmp ule ptr %45, %1
  %47 = zext i16 %41 to i64
  %48 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %45, i64 %47
  %49 = icmp ugt ptr %48, %1
  %50 = select i1 %46, i1 %49, i1 false
  br i1 %50, label %51, label %83

51:                                               ; preds = %43
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %37, ptr noundef %1)
  %52 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !96
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !96
  %56 = load ptr, ptr %55, align 8, !tbaa !42, !noalias !96
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8, !noalias !96
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %55, i64 noundef 24), !noalias !96
  store ptr %59, ptr %8, align 8, !tbaa !57, !noalias !96
  %60 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %59, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !61, !noalias !96
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %59, i64 0, i32 1
  store ptr %59, ptr %61, align 8, !tbaa !63, !noalias !96
  br label %62

62:                                               ; preds = %51, %54
  %63 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !96
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !61, !noalias !96
  %66 = icmp eq ptr %36, %65
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %68 = load ptr, ptr %36, align 8, !tbaa !64
  store ptr %68, ptr %3, align 8, !tbaa !64
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %36, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %36, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %72, i64 0, i32 2
  store ptr %70, ptr %73, align 8, !tbaa !61
  %74 = load ptr, ptr %69, align 8, !tbaa !61
  %75 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %74, i64 0, i32 1
  store ptr %72, ptr %75, align 8, !tbaa !63
  store ptr null, ptr %71, align 8, !tbaa !63
  %76 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !99
  store ptr %77, ptr %69, align 8, !tbaa !61
  store ptr %36, ptr %76, align 8, !tbaa !99
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %78

78:                                               ; preds = %67, %62
  %79 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %80 = load i8, ptr %79, align 8, !tbaa !52, !range !100, !noundef !83
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %87

83:                                               ; preds = %43
  %84 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %36, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !61, !noalias !101
  %86 = icmp eq ptr %85, %33
  br i1 %86, label %87, label %35, !llvm.loop !104

87:                                               ; preds = %35, %83, %32, %78, %82
  %88 = phi ptr [ %36, %82 ], [ %36, %78 ], [ %22, %32 ], [ %85, %83 ], [ %36, %35 ]
  %89 = phi i1 [ false, %82 ], [ false, %78 ], [ true, %32 ], [ true, %83 ], [ true, %35 ]
  %90 = phi i8 [ 1, %82 ], [ 1, %78 ], [ 0, %32 ], [ 0, %83 ], [ 0, %35 ]
  %91 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !107
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !107
  %95 = load ptr, ptr %94, align 8, !tbaa !42, !noalias !107
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8, !noalias !107
  %98 = call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %94, i64 noundef 24), !noalias !107
  store ptr %98, ptr %8, align 8, !tbaa !57, !noalias !107
  %99 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %98, i64 0, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !61, !noalias !107
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %98, i64 0, i32 1
  store ptr %98, ptr %100, align 8, !tbaa !63, !noalias !107
  br label %101

101:                                              ; preds = %87, %93
  %102 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !83
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !112
  %106 = load ptr, ptr %105, align 8, !tbaa !42, !noalias !112
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8, !noalias !112
  %109 = call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %105, i64 noundef 24), !noalias !112
  store ptr %109, ptr %8, align 8, !tbaa !57, !noalias !112
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %109, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !61, !noalias !112
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %109, i64 0, i32 1
  store ptr %109, ptr %111, align 8, !tbaa !63, !noalias !112
  br label %112

112:                                              ; preds = %101, %104
  %113 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !112
  %114 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !61, !noalias !112
  br i1 %89, label %116, label %165

116:                                              ; preds = %112, %162
  %117 = phi ptr [ %121, %162 ], [ %102, %112 ]
  %118 = icmp eq ptr %117, %115
  br i1 %118, label %165, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %117, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !63, !noalias !83
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  %123 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %122, i64 0, i32 2
  %124 = load i16, ptr %123, align 2, !tbaa !68
  %125 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %122, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !76
  %127 = icmp ule ptr %126, %1
  %128 = zext i16 %124 to i64
  %129 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %126, i64 %128
  %130 = icmp ugt ptr %129, %1
  %131 = select i1 %127, i1 %130, i1 false
  br i1 %131, label %132, label %162

132:                                              ; preds = %119
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %122, ptr noundef %1)
  %133 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !117
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !117
  %137 = load ptr, ptr %136, align 8, !tbaa !42, !noalias !117
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8, !noalias !117
  %140 = call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %136, i64 noundef 24), !noalias !117
  store ptr %140, ptr %8, align 8, !tbaa !57, !noalias !117
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %140, i64 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !61, !noalias !117
  %142 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %140, i64 0, i32 1
  store ptr %140, ptr %142, align 8, !tbaa !63, !noalias !117
  br label %143

143:                                              ; preds = %132, %135
  %144 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !117
  %145 = icmp eq ptr %117, %144
  br i1 %145, label %157, label %146

146:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %147 = load ptr, ptr %88, align 8, !tbaa !64
  store ptr %147, ptr %4, align 8, !tbaa !64
  %148 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %88, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !61
  %150 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %88, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !63
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %151, i64 0, i32 2
  store ptr %149, ptr %152, align 8, !tbaa !61
  %153 = load ptr, ptr %148, align 8, !tbaa !61
  %154 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %153, i64 0, i32 1
  store ptr %151, ptr %154, align 8, !tbaa !63
  store ptr null, ptr %150, align 8, !tbaa !63
  %155 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !99
  store ptr %156, ptr %148, align 8, !tbaa !61
  store ptr %88, ptr %155, align 8, !tbaa !99
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %157

157:                                              ; preds = %146, %143
  %158 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %159 = load i8, ptr %158, align 8, !tbaa !52, !range !100, !noundef !83
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %165

162:                                              ; preds = %119
  %163 = load ptr, ptr %88, align 8, !tbaa !64
  %164 = icmp eq ptr %122, %163
  br i1 %164, label %165, label %116, !llvm.loop !122

165:                                              ; preds = %116, %162, %112, %157, %161
  %166 = phi i8 [ 1, %161 ], [ 1, %157 ], [ %90, %112 ], [ %90, %162 ], [ %90, %116 ]
  %167 = and i8 %166, 1
  %168 = icmp ne i8 %167, 0
  br label %169

169:                                              ; preds = %2, %165
  %170 = phi i1 [ %168, %165 ], [ false, %2 ]
  ret i1 %170
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !123 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !124 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !125
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !128

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !51, !noalias !125
  %8 = load ptr, ptr %7, align 8, !tbaa !42, !noalias !125
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !125
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !129, !noalias !125
  store ptr %11, ptr %3, align 8, !tbaa !57, !noalias !125
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61, !noalias !125
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63, !noalias !125
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !83
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61, !noalias !125
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !130

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !51, !noalias !131
  %21 = load ptr, ptr %20, align 8, !tbaa !42, !noalias !131
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !131
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !131
  store ptr %24, ptr %3, align 8, !tbaa !57, !noalias !131
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !61, !noalias !131
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !63, !noalias !131
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !131
  %29 = load ptr, ptr %2, align 8, !tbaa !51
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !55

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %33) #8
  %36 = load ptr, ptr %29, align 8, !tbaa !42
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !61, !noalias !134
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !55, !llvm.loop !137

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !51
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24)
  store ptr %14, ptr %6, align 8, !tbaa !57
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !61
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr %6, align 8, !tbaa !57
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !51
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !57
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !57
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %49
  %34 = phi ptr [ %51, %49 ], [ %20, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 1
  %37 = load i16, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !68
  %40 = icmp ult i16 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = icmp ule ptr %43, %1
  %45 = zext i16 %39 to i64
  %46 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %43, i64 %45
  %47 = icmp ugt ptr %46, %1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %98, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = icmp eq ptr %51, %31
  br i1 %52, label %53, label %33, !llvm.loop !138

53:                                               ; preds = %33, %49, %30
  %54 = phi ptr [ %20, %30 ], [ %34, %33 ], [ %51, %49 ]
  %55 = icmp eq ptr %31, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !51, !noalias !139
  %58 = load ptr, ptr %57, align 8, !tbaa !42, !noalias !139
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !noalias !139
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 24), !noalias !139
  store ptr %61, ptr %6, align 8, !tbaa !57, !noalias !139
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %61, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !61, !noalias !139
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %61, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !63, !noalias !139
  br label %64

64:                                               ; preds = %53, %56
  %65 = load ptr, ptr %6, align 8, !tbaa !57, !noalias !83
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 8, !tbaa !51, !noalias !142
  %69 = load ptr, ptr %68, align 8, !tbaa !42, !noalias !142
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !142
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 24), !noalias !142
  store ptr %72, ptr %6, align 8, !tbaa !57, !noalias !142
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !61, !noalias !142
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !63, !noalias !142
  br label %75

75:                                               ; preds = %64, %67
  %76 = load ptr, ptr %6, align 8, !tbaa !57, !noalias !142
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !61, !noalias !142
  br label %79

79:                                               ; preds = %95, %75
  %80 = phi ptr [ %65, %75 ], [ %84, %95 ]
  %81 = icmp eq ptr %80, %78
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !63
  %85 = load ptr, ptr %84, align 8, !tbaa !64
  %86 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !68
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  %90 = icmp ule ptr %89, %1
  %91 = zext i16 %87 to i64
  %92 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %89, i64 %91
  %93 = icmp ugt ptr %92, %1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load ptr, ptr %54, align 8, !tbaa !64
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %79, !llvm.loop !145

98:                                               ; preds = %41, %95, %79, %82, %2
  %99 = phi i1 [ false, %2 ], [ true, %82 ], [ false, %79 ], [ false, %95 ], [ true, %41 ]
  ret i1 %99
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !56 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !146
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !146
  %13 = load ptr, ptr %12, align 8, !tbaa !42, !noalias !146
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !146
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !146
  store ptr %16, ptr %8, align 8, !tbaa !57, !noalias !146
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !61, !noalias !146
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !63, !noalias !146
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !146
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !63, !noalias !149
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !68
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %30 = load ptr, ptr %5, align 8, !tbaa !51
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !64
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !57, !noalias !152
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !51, !noalias !152
  %40 = load ptr, ptr %39, align 8, !tbaa !42, !noalias !152
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !152
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !152
  store ptr %43, ptr %35, align 8, !tbaa !57, !noalias !152
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !61, !noalias !152
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !63, !noalias !152
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !57, !noalias !152
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !63, !noalias !155
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !65
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !68
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !73
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !75
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %63, i64 %64
  br i1 %61, label %66, label %69

66:                                               ; preds = %56
  %67 = load i16, ptr %65, align 4, !tbaa !77
  store i16 %67, ptr %59, align 2, !tbaa !75
  %68 = add i16 %52, 1
  store i16 %68, ptr %51, align 8, !tbaa !65
  br label %69

69:                                               ; preds = %56, %46, %66
  %70 = phi ptr [ null, %46 ], [ %65, %66 ], [ %65, %56 ]
  ret ptr %70
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51, !noalias !158
  %9 = load ptr, ptr %8, align 8, !tbaa !42, !noalias !158
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !158
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !158
  store ptr %12, ptr %3, align 8, !tbaa !57, !noalias !158
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61, !noalias !158
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63, !noalias !158
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !158
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !63, !noalias !161
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !75
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57, !noalias !164
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !51, !noalias !164
  %9 = load ptr, ptr %8, align 8, !tbaa !42, !noalias !164
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !164
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !164
  store ptr %12, ptr %4, align 8, !tbaa !57, !noalias !164
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !61, !noalias !164
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63, !noalias !164
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !57, !noalias !83
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61, !noalias !164
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !51, !noalias !167
  %22 = load ptr, ptr %21, align 8, !tbaa !42, !noalias !167
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !167
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !167
  store ptr %25, ptr %4, align 8, !tbaa !57, !noalias !167
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !61, !noalias !167
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !63, !noalias !167
  br label %28

28:                                               ; preds = %15, %20
  %29 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter>::NextBlock", ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %47, %28
  %31 = phi ptr [ %4, %28 ], [ %35, %47 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = icmp ne ptr %32, %18
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !68
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = icmp ule ptr %41, %1
  %43 = zext i16 %39 to i64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %41, i64 %43
  %45 = icmp ugt ptr %44, %1
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, ptr %29, align 4, !tbaa !170
  %49 = icmp ne i32 %48, -2228259
  %50 = load i16, ptr %1, align 4
  %51 = icmp ugt i16 %50, %39
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %30, !llvm.loop !171

53:                                               ; preds = %34, %47, %30
  ret i1 %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !56 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !172

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !173
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !176
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !172

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !51, !noalias !176
  %14 = load ptr, ptr %13, align 8, !tbaa !42, !noalias !176
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !176
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !57, !noalias !176
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !61, !noalias !176
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !63, !noalias !176
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !176
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !55

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !61, !noalias !179
  %27 = load ptr, ptr %0, align 8, !tbaa !51
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !182

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !55

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %0, align 8, !tbaa !51
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !57
  %46 = load ptr, ptr %0, align 8, !tbaa !51
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !183

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
  tail call void @__clang_call_terminate(ptr %59) #9
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24)
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !57
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !51
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !57
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !57
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !184
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !51, !noalias !184
  %8 = load ptr, ptr %7, align 8, !tbaa !42, !noalias !184
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !184
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !184
  store ptr %11, ptr %3, align 8, !tbaa !57, !noalias !184
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61, !noalias !184
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63, !noalias !184
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !184
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !51
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !99
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %31, ptr %29, align 8, !tbaa !64
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  store ptr %34, ptr %32, align 8, !tbaa !64
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !64
  %36 = load ptr, ptr %33, align 8, !tbaa !63
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !61
  store ptr %29, ptr %33, align 8, !tbaa !63
  store ptr %30, ptr %16, align 8, !tbaa !99
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XStringAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = load ptr, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32)
  %9 = load i16, ptr %3, align 2, !tbaa !69
  store ptr %2, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i16 0, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !68
  %12 = zext i16 %9 to i64
  %13 = mul nuw nsw i64 %12, 72
  %14 = load ptr, ptr %2, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
          to label %18 unwind label %34

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !76
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 1
  store i16 0, ptr %20, align 8, !tbaa !73
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 2
  store i16 0, ptr %21, align 2, !tbaa !75
  %22 = load i16, ptr %11, align 2, !tbaa !68
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = zext i16 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %17, i64 %27
  %29 = add nuw nsw i64 %27, 1
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %28, align 4, !tbaa !77
  %31 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter>::NextBlock", ptr %28, i64 0, i32 1
  store i32 -2228259, ptr %31, align 4, !tbaa !170
  %32 = icmp eq i64 %29, %25
  br i1 %32, label %33, label %26, !llvm.loop !187

33:                                               ; preds = %26, %18
  store ptr %8, ptr %1, align 8, !tbaa !64
  ret ptr %8

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %0, align 8, !tbaa !42
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %42 unwind label %39

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #9
  unreachable

42:                                               ; preds = %34
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !188
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !51, !noalias !188
  %8 = load ptr, ptr %7, align 8, !tbaa !42, !noalias !188
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !188
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !188
  store ptr %11, ptr %3, align 8, !tbaa !57, !noalias !188
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61, !noalias !188
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63, !noalias !188
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !188
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61, !noalias !188
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  br label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !51
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24)
  store ptr %29, ptr %18, align 8, !tbaa !99
  br label %30

30:                                               ; preds = %21, %24
  %31 = phi ptr [ %19, %21 ], [ %29, %24 ]
  %32 = phi ptr [ %23, %21 ], [ null, %24 ]
  %33 = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %33, ptr %31, align 8, !tbaa !64
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  store ptr %36, ptr %34, align 8, !tbaa !64
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %31, i64 0, i32 2
  store ptr %17, ptr %37, align 8, !tbaa !64
  %38 = load ptr, ptr %35, align 8, !tbaa !63
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %38, i64 0, i32 2
  store ptr %31, ptr %39, align 8, !tbaa !61
  store ptr %31, ptr %35, align 8, !tbaa !63
  store ptr %32, ptr %18, align 8, !tbaa !99
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !191
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !51, !noalias !191
  %7 = load ptr, ptr %6, align 8, !tbaa !42, !noalias !191
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !191
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !191
  store ptr %10, ptr %2, align 8, !tbaa !57, !noalias !191
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !61, !noalias !191
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63, !noalias !191
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !191
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61, !noalias !191
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !61
  %22 = load ptr, ptr %17, align 8, !tbaa !61
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %22, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !63
  store ptr null, ptr %19, align 8, !tbaa !63
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  store ptr %25, ptr %17, align 8, !tbaa !61
  store ptr %16, ptr %24, align 8, !tbaa !99
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !75
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = zext i16 %4 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %10, i64 %11
  store i16 %6, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter>::NextBlock", ptr %12, i64 0, i32 1
  store i32 -2228259, ptr %13, align 4, !tbaa !170
  store i16 %4, ptr %5, align 2, !tbaa !75
  br label %14

14:                                               ; preds = %8, %2
  %15 = load ptr, ptr %1, align 8, !tbaa !42
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %1) #8
  %17 = load i16, ptr %3, align 8, !tbaa !73
  store i16 %17, ptr %1, align 4, !tbaa !77
  %18 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %18, align 4, !tbaa !170
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 72
  %25 = trunc i64 %24 to i16
  store i16 %25, ptr %5, align 2, !tbaa !75
  store i16 %25, ptr %3, align 8, !tbaa !73
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %27 = load i16, ptr %26, align 8, !tbaa !65
  %28 = add i16 %27, -1
  store i16 %28, ptr %26, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !194
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !51, !noalias !194
  %10 = load ptr, ptr %9, align 8, !tbaa !42, !noalias !194
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !194
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !194
  store ptr %13, ptr %5, align 8, !tbaa !57, !noalias !194
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !61, !noalias !194
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !63, !noalias !194
  br label %16

16:                                               ; preds = %4, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !83
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61, !noalias !194
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !65
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !51, !noalias !197
  %30 = load ptr, ptr %29, align 8, !tbaa !42, !noalias !197
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !197
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 24), !noalias !197
  store ptr %33, ptr %5, align 8, !tbaa !57, !noalias !197
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !61, !noalias !197
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !63, !noalias !197
  br label %36

36:                                               ; preds = %24, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !197
  %38 = icmp eq ptr %26, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %26, align 8, !tbaa !64
  %41 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 8, !tbaa !65
  %43 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !68
  %45 = icmp ult i16 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %39
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %47

47:                                               ; preds = %16, %46, %39, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !124 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !130

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !51, !noalias !200
  %7 = load ptr, ptr %6, align 8, !tbaa !42, !noalias !200
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !200
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !200
  store ptr %10, ptr %2, align 8, !tbaa !57, !noalias !200
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !61, !noalias !200
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63, !noalias !200
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !200
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !61, !noalias !200
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !203
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !130

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !51, !noalias !203
  %23 = load ptr, ptr %22, align 8, !tbaa !42, !noalias !203
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !203
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !203
  store ptr %26, ptr %2, align 8, !tbaa !57, !noalias !203
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !61, !noalias !203
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !63, !noalias !203
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !203
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !206

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !61
  %39 = load ptr, ptr %34, align 8, !tbaa !61
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !63
  store ptr null, ptr %36, align 8, !tbaa !63
  %41 = load ptr, ptr %33, align 8, !tbaa !99
  store ptr %41, ptr %34, align 8, !tbaa !61
  store ptr %18, ptr %33, align 8, !tbaa !99
  br label %17, !llvm.loop !207

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !68
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %24

11:                                               ; preds = %42, %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !208
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %13)
          to label %23 unwind label %20

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #9
  unreachable

23:                                               ; preds = %11, %15
  ret void

24:                                               ; preds = %9, %42
  %25 = phi i64 [ 0, %9 ], [ %44, %42 ]
  %26 = phi i16 [ %4, %9 ], [ %45, %42 ]
  %27 = phi i16 [ 0, %9 ], [ %43, %42 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !76
  %29 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %28, i64 %25
  %30 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringAdapter>::NextBlock", ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !170
  %32 = icmp ne i32 %31, -2228259
  %33 = load i16, ptr %29, align 4
  %34 = icmp ugt i16 %33, %26
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load ptr, ptr %10, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.xalanc_1_10::XStringAdapter", ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(72) %38) #8
  %41 = add i16 %27, 1
  br label %42

42:                                               ; preds = %36, %24
  %43 = phi i16 [ %41, %36 ], [ %27, %24 ]
  %44 = add nuw nsw i64 %25, 1
  %45 = load i16, ptr %2, align 2, !tbaa !68
  %46 = zext i16 %45 to i64
  %47 = icmp ult i64 %44, %46
  %48 = load i16, ptr %3, align 8
  %49 = icmp ult i16 %43, %48
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %24, label %11, !llvm.loop !209
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 4}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5clearEv, i64 5}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XStringAdapterENS_18ReusableArenaBlockIS1_tEEEE", !47, i64 8, !49, i64 16}
!47 = !{!"short", !48, i64 0}
!48 = !{!"omnipotent char", !44, i64 0}
!49 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"any pointer", !48, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!53, !54, i64 40}
!53 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XStringAdapterEEE", !46, i64 0, !54, i64 40}
!54 = !{!"bool", !48, i64 0}
!55 = !{!"branch_weights", i32 1, i32 0}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!49, !50, i64 8}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!60 = distinct !{!60, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!61 = !{!62, !50, i64 16}
!62 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4NodeE", !50, i64 0, !50, i64 8, !50, i64 16}
!63 = !{!62, !50, i64 8}
!64 = !{!50, !50, i64 0}
!65 = !{!66, !47, i64 8}
!66 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XStringAdapterEtEE", !67, i64 0, !47, i64 8, !47, i64 10, !50, i64 16}
!67 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XStringAdapterEEE", !50, i64 0}
!68 = !{!66, !47, i64 10}
!69 = !{!47, !47, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!73 = !{!74, !47, i64 24}
!74 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtEE", !66, i64 0, !47, i64 24, !47, i64 26}
!75 = !{!74, !47, i64 26}
!76 = !{!66, !50, i64 16}
!77 = !{!78, !47, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XStringAdapterEtE9NextBlockE", !47, i64 0, !79, i64 4}
!79 = !{!"int", !48, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!82 = distinct !{!82, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!83 = !{}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!86 = distinct !{!86, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!89 = distinct !{!89, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!92 = distinct !{!92, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!95 = distinct !{!95, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!99 = !{!49, !50, i64 16}
!100 = !{i8 0, i8 2}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!103 = distinct !{!103, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!104 = distinct !{!104, !105, !106}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!108, !110}
!108 = distinct !{!108, !109, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!109 = distinct !{!109, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!110 = distinct !{!110, !111, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv: argument 0"}
!111 = distinct !{!111, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv"}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!115 = distinct !{!115, !116, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4rendEv: argument 0"}
!116 = distinct !{!116, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4rendEv"}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!119 = distinct !{!119, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!120 = distinct !{!120, !121, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv: argument 0"}
!121 = distinct !{!121, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv"}
!122 = distinct !{!122, !105, !106}
!123 = !{!"function_entry_count", i64 4}
!124 = !{!"function_entry_count", i64 5}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!127 = distinct !{!127, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!128 = !{!"branch_weights", i32 1, i32 4}
!129 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!130 = !{!"branch_weights", i32 0, i32 5}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!133 = distinct !{!133, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!136 = distinct !{!136, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!137 = distinct !{!137, !105, !106}
!138 = distinct !{!138, !105, !106}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv: argument 0"}
!141 = distinct !{!141, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4rendEv: argument 0"}
!144 = distinct !{!144, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4rendEv"}
!145 = distinct !{!145, !105, !106}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!148 = distinct !{!148, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!151 = distinct !{!151, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!154 = distinct !{!154, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!157 = distinct !{!157, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!160 = distinct !{!160, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!163 = distinct !{!163, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4rendEv: argument 0"}
!166 = distinct !{!166, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE4rendEv"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv: argument 0"}
!169 = distinct !{!169, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE6rbeginEv"}
!170 = !{!78, !79, i64 4}
!171 = distinct !{!171, !105, !106}
!172 = !{!"branch_weights", i32 0, i32 1}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!175 = distinct !{!175, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!178 = distinct !{!178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!181 = distinct !{!181, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEi"}
!182 = distinct !{!182, !105, !106}
!183 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!186 = distinct !{!186, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!187 = distinct !{!187, !105, !106}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!190 = distinct !{!190, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!193 = distinct !{!193, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!196 = distinct !{!196, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!199 = distinct !{!199, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv: argument 0"}
!202 = distinct !{!202, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE5beginEv"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv: argument 0"}
!205 = distinct !{!205, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XStringAdapterEtEEE3endEv"}
!206 = !{!"branch_weights", i32 5, i32 0}
!207 = distinct !{!207, !105, !106}
!208 = !{!67, !50, i64 0}
!209 = distinct !{!209, !105, !106}
