; ModuleID = 'XTokenNumberAdapterAllocator.cpp'
source_filename = "XTokenNumberAdapterAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XTokenNumberAdapter" = type { %"class.xalanc_1_10::XNumberBase", ptr }
%"class.xalanc_1_10::XNumberBase" = type { %"class.xalanc_1_10::XObject" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5clearEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtED2Ev = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE = linkonce_odr dso_local constant [67 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [89 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !59

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #2 align 2 !prof !60 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19, !prof !62

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 8, !tbaa !55
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !prof !63
  store ptr %16, ptr %8, align 8, !tbaa !61
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !66
  br label %19

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr %8, align 8, !tbaa !61
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %32, !prof !67

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 8, !tbaa !55
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24)
  store ptr %29, ptr %8, align 8, !tbaa !61
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !64
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !66
  br label %32

32:                                               ; preds = %24, %19
  %33 = load ptr, ptr %8, align 8, !tbaa !61
  %34 = icmp eq ptr %22, %33
  br i1 %34, label %55, label %35, !prof !68

35:                                               ; preds = %32
  %36 = icmp eq ptr %33, null
  br i1 %36, label %37, label %45, !prof !69

37:                                               ; preds = %35
  %38 = load ptr, ptr %7, align 8, !tbaa !55, !noalias !70
  %39 = load ptr, ptr %38, align 8, !tbaa !46, !noalias !70
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8, !noalias !70
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !noalias !70
  store ptr %42, ptr %8, align 8, !tbaa !61, !noalias !70
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %42, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !64, !noalias !70
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %42, i64 0, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !66, !noalias !70
  br label %45

45:                                               ; preds = %37, %35
  %46 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !70
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !64, !noalias !70
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %49, i64 0, i32 1
  %51 = load i16, ptr %50, align 8, !tbaa !74
  %52 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %49, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !77
  %54 = icmp ult i16 %51, %53
  br i1 %54, label %60, label %55, !prof !78

55:                                               ; preds = %45, %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %56 = load ptr, ptr %7, align 8, !tbaa !55
  %57 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  store i16 %58, ptr %4, align 2, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %59 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  store ptr %59, ptr %6, align 8, !tbaa !73
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %60

60:                                               ; preds = %55, %45
  %61 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !80
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %71, !prof !83

63:                                               ; preds = %60
  %64 = load ptr, ptr %7, align 8, !tbaa !55, !noalias !80
  %65 = load ptr, ptr %64, align 8, !tbaa !46, !noalias !80
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8, !noalias !80
  %68 = call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %64, i64 noundef 24), !noalias !80
  store ptr %68, ptr %8, align 8, !tbaa !61, !noalias !80
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %68, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !64, !noalias !80
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %68, i64 0, i32 1
  store ptr %68, ptr %70, align 8, !tbaa !66, !noalias !80
  br label %71

71:                                               ; preds = %63, %60
  %72 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !80
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !64, !noalias !80
  %75 = load ptr, ptr %74, align 8, !tbaa !73
  %76 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %75, i64 0, i32 1
  %77 = load i16, ptr %76, align 8, !tbaa !74
  %78 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %75, i64 0, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !77
  %80 = icmp eq i16 %77, %79
  br i1 %80, label %94, label %81, !prof !83

81:                                               ; preds = %71
  %82 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %75, i64 0, i32 1
  %83 = load i16, ptr %82, align 8, !tbaa !84
  %84 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %75, i64 0, i32 2
  %85 = load i16, ptr %84, align 2, !tbaa !86
  %86 = icmp eq i16 %83, %85
  %87 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %75, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !87
  %89 = zext i16 %83 to i64
  %90 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %88, i64 %89
  br i1 %86, label %91, label %94, !prof !88

91:                                               ; preds = %81
  %92 = load i16, ptr %90, align 4, !tbaa !89
  store i16 %92, ptr %84, align 2, !tbaa !86
  %93 = add i16 %77, 1
  store i16 %93, ptr %76, align 8, !tbaa !74
  br label %94

94:                                               ; preds = %81, %71, %91
  %95 = phi ptr [ null, %71 ], [ %90, %91 ], [ %90, %81 ]
  call void @_ZN11xalanc_1_1019XTokenNumberAdapterC1ERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull align 1 %1)
  %96 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !92
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %106, !prof !83

98:                                               ; preds = %94
  %99 = load ptr, ptr %7, align 8, !tbaa !55, !noalias !92
  %100 = load ptr, ptr %99, align 8, !tbaa !46, !noalias !92
  %101 = getelementptr inbounds ptr, ptr %100, i64 2
  %102 = load ptr, ptr %101, align 8, !noalias !92
  %103 = call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %99, i64 noundef 24), !noalias !92
  store ptr %103, ptr %8, align 8, !tbaa !61, !noalias !92
  %104 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %103, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !64, !noalias !92
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %103, i64 0, i32 1
  store ptr %103, ptr %105, align 8, !tbaa !66, !noalias !92
  br label %106

106:                                              ; preds = %98, %94
  %107 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !95
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !64, !noalias !92
  %110 = load ptr, ptr %109, align 8, !tbaa !73
  %111 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %110, i64 0, i32 2
  %112 = load i16, ptr %111, align 2, !tbaa !86
  %113 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %110, i64 0, i32 1
  store i16 %112, ptr %113, align 8, !tbaa !84
  %114 = icmp eq ptr %107, null
  br i1 %114, label %115, label %123, !prof !83

