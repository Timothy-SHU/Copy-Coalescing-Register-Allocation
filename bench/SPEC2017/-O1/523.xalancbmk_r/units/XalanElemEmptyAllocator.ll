; ModuleID = 'XalanElemEmptyAllocator.cpp'
source_filename = "XalanElemEmptyAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::ElemEmpty" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty>::NextBlock" = type { i16, i32 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_9ElemEmptyEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5clearEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_9ElemEmptyEtED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9pop_frontEv = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE = linkonce_odr dso_local constant [56 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [78 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1023XalanElemEmptyAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1023XalanElemEmptyAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1023XalanElemEmptyAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !58
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XalanElemEmptyAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !61

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #9
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 !prof !62 {
  %7 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  tail call void @_ZN11xalanc_1_109ElemEmptyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %7, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %7)
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7, !prof !64

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !65, !noalias !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19, !prof !69

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !66
  %13 = load ptr, ptr %12, align 8, !tbaa !48, !noalias !66
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !66
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !66
  store ptr %16, ptr %8, align 8, !tbaa !65, !noalias !66
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !70, !noalias !66
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !72, !noalias !66
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !65, !noalias !66
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !70, !noalias !66
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !77
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29, !prof !78

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %30 = load ptr, ptr %5, align 8, !tbaa !57
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_9ElemEmptyEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !73
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !65, !noalias !80
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46, !prof !83

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !80
  %40 = load ptr, ptr %39, align 8, !tbaa !48, !noalias !80
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !80
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !80
  store ptr %43, ptr %35, align 8, !tbaa !65, !noalias !80
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !70, !noalias !80
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !72, !noalias !80
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !65, !noalias !80
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !70, !noalias !80
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 8, !tbaa !74
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i16, ptr %53, align 2, !tbaa !77
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %69, label %56, !prof !83

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !84
  %59 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %50, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !86
  %61 = icmp eq i16 %58, %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = zext i16 %58 to i64
  %65 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %63, i64 %64
  br i1 %61, label %66, label %69, !prof !88

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

declare void @_ZN11xalanc_1_109ElemEmptyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65, !noalias !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16, !prof !83

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !57, !noalias !92
  %10 = load ptr, ptr %9, align 8, !tbaa !48, !noalias !92
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !92
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !92
  store ptr %13, ptr %5, align 8, !tbaa !65, !noalias !92
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !70, !noalias !92
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !72, !noalias !92
  br label %16

16:                                               ; preds = %2, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !65, !noalias !95
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !70, !noalias !92
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !86
  %23 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %20, i64 0, i32 1
  store i16 %22, ptr %23, align 8, !tbaa !84
  %24 = icmp eq ptr %17, null
  br i1 %24, label %25, label %33, !prof !83

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8, !tbaa !57, !noalias !96
  %27 = load ptr, ptr %26, align 8, !tbaa !48, !noalias !96
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !noalias !96
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 24), !noalias !96
  store ptr %30, ptr %5, align 8, !tbaa !65, !noalias !96
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %30, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !70, !noalias !96
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %30, i64 0, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !72, !noalias !96
  br label %33

33:                                               ; preds = %16, %25
  %34 = load ptr, ptr %5, align 8, !tbaa !65, !noalias !95
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !70, !noalias !96
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 1
  %39 = load i16, ptr %38, align 8, !tbaa !74
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !77
  %42 = icmp ult i16 %39, %41
  br i1 %42, label %58, label %43, !prof !88

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %44 = icmp eq ptr %34, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = load ptr, ptr %4, align 8, !tbaa !57, !noalias !99
  %47 = load ptr, ptr %46, align 8, !tbaa !48, !noalias !99
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8, !noalias !99
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef 24), !noalias !99
  store ptr %50, ptr %5, align 8, !tbaa !65, !noalias !99
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %50, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !70, !noalias !99
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %50, i64 0, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !72, !noalias !99
  br label %53

53:                                               ; preds = %43, %45
  %54 = load ptr, ptr %5, align 8, !tbaa !65, !noalias !99
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !70, !noalias !99
  %57 = load ptr, ptr %56, align 8, !tbaa !73
  store ptr %57, ptr %3, align 8, !tbaa !73
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %58

58:                                               ; preds = %53, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !63 {
  %5 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
  tail call void @_ZN11xalanc_1_109ElemEmptyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %5, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef %3)
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %5)
  ret ptr %5
}