115:                                              ; preds = %106
  %116 = load ptr, ptr %7, align 8, !tbaa !55, !noalias !96
  %117 = load ptr, ptr %116, align 8, !tbaa !46, !noalias !96
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8, !noalias !96
  %120 = call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %116, i64 noundef 24), !noalias !96
  store ptr %120, ptr %8, align 8, !tbaa !61, !noalias !96
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %120, i64 0, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !64, !noalias !96
  %122 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %120, i64 0, i32 1
  store ptr %120, ptr %122, align 8, !tbaa !66, !noalias !96
  br label %123

123:                                              ; preds = %115, %106
  %124 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !95
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !64, !noalias !96
  %127 = load ptr, ptr %126, align 8, !tbaa !73
  %128 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 1
  %129 = load i16, ptr %128, align 8, !tbaa !74
  %130 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 2
  %131 = load i16, ptr %130, align 2, !tbaa !77
  %132 = icmp ult i16 %129, %131
  br i1 %132, label %148, label %133, !prof !88

133:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %134 = icmp eq ptr %124, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = load ptr, ptr %7, align 8, !tbaa !55, !noalias !99
  %137 = load ptr, ptr %136, align 8, !tbaa !46, !noalias !99
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8, !noalias !99
  %140 = call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %136, i64 noundef 24), !noalias !99
  store ptr %140, ptr %8, align 8, !tbaa !61, !noalias !99
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %140, i64 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !64, !noalias !99
  %142 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %140, i64 0, i32 1
  store ptr %140, ptr %142, align 8, !tbaa !66, !noalias !99
  br label %143

143:                                              ; preds = %135, %133
  %144 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !99
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !64, !noalias !99
  %147 = load ptr, ptr %146, align 8, !tbaa !73
  store ptr %147, ptr %3, align 8, !tbaa !73
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %148

148:                                              ; preds = %123, %143
  ret ptr %95
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 !prof !102 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17, !prof !62

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8, !tbaa !55
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24), !prof !63
  store ptr %14, ptr %6, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %9, %1
  %18 = load ptr, ptr %6, align 8, !tbaa !61
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30, !prof !67

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !55
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !61
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !64
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !61
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %55, label %33, !prof !68

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !61, !noalias !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %45, !prof !69

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !103
  %39 = load ptr, ptr %38, align 8, !tbaa !46, !noalias !103
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8, !noalias !103
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !noalias !103
  store ptr %42, ptr %34, align 8, !tbaa !61, !noalias !103
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %42, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !64, !noalias !103
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %42, i64 0, i32 1
  store ptr %42, ptr %44, align 8, !tbaa !66, !noalias !103
  br label %45

45:                                               ; preds = %33, %37
  %46 = load ptr, ptr %34, align 8, !tbaa !61, !noalias !103
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !64, !noalias !103
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %49, i64 0, i32 1
  %51 = load i16, ptr %50, align 8, !tbaa !74
  %52 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %49, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !77
  %54 = icmp ult i16 %51, %53
  br i1 %54, label %60, label %55, !prof !78

55:                                               ; preds = %45, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %56 = load ptr, ptr %5, align 8, !tbaa !55
  %57 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %58, ptr %2, align 2, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %59 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %59, ptr %4, align 8, !tbaa !73
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %60

60:                                               ; preds = %55, %45
  %61 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !61, !noalias !106
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72, !prof !83

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !106
  %66 = load ptr, ptr %65, align 8, !tbaa !46, !noalias !106
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !106
  %69 = call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 24), !noalias !106
  store ptr %69, ptr %61, align 8, !tbaa !61, !noalias !106
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !64, !noalias !106
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !66, !noalias !106
  br label %72

72:                                               ; preds = %60, %64
  %73 = load ptr, ptr %61, align 8, !tbaa !61, !noalias !106
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !64, !noalias !106
  %76 = load ptr, ptr %75, align 8, !tbaa !73
  %77 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %76, i64 0, i32 1
  %78 = load i16, ptr %77, align 8, !tbaa !74
  %79 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %76, i64 0, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !77
  %81 = icmp eq i16 %78, %80
  br i1 %81, label %95, label %82, !prof !83

82:                                               ; preds = %72
  %83 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %76, i64 0, i32 1
  %84 = load i16, ptr %83, align 8, !tbaa !84
  %85 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %76, i64 0, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !86
  %87 = icmp eq i16 %84, %86
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %76, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !87
  %90 = zext i16 %84 to i64
  %91 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %89, i64 %90
  br i1 %87, label %92, label %95, !prof !88

92:                                               ; preds = %82
  %93 = load i16, ptr %91, align 4, !tbaa !89
  store i16 %93, ptr %85, align 2, !tbaa !86
  %94 = add i16 %78, 1
  store i16 %94, ptr %77, align 8, !tbaa !74
  br label %95

95:                                               ; preds = %82, %72, %92
  %96 = phi ptr [ null, %72 ], [ %91, %92 ], [ %91, %82 ]
  ret ptr %96
}

declare void @_ZN11xalanc_1_1019XTokenNumberAdapterC1ERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !102 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16, !prof !83

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !55, !noalias !109
  %10 = load ptr, ptr %9, align 8, !tbaa !46, !noalias !109
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !109
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !109
  store ptr %13, ptr %5, align 8, !tbaa !61, !noalias !109
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !64, !noalias !109
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !66, !noalias !109
  br label %16

16:                                               ; preds = %2, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !95
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !64, !noalias !109
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !86
  %23 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 1
  store i16 %22, ptr %23, align 8, !tbaa !84
  %24 = icmp eq ptr %17, null
  br i1 %24, label %25, label %33, !prof !83

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8, !tbaa !55, !noalias !112
  %27 = load ptr, ptr %26, align 8, !tbaa !46, !noalias !112
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !noalias !112
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 24), !noalias !112
  store ptr %30, ptr %5, align 8, !tbaa !61, !noalias !112
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %30, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !64, !noalias !112
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %30, i64 0, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !66, !noalias !112
  br label %33

33:                                               ; preds = %16, %25
  %34 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !95
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !64, !noalias !112
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 1
  %39 = load i16, ptr %38, align 8, !tbaa !74
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !77
  %42 = icmp ult i16 %39, %41
  br i1 %42, label %58, label %43, !prof !88

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %44 = icmp eq ptr %34, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = load ptr, ptr %4, align 8, !tbaa !55, !noalias !115
  %47 = load ptr, ptr %46, align 8, !tbaa !46, !noalias !115
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8, !noalias !115
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef 24), !noalias !115
  store ptr %50, ptr %5, align 8, !tbaa !61, !noalias !115
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %50, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !64, !noalias !115
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %50, i64 0, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !66, !noalias !115
  br label %53

53:                                               ; preds = %43, %45
  %54 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !115
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !64, !noalias !115
  %57 = load ptr, ptr %56, align 8, !tbaa !73
  store ptr %57, ptr %3, align 8, !tbaa !73
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %58

58:                                               ; preds = %53, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !60 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17, !prof !62

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !55
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24), !prof !63
  store ptr %14, ptr %6, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %9, %2
  %18 = load ptr, ptr %6, align 8, !tbaa !61
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30, !prof !67

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !55
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !61
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !64
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %22, %17
  %31 = load ptr, ptr %6, align 8, !tbaa !61
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %217, label %33, !prof !83

33:                                               ; preds = %30
  %34 = icmp eq ptr %31, null
  br i1 %34, label %35, label %43, !prof !83

35:                                               ; preds = %33
  %36 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !118
  %37 = load ptr, ptr %36, align 8, !tbaa !46, !noalias !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8, !noalias !118
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef 24), !noalias !118
  store ptr %40, ptr %6, align 8, !tbaa !61, !noalias !118
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %40, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !64, !noalias !118
  %42 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %40, i64 0, i32 1
  store ptr %40, ptr %42, align 8, !tbaa !66, !noalias !118
  br label %43

43:                                               ; preds = %35, %33
  %44 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !95
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !64, !noalias !118
  %47 = icmp eq ptr %44, null
  br i1 %47, label %48, label %56, !prof !83

48:                                               ; preds = %43
  %49 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !121
  %50 = load ptr, ptr %49, align 8, !tbaa !46, !noalias !121
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !noalias !121
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef 24), !noalias !121
  store ptr %53, ptr %6, align 8, !tbaa !61, !noalias !121
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %53, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !64, !noalias !121
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %53, i64 0, i32 1
  store ptr %53, ptr %55, align 8, !tbaa !66, !noalias !121
  br label %56

56:                                               ; preds = %48, %43
  %57 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !121
  %58 = icmp eq ptr %46, %57
  br i1 %58, label %135, label %59, !prof !124

59:                                               ; preds = %56, %131
  %60 = phi ptr [ %133, %131 ], [ %46, %56 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !74
  %64 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !77
  %66 = icmp ult i16 %63, %65
  br i1 %66, label %67, label %135, !prof !88

67:                                               ; preds = %59
  %68 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !87
  %70 = icmp ule ptr %69, %1
  %71 = zext i16 %65 to i64
  %72 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %69, i64 %71
  %73 = icmp ugt ptr %72, %1
  %74 = select i1 %70, i1 %73, i1 false, !prof !88
  br i1 %74, label %75, label %131, !prof !88

75:                                               ; preds = %67
  %76 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 1
  %77 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %61, i64 0, i32 3
  %78 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %61, i64 0, i32 1
  %79 = load i16, ptr %78, align 8, !tbaa !84
  %80 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %61, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !86
  %82 = icmp eq i16 %79, %81
  br i1 %82, label %87, label %83, !prof !88

83:                                               ; preds = %75
  %84 = zext i16 %79 to i64
  %85 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %69, i64 %84
  store i16 %81, ptr %85, align 4, !tbaa !89
  %86 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %85, i64 0, i32 1
  store i32 -2228259, ptr %86, align 4, !tbaa !125
  store i16 %79, ptr %80, align 2, !tbaa !86
  br label %87

87:                                               ; preds = %83, %75
  %88 = load ptr, ptr %1, align 8, !tbaa !46
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(32) %1) #9, !prof !126
  %90 = load i16, ptr %78, align 8, !tbaa !84
  store i16 %90, ptr %1, align 4, !tbaa !89
  %91 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %91, align 4, !tbaa !125
  %92 = load ptr, ptr %77, align 8, !tbaa !87
  %93 = ptrtoint ptr %1 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = lshr exact i64 %95, 5
  %97 = trunc i64 %96 to i16
  store i16 %97, ptr %80, align 2, !tbaa !86
  store i16 %97, ptr %78, align 8, !tbaa !84
  %98 = load i16, ptr %76, align 8, !tbaa !74
  %99 = add i16 %98, -1
  store i16 %99, ptr %76, align 8, !tbaa !74
  %100 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !127
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %110, !prof !83