declare void @_ZN11xalanc_1_109ElemEmptyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !57
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 24)
  store ptr %14, ptr %6, align 8, !tbaa !65
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %5, %9
  %18 = load ptr, ptr %6, align 8, !tbaa !65
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = icmp eq ptr %18, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !57
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %6, align 8, !tbaa !65
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !70
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !72
  br label %30

30:                                               ; preds = %17, %22
  %31 = load ptr, ptr %6, align 8, !tbaa !65
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
  %46 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %43, i64 %45
  %47 = icmp ugt ptr %46, %1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %98, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %34, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  %52 = icmp eq ptr %51, %31
  br i1 %52, label %53, label %33, !llvm.loop !102

53:                                               ; preds = %33, %49, %30
  %54 = phi ptr [ %20, %30 ], [ %34, %33 ], [ %51, %49 ]
  %55 = icmp eq ptr %31, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !105
  %58 = load ptr, ptr %57, align 8, !tbaa !48, !noalias !105
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !noalias !105
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %57, i64 noundef 24), !noalias !105
  store ptr %61, ptr %6, align 8, !tbaa !65, !noalias !105
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %61, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !70, !noalias !105
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %61, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !72, !noalias !105
  br label %64

64:                                               ; preds = %53, %56
  %65 = load ptr, ptr %6, align 8, !tbaa !65, !noalias !95
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !108
  %69 = load ptr, ptr %68, align 8, !tbaa !48, !noalias !108
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !108
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 24), !noalias !108
  store ptr %72, ptr %6, align 8, !tbaa !65, !noalias !108
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !70, !noalias !108
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !72, !noalias !108
  br label %75

75:                                               ; preds = %64, %67
  %76 = load ptr, ptr %6, align 8, !tbaa !65, !noalias !108
  %77 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !70, !noalias !108
  br label %79

79:                                               ; preds = %95, %75
  %80 = phi ptr [ %65, %75 ], [ %84, %95 ]
  %81 = icmp eq ptr %80, %78
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !72
  %85 = load ptr, ptr %84, align 8, !tbaa !73
  %86 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !77
  %88 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !87
  %90 = icmp ule ptr %89, %1
  %91 = zext i16 %87 to i64
  %92 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %89, i64 %91
  %93 = icmp ugt ptr %92, %1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load ptr, ptr %54, align 8, !tbaa !73
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %79, !llvm.loop !111

98:                                               ; preds = %41, %95, %79, %82, %2
  %99 = phi i1 [ false, %2 ], [ true, %82 ], [ false, %79 ], [ false, %95 ], [ true, %41 ]
  ret i1 %99
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !112
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !115

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !112
  %8 = load ptr, ptr %7, align 8, !tbaa !48, !noalias !112
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !112
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !112
  store ptr %11, ptr %3, align 8, !tbaa !65, !noalias !112
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !70, !noalias !112
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !72, !noalias !112
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !95
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !70, !noalias !112
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !115

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !57, !noalias !116
  %21 = load ptr, ptr %20, align 8, !tbaa !48, !noalias !116
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !116
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !116
  store ptr %24, ptr %3, align 8, !tbaa !65, !noalias !116
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !70, !noalias !116
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !72, !noalias !116
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !116
  %29 = load ptr, ptr %2, align 8, !tbaa !57
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !119

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !115

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_9ElemEmptyEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %33) #8
  %36 = load ptr, ptr %29, align 8, !tbaa !48
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !120
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !70, !noalias !121
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !124, !llvm.loop !125

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !65, !noalias !126
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !126
  %13 = load ptr, ptr %12, align 8, !tbaa !48, !noalias !126
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !126
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !126
  store ptr %16, ptr %8, align 8, !tbaa !65, !noalias !126
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !70, !noalias !126
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !72, !noalias !126
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !65, !noalias !126
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !72, !noalias !129
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !77
  %28 = icmp ult i16 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %30 = load ptr, ptr %5, align 8, !tbaa !57
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  store i16 %32, ptr %2, align 2, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_9ElemEmptyEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 2 dereferenceable(2) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !73
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !65, !noalias !132
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !57, !noalias !132
  %40 = load ptr, ptr %39, align 8, !tbaa !48, !noalias !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !132
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !132
  store ptr %43, ptr %35, align 8, !tbaa !65, !noalias !132
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !70, !noalias !132
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !72, !noalias !132
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !65, !noalias !132
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !72, !noalias !135
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
  %65 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %63, i64 %64
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !138
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57, !noalias !138
  %9 = load ptr, ptr %8, align 8, !tbaa !48, !noalias !138
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !138
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !138
  store ptr %12, ptr %3, align 8, !tbaa !65, !noalias !138
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !70, !noalias !138
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !72, !noalias !138
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !138
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72, !noalias !141
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !86
  %22 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %19, i64 0, i32 1
  store i16 %21, ptr %22, align 8, !tbaa !84
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !65, !noalias !144
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !144
  %9 = load ptr, ptr %8, align 8, !tbaa !48, !noalias !144
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !144
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !144
  store ptr %12, ptr %4, align 8, !tbaa !65, !noalias !144
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !70, !noalias !144
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !72, !noalias !144
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !65, !noalias !95
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !70, !noalias !144
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !147
  %22 = load ptr, ptr %21, align 8, !tbaa !48, !noalias !147
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !147
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !147
  store ptr %25, ptr %4, align 8, !tbaa !65, !noalias !147
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !70, !noalias !147
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !72, !noalias !147
  br label %28