102:                                              ; preds = %87
  %103 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !127
  %104 = load ptr, ptr %103, align 8, !tbaa !46, !noalias !127
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8, !noalias !127
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(8) %103, i64 noundef 24), !noalias !127
  store ptr %107, ptr %6, align 8, !tbaa !61, !noalias !127
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %107, i64 0, i32 2
  store ptr %107, ptr %108, align 8, !tbaa !64, !noalias !127
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %107, i64 0, i32 1
  store ptr %107, ptr %109, align 8, !tbaa !66, !noalias !127
  br label %110

110:                                              ; preds = %102, %87
  %111 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !127
  %112 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !64, !noalias !127
  %114 = icmp eq ptr %60, %113
  br i1 %114, label %126, label %115, !prof !88

115:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %116 = load ptr, ptr %60, align 8, !tbaa !73
  store ptr %116, ptr %3, align 8, !tbaa !73
  %117 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %60, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !64
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %60, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !66
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %120, i64 0, i32 2
  store ptr %118, ptr %121, align 8, !tbaa !64
  %122 = load ptr, ptr %117, align 8, !tbaa !64
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %122, i64 0, i32 1
  store ptr %120, ptr %123, align 8, !tbaa !66
  store ptr null, ptr %119, align 8, !tbaa !66
  %124 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !130
  store ptr %125, ptr %117, align 8, !tbaa !64
  store ptr %60, ptr %124, align 8, !tbaa !130
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %126

126:                                              ; preds = %115, %110
  %127 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %128 = load i8, ptr %127, align 8, !tbaa !56, !range !131, !noundef !95
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130, !prof !88

130:                                              ; preds = %126
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %135

131:                                              ; preds = %67
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %60, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !64, !noalias !132
  %134 = icmp eq ptr %133, %57
  br i1 %134, label %135, label %59, !prof !83, !llvm.loop !135

135:                                              ; preds = %131, %59, %130, %126, %56
  %136 = phi ptr [ %60, %130 ], [ %60, %126 ], [ %46, %56 ], [ %133, %131 ], [ %60, %59 ]
  %137 = phi i1 [ false, %130 ], [ false, %126 ], [ true, %56 ], [ true, %59 ], [ true, %131 ]
  %138 = phi i8 [ 1, %130 ], [ 1, %126 ], [ 0, %56 ], [ 0, %59 ], [ 0, %131 ]
  %139 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !138
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %149, !prof !83

141:                                              ; preds = %135
  %142 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !138
  %143 = load ptr, ptr %142, align 8, !tbaa !46, !noalias !138
  %144 = getelementptr inbounds ptr, ptr %143, i64 2
  %145 = load ptr, ptr %144, align 8, !noalias !138
  %146 = call noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %142, i64 noundef 24), !noalias !138
  store ptr %146, ptr %6, align 8, !tbaa !61, !noalias !138
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %146, i64 0, i32 2
  store ptr %146, ptr %147, align 8, !tbaa !64, !noalias !138
  %148 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %146, i64 0, i32 1
  store ptr %146, ptr %148, align 8, !tbaa !66, !noalias !138
  br label %149

149:                                              ; preds = %141, %135
  %150 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !95
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %160, !prof !83

152:                                              ; preds = %149
  %153 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !143
  %154 = load ptr, ptr %153, align 8, !tbaa !46, !noalias !143
  %155 = getelementptr inbounds ptr, ptr %154, i64 2
  %156 = load ptr, ptr %155, align 8, !noalias !143
  %157 = call noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(8) %153, i64 noundef 24), !noalias !143
  store ptr %157, ptr %6, align 8, !tbaa !61, !noalias !143
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %157, i64 0, i32 2
  store ptr %157, ptr %158, align 8, !tbaa !64, !noalias !143
  %159 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %157, i64 0, i32 1
  store ptr %157, ptr %159, align 8, !tbaa !66, !noalias !143
  br label %160

160:                                              ; preds = %152, %149
  %161 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !143
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !64, !noalias !143
  br i1 %137, label %164, label %213

164:                                              ; preds = %160, %210
  %165 = phi ptr [ %169, %210 ], [ %150, %160 ]
  %166 = icmp eq ptr %165, %163
  br i1 %166, label %213, label %167, !prof !88

167:                                              ; preds = %164
  %168 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %165, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !66, !noalias !95
  %170 = load ptr, ptr %169, align 8, !tbaa !73
  %171 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %170, i64 0, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !77
  %173 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %170, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !87
  %175 = icmp ule ptr %174, %1
  %176 = zext i16 %172 to i64
  %177 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %174, i64 %176
  %178 = icmp ugt ptr %177, %1
  %179 = select i1 %175, i1 %178, i1 false
  br i1 %179, label %180, label %210

180:                                              ; preds = %167
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %170, ptr noundef %1)
  %181 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !148
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !148
  %185 = load ptr, ptr %184, align 8, !tbaa !46, !noalias !148
  %186 = getelementptr inbounds ptr, ptr %185, i64 2
  %187 = load ptr, ptr %186, align 8, !noalias !148
  %188 = call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(8) %184, i64 noundef 24), !noalias !148
  store ptr %188, ptr %6, align 8, !tbaa !61, !noalias !148
  %189 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %188, i64 0, i32 2
  store ptr %188, ptr %189, align 8, !tbaa !64, !noalias !148
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %188, i64 0, i32 1
  store ptr %188, ptr %190, align 8, !tbaa !66, !noalias !148
  br label %191

191:                                              ; preds = %183, %180
  %192 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !148
  %193 = icmp eq ptr %165, %192
  br i1 %193, label %205, label %194

194:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %195 = load ptr, ptr %136, align 8, !tbaa !73
  store ptr %195, ptr %4, align 8, !tbaa !73
  %196 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %136, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !64
  %198 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %136, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !66
  %200 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %199, i64 0, i32 2
  store ptr %197, ptr %200, align 8, !tbaa !64
  %201 = load ptr, ptr %196, align 8, !tbaa !64
  %202 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %201, i64 0, i32 1
  store ptr %199, ptr %202, align 8, !tbaa !66
  store ptr null, ptr %198, align 8, !tbaa !66
  %203 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !130
  store ptr %204, ptr %196, align 8, !tbaa !64
  store ptr %136, ptr %203, align 8, !tbaa !130
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %205

205:                                              ; preds = %194, %191
  %206 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %207 = load i8, ptr %206, align 8, !tbaa !56, !range !131, !noundef !95
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %213

210:                                              ; preds = %167
  %211 = load ptr, ptr %136, align 8, !tbaa !73
  %212 = icmp eq ptr %170, %211
  br i1 %212, label %213, label %164, !llvm.loop !153

213:                                              ; preds = %210, %164, %209, %205, %160
  %214 = phi i8 [ 1, %209 ], [ 1, %205 ], [ %138, %160 ], [ %138, %164 ], [ %138, %210 ]
  %215 = and i8 %214, 1
  %216 = icmp ne i8 %215, 0
  br label %217

217:                                              ; preds = %30, %213
  %218 = phi i1 [ %216, %213 ], [ false, %30 ]
  ret i1 %218
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 align 2 !prof !154 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !156
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !159

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !156
  %8 = load ptr, ptr %7, align 8, !tbaa !46, !noalias !156
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !156
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !156
  store ptr %11, ptr %3, align 8, !tbaa !61, !noalias !156
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !64, !noalias !156
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !66, !noalias !156
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !95
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !64, !noalias !156
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !159

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !160
  %21 = load ptr, ptr %20, align 8, !tbaa !46, !noalias !160
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !160
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !160
  store ptr %24, ptr %3, align 8, !tbaa !61, !noalias !160
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !64, !noalias !160
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !66, !noalias !160
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !160
  %29 = load ptr, ptr %2, align 8, !tbaa !55
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !163

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !124

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %33) #9
  %36 = load ptr, ptr %29, align 8, !tbaa !46
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !164
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !64, !noalias !165
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !59, !llvm.loop !168

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !102 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !55
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24)
  store ptr %14, ptr %6, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr %6, align 8, !tbaa !61
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !55
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !61
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !64
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !61
  %32 = icmp eq ptr %20, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %30, %49
  %34 = phi ptr [ %51, %49 ], [ %20, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 1
  %37 = load i16, ptr %36, align 8, !tbaa !74
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !77
  %40 = icmp ult i16 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  %44 = icmp ule ptr %43, %1
  %45 = zext i16 %39 to i64
  %46 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %43, i64 %45
  %47 = icmp ugt ptr %46, %1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %98, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = icmp eq ptr %51, %31
  br i1 %52, label %53, label %33, !llvm.loop !169

53:                                               ; preds = %33, %49, %30
  %54 = phi ptr [ %20, %30 ], [ %34, %33 ], [ %51, %49 ]
  %55 = icmp eq ptr %31, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !170
  %58 = load ptr, ptr %57, align 8, !tbaa !46, !noalias !170
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !noalias !170
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 24), !noalias !170
  store ptr %61, ptr %6, align 8, !tbaa !61, !noalias !170
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %61, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !64, !noalias !170
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %61, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !66, !noalias !170
  br label %64

64:                                               ; preds = %53, %56
  %65 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !95
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !173
  %69 = load ptr, ptr %68, align 8, !tbaa !46, !noalias !173
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !173
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 24), !noalias !173
  store ptr %72, ptr %6, align 8, !tbaa !61, !noalias !173
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !64, !noalias !173
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !66, !noalias !173
  br label %75

75:                                               ; preds = %64, %67
  %76 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !173
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !64, !noalias !173
  br label %79

79:                                               ; preds = %95, %75
  %80 = phi ptr [ %65, %75 ], [ %84, %95 ]
  %81 = icmp eq ptr %80, %78
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !66
  %85 = load ptr, ptr %84, align 8, !tbaa !73
  %86 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !77
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !87
  %90 = icmp ule ptr %89, %1
  %91 = zext i16 %87 to i64
  %92 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %89, i64 %91
  %93 = icmp ugt ptr %92, %1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load ptr, ptr %54, align 8, !tbaa !73
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %79, !llvm.loop !176

98:                                               ; preds = %41, %95, %79, %82, %2
  %99 = phi i1 [ false, %2 ], [ true, %82 ], [ false, %79 ], [ false, %95 ], [ true, %41 ]
  ret i1 %99
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !102 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !102 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !177
  %13 = load ptr, ptr %12, align 8, !tbaa !46, !noalias !177
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !177
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !177
  store ptr %16, ptr %8, align 8, !tbaa !61, !noalias !177
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !64, !noalias !177
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !66, !noalias !177
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !177
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !66, !noalias !180
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !77
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %30 = load ptr, ptr %5, align 8, !tbaa !55
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !73
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !61, !noalias !183
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !55, !noalias !183
  %40 = load ptr, ptr %39, align 8, !tbaa !46, !noalias !183
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !183
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !183
  store ptr %43, ptr %35, align 8, !tbaa !61, !noalias !183
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !64, !noalias !183
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !66, !noalias !183
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !61, !noalias !183
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !66, !noalias !186
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !74
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !77
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !84
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !86
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %63, i64 %64
  br i1 %61, label %66, label %69