28:                                               ; preds = %15, %20
  %29 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty>::NextBlock", ptr %1, i64 0, i32 1
  br label %30

30:                                               ; preds = %47, %28
  %31 = phi ptr [ %4, %28 ], [ %35, %47 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = icmp ne ptr %32, %18
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !77
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = icmp ule ptr %41, %1
  %43 = zext i16 %39 to i64
  %44 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %41, i64 %43
  %45 = icmp ugt ptr %44, %1
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, ptr %29, align 4, !tbaa !150
  %49 = icmp ne i32 %48, -2228259
  %50 = load i16, ptr %1, align 4
  %51 = icmp ugt i16 %50, %39
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %30, !llvm.loop !151

53:                                               ; preds = %34, %47, %30
  ret i1 %33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !62 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !115

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !70, !noalias !152
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !155
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !115

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !57, !noalias !155
  %14 = load ptr, ptr %13, align 8, !tbaa !48, !noalias !155
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !155
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !65, !noalias !155
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !70, !noalias !155
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !72, !noalias !155
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !155
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !61

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70, !noalias !158
  %27 = load ptr, ptr %0, align 8, !tbaa !57
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !161

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !162
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !163

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = load ptr, ptr %0, align 8, !tbaa !57
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !120

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !65
  %46 = load ptr, ptr %0, align 8, !tbaa !57
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !120

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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !164 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !165

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !57
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !166
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !72
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !65
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !167

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !57
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !65
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !72
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !65
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !168
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !57, !noalias !168
  %8 = load ptr, ptr %7, align 8, !tbaa !48, !noalias !168
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !168
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !168
  store ptr %11, ptr %3, align 8, !tbaa !65, !noalias !168
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !70, !noalias !168
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !72, !noalias !168
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !168
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !162
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !57
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !162
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %31, ptr %29, align 8, !tbaa !73
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  store ptr %34, ptr %32, align 8, !tbaa !73
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !73
  %36 = load ptr, ptr %33, align 8, !tbaa !72
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !70
  store ptr %29, ptr %33, align 8, !tbaa !72
  store ptr %30, ptr %16, align 8, !tbaa !162
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_9ElemEmptyEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !166
  %9 = load i16, ptr %3, align 2, !tbaa !79
  store ptr %2, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i16 0, ptr %10, align 8, !tbaa !74
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i16 %9, ptr %11, align 2, !tbaa !77
  %12 = zext i16 %9 to i64
  %13 = mul nuw nsw i64 %12, 336
  %14 = load ptr, ptr %2, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
          to label %18 unwind label %34, !prof !166

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !87
  %20 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 1
  store i16 0, ptr %20, align 8, !tbaa !84
  %21 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %8, i64 0, i32 2
  store i16 0, ptr %21, align 2, !tbaa !86
  %22 = load i16, ptr %11, align 2, !tbaa !77
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24, !prof !119

24:                                               ; preds = %18
  %25 = zext i16 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %29, %26 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %17, i64 %27
  %29 = add nuw nsw i64 %27, 1
  %30 = trunc i64 %29 to i16
  store i16 %30, ptr %28, align 4, !tbaa !89
  %31 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty>::NextBlock", ptr %28, i64 0, i32 1
  store i32 -2228259, ptr %31, align 4, !tbaa !150
  %32 = icmp eq i64 %29, %25
  br i1 %32, label %33, label %26, !prof !171, !llvm.loop !172

33:                                               ; preds = %26, %18
  store ptr %8, ptr %1, align 8, !tbaa !73
  ret ptr %8

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %0, align 8, !tbaa !48
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
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !173
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !115

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !57, !noalias !173
  %7 = load ptr, ptr %6, align 8, !tbaa !48, !noalias !173
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !173
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !173
  store ptr %10, ptr %2, align 8, !tbaa !65, !noalias !173
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !70, !noalias !173
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !72, !noalias !173
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !173
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !70, !noalias !173
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !176
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !179

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !57, !noalias !176
  %23 = load ptr, ptr %22, align 8, !tbaa !48, !noalias !176
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !176
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !176
  store ptr %26, ptr %2, align 8, !tbaa !65, !noalias !176
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !70, !noalias !176
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !72, !noalias !176
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !176
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !163

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !70
  %39 = load ptr, ptr %34, align 8, !tbaa !70
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !72
  store ptr null, ptr %36, align 8, !tbaa !72
  %41 = load ptr, ptr %33, align 8, !tbaa !162
  store ptr %41, ptr %34, align 8, !tbaa !70
  store ptr %18, ptr %33, align 8, !tbaa !162
  br label %17, !llvm.loop !180

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_9ElemEmptyEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !77
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !61
  br i1 %8, label %9, label %11, !prof !115

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %24

11:                                               ; preds = %42, %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !115

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !181
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %13)
          to label %23 unwind label %20, !prof !120

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
  %28 = load ptr, ptr %10, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %28, i64 %25
  %30 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty>::NextBlock", ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !150
  %32 = icmp ne i32 %31, -2228259
  %33 = load i16, ptr %29, align 4
  %34 = icmp ugt i16 %33, %26
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load ptr, ptr %10, align 8, !tbaa !87
  %38 = getelementptr inbounds %"class.xalanc_1_10::ElemEmpty", ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(336) %38) #8
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
  %50 = select i1 %47, i1 %49, i1 false, !prof !61
  br i1 %50, label %24, label %11, !prof !115, !llvm.loop !182
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !183
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !115

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !57, !noalias !183
  %8 = load ptr, ptr %7, align 8, !tbaa !48, !noalias !183
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !183
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !183
  store ptr %11, ptr %3, align 8, !tbaa !65, !noalias !183
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !70, !noalias !183
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !72, !noalias !183
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !65, !noalias !183
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !70, !noalias !183
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !162
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !61

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  br label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 24), !prof !166
  store ptr %29, ptr %18, align 8, !tbaa !162
  br label %30

30:                                               ; preds = %21, %24
  %31 = phi ptr [ %19, %21 ], [ %29, %24 ]
  %32 = phi ptr [ %23, %21 ], [ null, %24 ]
  %33 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %33, ptr %31, align 8, !tbaa !73
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  store ptr %36, ptr %34, align 8, !tbaa !73
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %31, i64 0, i32 2
  store ptr %17, ptr %37, align 8, !tbaa !73
  %38 = load ptr, ptr %35, align 8, !tbaa !72
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %38, i64 0, i32 2
  store ptr %31, ptr %39, align 8, !tbaa !70
  store ptr %31, ptr %35, align 8, !tbaa !72
  store ptr %32, ptr %18, align 8, !tbaa !162
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !57, !noalias !186
  %7 = load ptr, ptr %6, align 8, !tbaa !48, !noalias !186
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !186
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !186
  store ptr %10, ptr %2, align 8, !tbaa !65, !noalias !186
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !70, !noalias !186
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !72, !noalias !186
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !65, !noalias !186
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !70, !noalias !186
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %20, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !70
  %22 = load ptr, ptr %17, align 8, !tbaa !70
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemEmpty> *>::Node", ptr %22, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !72
  store ptr null, ptr %19, align 8, !tbaa !72
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !162
  store ptr %25, ptr %17, align 8, !tbaa !70
  store ptr %16, ptr %24, align 8, !tbaa !162
  ret void
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
!35 = !{ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5emptyEv, i64 15}
!39 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_9ElemEmptyEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE10push_frontERKS4_, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE13allocateBlockEv, i64 15}
!42 = !{ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_109ElemEmptyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE, i64 15}
!43 = !{ptr @_ZN11xalanc_1_1023XalanElemEmptyAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEE16commitAllocationEPS1_, i64 15}
!44 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_9ElemEmptyEtED2Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5clearEv, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_9ElemEmptyENS_18ReusableArenaBlockIS1_tEEEE", !53, i64 8, !55, i64 16}
!53 = !{!"short", !54, i64 0}
!54 = !{!"omnipotent char", !50, i64 0}
!55 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"any pointer", !54, i64 0}
!57 = !{!55, !56, i64 0}
!58 = !{!59, !60, i64 40}
!59 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_9ElemEmptyEEE", !52, i64 0, !60, i64 40}
!60 = !{!"bool", !54, i64 0}
!61 = !{!"branch_weights", i32 1, i32 0}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!"function_entry_count", i64 15}
!64 = !{!"branch_weights", i32 1, i32 14}
!65 = !{!55, !56, i64 8}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!68 = distinct !{!68, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!69 = !{!"branch_weights", i32 0, i32 14}
!70 = !{!71, !56, i64 16}
!71 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE4NodeE", !56, i64 0, !56, i64 8, !56, i64 16}
!72 = !{!71, !56, i64 8}
!73 = !{!56, !56, i64 0}
!74 = !{!75, !53, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_9ElemEmptyEtEE", !76, i64 0, !53, i64 8, !53, i64 10, !56, i64 16}
!76 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_9ElemEmptyEEE", !56, i64 0}
!77 = !{!75, !53, i64 10}
!78 = !{!"branch_weights", i32 14, i32 0}
!79 = !{!53, !53, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!82 = distinct !{!82, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!83 = !{!"branch_weights", i32 0, i32 15}
!84 = !{!85, !53, i64 24}
!85 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_9ElemEmptyEtEE", !75, i64 0, !53, i64 24, !53, i64 26}
!86 = !{!85, !53, i64 26}
!87 = !{!75, !56, i64 16}
!88 = !{!"branch_weights", i32 15, i32 0}
!89 = !{!90, !53, i64 0}
!90 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_9ElemEmptyEtE9NextBlockE", !53, i64 0, !91, i64 4}
!91 = !{!"int", !54, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!94 = distinct !{!94, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!95 = !{}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!102 = distinct !{!102, !103, !104}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE6rbeginEv: argument 0"}
!107 = distinct !{!107, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE6rbeginEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE4rendEv: argument 0"}
!110 = distinct !{!110, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE4rendEv"}
!111 = distinct !{!111, !103, !104}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!115 = !{!"branch_weights", i32 0, i32 1}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!118 = distinct !{!118, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!119 = !{!"branch_weights", i32 1, i32 127}
!120 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!123 = distinct !{!123, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEppEv"}
!124 = !{!"branch_weights", i32 127, i32 1}
!125 = distinct !{!125, !103, !104}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!128 = distinct !{!128, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!131 = distinct !{!131, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!140 = distinct !{!140, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!143 = distinct !{!143, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE4rendEv: argument 0"}
!146 = distinct !{!146, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE4rendEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE6rbeginEv: argument 0"}
!149 = distinct !{!149, !"_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE6rbeginEv"}
!150 = !{!90, !91, i64 4}
!151 = distinct !{!151, !103, !104}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!154 = distinct !{!154, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!157 = distinct !{!157, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!160 = distinct !{!160, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEEENS_9XalanListIS5_E4NodeEEppEi"}
!161 = distinct !{!161, !103, !104}
!162 = !{!55, !56, i64 16}
!163 = !{!"branch_weights", i32 1, i32 1}
!164 = !{!"function_entry_count", i64 30}
!165 = !{!"branch_weights", i32 1, i32 29}
!166 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!167 = !{!"branch_weights", i32 0, i32 30}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!170 = distinct !{!170, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!171 = !{!"branch_weights", i32 127, i32 1153}
!172 = distinct !{!172, !103, !104}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!175 = distinct !{!175, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv: argument 0"}
!178 = distinct !{!178, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE3endEv"}
!179 = !{!"branch_weights", i32 0, i32 2}
!180 = distinct !{!180, !103, !104}
!181 = !{!76, !56, i64 0}
!182 = distinct !{!182, !103, !104}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!185 = distinct !{!185, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv: argument 0"}
!188 = distinct !{!188, !"_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_9ElemEmptyEtEEE5beginEv"}