66:                                               ; preds = %56
  %67 = load i16, ptr %65, align 4, !tbaa !89
  store i16 %67, ptr %59, align 2, !tbaa !86
  %68 = add i16 %52, 1
  store i16 %68, ptr %51, align 8, !tbaa !74
  br label %69

69:                                               ; preds = %56, %46, %66
  %70 = phi ptr [ null, %46 ], [ %65, %66 ], [ %65, %56 ]
  ret ptr %70
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !189
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55, !noalias !189
  %9 = load ptr, ptr %8, align 8, !tbaa !46, !noalias !189
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !189
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !189
  store ptr %12, ptr %3, align 8, !tbaa !61, !noalias !189
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !64, !noalias !189
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !66, !noalias !189
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !189
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !66, !noalias !192
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !86
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !84
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !195
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !195
  %9 = load ptr, ptr %8, align 8, !tbaa !46, !noalias !195
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !195
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !195
  store ptr %12, ptr %4, align 8, !tbaa !61, !noalias !195
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !64, !noalias !195
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !66, !noalias !195
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !95
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64, !noalias !195
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !198
  %22 = load ptr, ptr %21, align 8, !tbaa !46, !noalias !198
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !198
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !198
  store ptr %25, ptr %4, align 8, !tbaa !61, !noalias !198
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !64, !noalias !198
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !66, !noalias !198
  br label %28

28:                                               ; preds = %15, %20
  %29 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %47, %28
  %31 = phi ptr [ %4, %28 ], [ %35, %47 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = icmp ne ptr %32, %18
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !77
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = icmp ule ptr %41, %1
  %43 = zext i16 %39 to i64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %41, i64 %43
  %45 = icmp ugt ptr %44, %1
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, ptr %29, align 4, !tbaa !125
  %49 = icmp ne i32 %48, -2228259
  %50 = load i16, ptr %1, align 4
  %51 = icmp ugt i16 %50, %39
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %30, !llvm.loop !201

53:                                               ; preds = %34, %47, %30
  ret i1 %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !102 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !124

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64, !noalias !202
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !205
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !124

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !55, !noalias !205
  %14 = load ptr, ptr %13, align 8, !tbaa !46, !noalias !205
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !205
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !61, !noalias !205
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !64, !noalias !205
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !66, !noalias !205
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !205
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !59

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64, !noalias !208
  %27 = load ptr, ptr %0, align 8, !tbaa !55
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !211

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !212

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = load ptr, ptr %0, align 8, !tbaa !55
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !164

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !61
  %46 = load ptr, ptr %0, align 8, !tbaa !55
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !164

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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !62

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !55
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !63
  store ptr %10, ptr %2, align 8, !tbaa !61
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !66
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !67

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !55
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !61
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !66
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !61
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !213
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !55, !noalias !213
  %8 = load ptr, ptr %7, align 8, !tbaa !46, !noalias !213
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !213
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !213
  store ptr %11, ptr %3, align 8, !tbaa !61, !noalias !213
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !64, !noalias !213
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !66, !noalias !213
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !213
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !55
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !130
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %31, ptr %29, align 8, !tbaa !73
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  store ptr %34, ptr %32, align 8, !tbaa !73
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !73
  %36 = load ptr, ptr %33, align 8, !tbaa !66
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !64
  store ptr %29, ptr %33, align 8, !tbaa !66
  store ptr %30, ptr %16, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !216
  %9 = load i16, ptr %3, align 2, !tbaa !79
  store ptr %2, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i16 0, ptr %10, align 8, !tbaa !74
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !77
  %12 = zext i16 %9 to i64
  %13 = shl nuw nsw i64 %12, 5
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
          to label %18 unwind label %34, !prof !216

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !87
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 1
  store i16 0, ptr %20, align 8, !tbaa !84
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 2
  store i16 0, ptr %21, align 2, !tbaa !86
  %22 = load i16, ptr %11, align 2, !tbaa !77
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24, !prof !217

24:                                               ; preds = %18
  %25 = zext i16 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %17, i64 %27
  %29 = add nuw nsw i64 %27, 1
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %28, align 4, !tbaa !89
  %31 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %28, i64 0, i32 1
  store i32 -2228259, ptr %31, align 4, !tbaa !125
  %32 = icmp eq i64 %29, %25
  br i1 %32, label %33, label %26, !prof !218, !llvm.loop !219

33:                                               ; preds = %26, %18
  store ptr %8, ptr %1, align 8, !tbaa !73
  ret ptr %8

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %0, align 8, !tbaa !46
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
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !220
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !124

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !55, !noalias !220
  %8 = load ptr, ptr %7, align 8, !tbaa !46, !noalias !220
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !220
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !220
  store ptr %11, ptr %3, align 8, !tbaa !61, !noalias !220
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !64, !noalias !220
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !66, !noalias !220
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !220
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !64, !noalias !220
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !59

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  br label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !55
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24), !prof !216
  store ptr %29, ptr %18, align 8, !tbaa !130
  br label %30

30:                                               ; preds = %21, %24
  %31 = phi ptr [ %19, %21 ], [ %29, %24 ]
  %32 = phi ptr [ %23, %21 ], [ null, %24 ]
  %33 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %33, ptr %31, align 8, !tbaa !73
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  store ptr %36, ptr %34, align 8, !tbaa !73
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %31, i64 0, i32 2
  store ptr %17, ptr %37, align 8, !tbaa !73
  %38 = load ptr, ptr %35, align 8, !tbaa !66
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %38, i64 0, i32 2
  store ptr %31, ptr %39, align 8, !tbaa !64
  store ptr %31, ptr %35, align 8, !tbaa !66
  store ptr %32, ptr %18, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !223
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !55, !noalias !223
  %7 = load ptr, ptr %6, align 8, !tbaa !46, !noalias !223
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !223
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !223
  store ptr %10, ptr %2, align 8, !tbaa !61, !noalias !223
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !64, !noalias !223
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !66, !noalias !223
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !223
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64, !noalias !223
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !64
  %22 = load ptr, ptr %17, align 8, !tbaa !64
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %22, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !66
  store ptr null, ptr %19, align 8, !tbaa !66
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  store ptr %25, ptr %17, align 8, !tbaa !64
  store ptr %16, ptr %24, align 8, !tbaa !130
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !86
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %14, label %8, !prof !88

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = zext i16 %4 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %10, i64 %11
  store i16 %6, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %12, i64 0, i32 1
  store i32 -2228259, ptr %13, align 4, !tbaa !125
  store i16 %4, ptr %5, align 2, !tbaa !86
  br label %14

14:                                               ; preds = %8, %2
  %15 = load ptr, ptr %1, align 8, !tbaa !46
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(32) %1) #9, !prof !226
  %17 = load i16, ptr %3, align 8, !tbaa !84
  store i16 %17, ptr %1, align 4, !tbaa !89
  %18 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %1, i64 0, i32 1
  store i32 -2228259, ptr %18, align 4, !tbaa !125
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = ptrtoint ptr %1 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 5
  %25 = trunc i64 %24 to i16
  store i16 %25, ptr %5, align 2, !tbaa !86
  store i16 %25, ptr %3, align 8, !tbaa !84
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %27 = load i16, ptr %26, align 8, !tbaa !74
  %28 = add i16 %27, -1
  store i16 %28, ptr %26, align 8, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #5 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !227
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !227
  %10 = load ptr, ptr %9, align 8, !tbaa !46, !noalias !227
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !227
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !227
  store ptr %13, ptr %5, align 8, !tbaa !61, !noalias !227
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !64, !noalias !227
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !66, !noalias !227
  br label %16

16:                                               ; preds = %4, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !95
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !64, !noalias !227
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !74
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !230
  %30 = load ptr, ptr %29, align 8, !tbaa !46, !noalias !230
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !230
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 24), !noalias !230
  store ptr %33, ptr %5, align 8, !tbaa !61, !noalias !230
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !64, !noalias !230
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !66, !noalias !230
  br label %36

36:                                               ; preds = %24, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !230
  %38 = icmp eq ptr %26, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %26, align 8, !tbaa !73
  %41 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 8, !tbaa !74
  %43 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %40, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !77
  %45 = icmp ult i16 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %39
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %47

47:                                               ; preds = %16, %46, %39, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !233
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !159

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !55, !noalias !233
  %7 = load ptr, ptr %6, align 8, !tbaa !46, !noalias !233
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !233
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !233
  store ptr %10, ptr %2, align 8, !tbaa !61, !noalias !233
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !64, !noalias !233
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !66, !noalias !233
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !233
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64, !noalias !233
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !236
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !239

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !55, !noalias !236
  %23 = load ptr, ptr %22, align 8, !tbaa !46, !noalias !236
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !236
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !236
  store ptr %26, ptr %2, align 8, !tbaa !61, !noalias !236
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !64, !noalias !236
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !66, !noalias !236
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !236
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !240

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !64
  %39 = load ptr, ptr %34, align 8, !tbaa !64
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !66
  store ptr null, ptr %36, align 8, !tbaa !66
  %41 = load ptr, ptr %33, align 8, !tbaa !130
  store ptr %41, ptr %34, align 8, !tbaa !64
  store ptr %18, ptr %33, align 8, !tbaa !130
  br label %17, !llvm.loop !241

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !77
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !59
  br i1 %8, label %9, label %11, !prof !124

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %24

11:                                               ; preds = %42, %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !124

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !242
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %13)
          to label %23 unwind label %20, !prof !164

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
  %28 = load ptr, ptr %10, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %28, i64 %25
  %30 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XTokenNumberAdapter>::NextBlock", ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !125
  %32 = icmp ne i32 %31, -2228259
  %33 = load i16, ptr %29, align 4
  %34 = icmp ugt i16 %33, %26
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load ptr, ptr %10, align 8, !tbaa !87
  %38 = getelementptr inbounds %"class.xalanc_1_10::XTokenNumberAdapter", ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(32) %38) #9
  %41 = add i16 %27, 1
  br label %42

42:                                               ; preds = %36, %24
  %43 = phi i16 [ %41, %36 ], [ %27, %24 ]
  %44 = add nuw nsw i64 %25, 1
  %45 = load i16, ptr %2, align 2, !tbaa !77
  %46 = zext i16 %45 to i64
  %47 = icmp ult i64 %44, %46
  %48 = load i16, ptr %3, align 8
  %49 = icmp ult i16 %43, %48
  %50 = select i1 %47, i1 %49, i1 false, !prof !59
  br i1 %50, label %24, label %11, !prof !124, !llvm.loop !243
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE10push_frontERKS4_, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE, ptr @_ZN11xalanc_1_1019XTokenNumberAdapterC1ERKNS_6XTokenE, i64 89504425}
!41 = !{ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 4}
!42 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtED2Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5clearEv, i64 5}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XTokenNumberAdapterENS_18ReusableArenaBlockIS1_tEEEE", !51, i64 8, !53, i64 16}
!51 = !{!"short", !52, i64 0}
!52 = !{!"omnipotent char", !48, i64 0}
!53 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"any pointer", !52, i64 0}
!55 = !{!53, !54, i64 0}
!56 = !{!57, !58, i64 40}
!57 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_19XTokenNumberAdapterEEE", !50, i64 0, !58, i64 40}
!58 = !{!"bool", !52, i64 0}
!59 = !{!"branch_weights", i32 1, i32 0}
!60 = !{!"function_entry_count", i64 89504425}
!61 = !{!53, !54, i64 8}
!62 = !{!"branch_weights", i32 1, i32 179008849}
!63 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!64 = !{!65, !54, i64 16}
!65 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4NodeE", !54, i64 0, !54, i64 8, !54, i64 16}
!66 = !{!65, !54, i64 8}
!67 = !{!"branch_weights", i32 0, i32 179008850}
!68 = !{!"branch_weights", i32 1, i32 89504424}
!69 = !{!"branch_weights", i32 0, i32 89504424}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!73 = !{!54, !54, i64 0}
!74 = !{!75, !51, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_19XTokenNumberAdapterEtEE", !76, i64 0, !51, i64 8, !51, i64 10, !54, i64 16}
!76 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_19XTokenNumberAdapterEEE", !54, i64 0}
!77 = !{!75, !51, i64 10}
!78 = !{!"branch_weights", i32 89504424, i32 0}
!79 = !{!51, !51, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!82 = distinct !{!82, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!83 = !{!"branch_weights", i32 0, i32 89504425}
!84 = !{!85, !51, i64 24}
!85 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtEE", !75, i64 0, !51, i64 24, !51, i64 26}
!86 = !{!85, !51, i64 26}
!87 = !{!75, !54, i64 16}
!88 = !{!"branch_weights", i32 89504425, i32 0}
!89 = !{!90, !51, i64 0}
!90 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_19XTokenNumberAdapterEtE9NextBlockE", !51, i64 0, !91, i64 4}
!91 = !{!"int", !52, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!94 = distinct !{!94, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!95 = !{}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!102 = !{!"function_entry_count", i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!105 = distinct !{!105, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!108 = distinct !{!108, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!111 = distinct !{!111, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!117 = distinct !{!117, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!120 = distinct !{!120, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!123 = distinct !{!123, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!124 = !{!"branch_weights", i32 0, i32 1}
!125 = !{!90, !91, i64 4}
!126 = !{!"VP", i32 0, i64 89504425, i64 -6237360472453986443, i64 89504425}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!129 = distinct !{!129, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!130 = !{!53, !54, i64 16}
!131 = !{i8 0, i8 2}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!135 = distinct !{!135, !136, !137}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !{!139, !141}
!139 = distinct !{!139, !140, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!140 = distinct !{!140, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!141 = distinct !{!141, !142, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv: argument 0"}
!142 = distinct !{!142, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv"}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!145 = distinct !{!145, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!146 = distinct !{!146, !147, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4rendEv: argument 0"}
!147 = distinct !{!147, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4rendEv"}
!148 = !{!149, !151}
!149 = distinct !{!149, !150, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!150 = distinct !{!150, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!151 = distinct !{!151, !152, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv: argument 0"}
!152 = distinct !{!152, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv"}
!153 = distinct !{!153, !136, !137}
!154 = !{!"function_entry_count", i64 4}
!155 = !{!"function_entry_count", i64 5}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!158 = distinct !{!158, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!159 = !{!"branch_weights", i32 0, i32 5}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!162 = distinct !{!162, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!163 = !{!"branch_weights", i32 4, i32 1}
!164 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!167 = distinct !{!167, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!168 = distinct !{!168, !136, !137}
!169 = distinct !{!169, !136, !137}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv: argument 0"}
!172 = distinct !{!172, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4rendEv: argument 0"}
!175 = distinct !{!175, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4rendEv"}
!176 = distinct !{!176, !136, !137}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!179 = distinct !{!179, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!182 = distinct !{!182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!185 = distinct !{!185, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!188 = distinct !{!188, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!191 = distinct !{!191, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!194 = distinct !{!194, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4rendEv: argument 0"}
!197 = distinct !{!197, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE4rendEv"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv: argument 0"}
!200 = distinct !{!200, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE6rbeginEv"}
!201 = distinct !{!201, !136, !137}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!204 = distinct !{!204, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!207 = distinct !{!207, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEEENS_9XalanListIS5_E4NodeEEppEi"}
!211 = distinct !{!211, !136, !137}
!212 = !{!"branch_weights", i32 1, i32 1}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!215 = distinct !{!215, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!216 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!217 = !{!"branch_weights", i32 1, i32 127}
!218 = !{!"branch_weights", i32 127, i32 1153}
!219 = distinct !{!219, !136, !137}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!222 = distinct !{!222, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!225 = distinct !{!225, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!226 = !{!"VP", i32 0, i64 0, i64 -6237360472453986443, i64 0}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!229 = distinct !{!229, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!232 = distinct !{!232, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv: argument 0"}
!235 = distinct !{!235, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE5beginEv"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv: argument 0"}
!238 = distinct !{!238, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_19XTokenNumberAdapterEtEEE3endEv"}
!239 = !{!"branch_weights", i32 0, i32 6}
!240 = !{!"branch_weights", i32 5, i32 1}
!241 = distinct !{!241, !136, !137}
!242 = !{!76, !54, i64 0}
!243 = distinct !{!243, !136, !137}
