; ModuleID = 'XalanMatchPatternDataAllocator.cpp'
source_filename = "XalanMatchPatternDataAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMatchPatternData" = type <{ ptr, i64, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }

$_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_21XalanMatchPatternDataEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [83 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !59

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocator6createERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %6) local_unnamed_addr #2 align 2 !prof !60 {
  %8 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  store ptr %1, ptr %8, align 8, !tbaa !61
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %8, i64 0, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %8, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0, i32 noundef -1)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %8, i64 0, i32 3
  store ptr %4, ptr %13, align 8, !tbaa !68
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %8, i64 0, i32 4
  store ptr %5, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %8, i64 0, i32 5
  store i32 %6, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71, !noalias !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27, !prof !75

19:                                               ; preds = %7
  %20 = load ptr, ptr %9, align 8, !tbaa !58, !noalias !72
  %21 = load ptr, ptr %20, align 8, !tbaa !49, !noalias !72
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !72
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !72
  store ptr %24, ptr %16, align 8, !tbaa !71, !noalias !72
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !76, !noalias !72
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !78, !noalias !72
  br label %27

27:                                               ; preds = %7, %19
  %28 = load ptr, ptr %16, align 8, !tbaa !71, !noalias !72
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !78, !noalias !79
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %31, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !83
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !83
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !60 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7, !prof !86

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71, !noalias !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19, !prof !90

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !87
  %13 = load ptr, ptr %12, align 8, !tbaa !49, !noalias !87
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !87
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !87
  store ptr %16, ptr %8, align 8, !tbaa !71, !noalias !87
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !76, !noalias !87
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !78, !noalias !87
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !71, !noalias !87
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !78, !noalias !91
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !94
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %34, label %29, !prof !95

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %30 = load ptr, ptr %5, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 %32, ptr %2, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_21XalanMatchPatternDataEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !82
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !71, !noalias !97
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46, !prof !75

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !97
  %40 = load ptr, ptr %39, align 8, !tbaa !49, !noalias !97
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !97
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !97
  store ptr %43, ptr %35, align 8, !tbaa !71, !noalias !97
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !76, !noalias !97
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !78, !noalias !97
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !71, !noalias !97
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !78, !noalias !100
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !83
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !94
  %55 = icmp eq i64 %52, %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %57, i64 %52
  %59 = select i1 %55, ptr null, ptr %58, !prof !75
  ret ptr %59
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !103 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58, !noalias !104
  %9 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !104
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !104
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !104
  store ptr %12, ptr %3, align 8, !tbaa !71, !noalias !104
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !76, !noalias !104
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !78, !noalias !104
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !104
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !78, !noalias !107
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !83
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !103 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71, !noalias !110
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !110
  %9 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !110
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !110
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !110
  store ptr %12, ptr %4, align 8, !tbaa !71, !noalias !110
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !76, !noalias !110
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !78, !noalias !110
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !71, !noalias !113
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !76, !noalias !110
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !114
  %22 = load ptr, ptr %21, align 8, !tbaa !49, !noalias !114
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !114
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !114
  store ptr %25, ptr %4, align 8, !tbaa !71, !noalias !114
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !76, !noalias !114
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !78, !noalias !114
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !71, !noalias !114
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !83
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !94
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !117
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !118

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !122
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !125

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !122
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !122
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !122
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !122
  store ptr %11, ptr %3, align 8, !tbaa !71, !noalias !122
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !76, !noalias !122
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !78, !noalias !122
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !113
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !76, !noalias !122
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !125

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !126
  %21 = load ptr, ptr %20, align 8, !tbaa !49, !noalias !126
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !126
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !126
  store ptr %24, ptr %3, align 8, !tbaa !71, !noalias !126
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !76, !noalias !126
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !78, !noalias !126
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !126
  %29 = load ptr, ptr %2, align 8, !tbaa !58
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !129

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !130

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #10
  %36 = load ptr, ptr %29, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !131
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !76, !noalias !132
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !135, !llvm.loop !136

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71, !noalias !137
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !125

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !137
  %7 = load ptr, ptr %6, align 8, !tbaa !49, !noalias !137
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !137
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !137
  store ptr %10, ptr %2, align 8, !tbaa !71, !noalias !137
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !76, !noalias !137
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !78, !noalias !137
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !71, !noalias !137
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !76, !noalias !137
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !71, !noalias !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !143

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !140
  %24 = load ptr, ptr %23, align 8, !tbaa !49, !noalias !140
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !140
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !140
  store ptr %27, ptr %2, align 8, !tbaa !71, !noalias !140
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !76, !noalias !140
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !78, !noalias !140
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !71, !noalias !140
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !144

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !76
  %39 = load ptr, ptr %34, align 8, !tbaa !76
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !78
  store ptr null, ptr %36, align 8, !tbaa !78
  %41 = load ptr, ptr %17, align 8, !tbaa !145
  store ptr %41, ptr %34, align 8, !tbaa !76
  store ptr %19, ptr %17, align 8, !tbaa !145
  br label %18, !llvm.loop !146

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !148

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !130

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !149
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !131

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #11
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %24, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !117
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %22, i64 %21, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #10
  %24 = add nuw i64 %21, 1
  %25 = load i64, ptr %2, align 8, !tbaa !83
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %20, label %7, !prof !150, !llvm.loop !151
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !103 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !153
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !154

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = load ptr, ptr %0, align 8, !tbaa !156
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !157

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !158

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !76, !noalias !159
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !71, !noalias !162
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !158

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !162
  %14 = load ptr, ptr %13, align 8, !tbaa !49, !noalias !162
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !162
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !71, !noalias !162
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !76, !noalias !162
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !78, !noalias !162
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !71, !noalias !162
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !59

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !76, !noalias !165
  %27 = load ptr, ptr %0, align 8, !tbaa !58
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !168

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !145
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !169

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  %40 = load ptr, ptr %0, align 8, !tbaa !58
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !131

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !71
  %46 = load ptr, ptr %0, align 8, !tbaa !58
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !170

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
  tail call void @__clang_call_terminate(ptr %59) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !86

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !171
  store ptr %10, ptr %2, align 8, !tbaa !71
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !78
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !71
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !75

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !71
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !76
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !78
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !71
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !172
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !130

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !172
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !172
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !172
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !172
  store ptr %11, ptr %3, align 8, !tbaa !71, !noalias !172
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !76, !noalias !172
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !78, !noalias !172
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !71, !noalias !172
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !175

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !58
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !prof !176
  store ptr %27, ptr %16, align 8, !tbaa !145
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !82
  store ptr %31, ptr %29, align 8, !tbaa !82
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !78
  store ptr %34, ptr %32, align 8, !tbaa !82
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !82
  %36 = load ptr, ptr %33, align 8, !tbaa !78
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !76
  store ptr %29, ptr %33, align 8, !tbaa !78
  store ptr %30, ptr %16, align 8, !tbaa !145
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_21XalanMatchPatternDataEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !147 {
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !176
  %9 = load i64, ptr %3, align 8, !tbaa !96
  store ptr %2, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !83
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !94
  %12 = mul i64 %9, 80
  %13 = load ptr, ptr %2, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12)
          to label %17 unwind label %19, !prof !176

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %16, ptr %18, align 8, !tbaa !117
  store ptr %8, ptr %1, align 8, !tbaa !82
  ret ptr %8

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %0, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %27 unwind label %24

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #11
  unreachable

27:                                               ; preds = %19
  resume { ptr, i32 } %20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocator6createERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv, i64 24}
!39 = !{ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocator6createERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 24}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5emptyEv, i64 24}
!41 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_21XalanMatchPatternDataEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, i64 3}
!42 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE9push_backERKS4_, i64 3}
!43 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev, i64 3}
!44 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 24}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE", !54, i64 8, !56, i64 16}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !51, i64 0}
!56 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"any pointer", !55, i64 0}
!58 = !{!56, !57, i64 0}
!59 = !{!"branch_weights", i32 1, i32 0}
!60 = !{!"function_entry_count", i64 24}
!61 = !{!62, !57, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1021XalanMatchPatternDataE", !57, i64 0, !54, i64 8, !63, i64 16, !57, i64 56, !57, i64 64, !66, i64 72}
!63 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !64, i64 0, !65, i64 32}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !57, i64 0, !54, i64 8, !54, i64 16, !57, i64 24}
!65 = !{!"int", !55, i64 0}
!66 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !55, i64 0}
!67 = !{!62, !54, i64 8}
!68 = !{!62, !57, i64 56}
!69 = !{!62, !57, i64 64}
!70 = !{!62, !66, i64 72}
!71 = !{!56, !57, i64 8}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!74 = distinct !{!74, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!75 = !{!"branch_weights", i32 0, i32 24}
!76 = !{!77, !57, i64 16}
!77 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE4NodeE", !57, i64 0, !57, i64 8, !57, i64 16}
!78 = !{!77, !57, i64 8}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!81 = distinct !{!81, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!82 = !{!57, !57, i64 0}
!83 = !{!84, !54, i64 8}
!84 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_21XalanMatchPatternDataEmEE", !85, i64 0, !54, i64 8, !54, i64 16, !57, i64 24}
!85 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_21XalanMatchPatternDataEEE", !57, i64 0}
!86 = !{!"branch_weights", i32 1, i32 23}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!89 = distinct !{!89, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!90 = !{!"branch_weights", i32 0, i32 23}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!93 = distinct !{!93, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!94 = !{!84, !54, i64 16}
!95 = !{!"branch_weights", i32 21, i32 2}
!96 = !{!54, !54, i64 0}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!99 = distinct !{!99, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!102 = distinct !{!102, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!103 = !{!"function_entry_count", i64 0}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!106 = distinct !{!106, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!109 = distinct !{!109, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE4rendEv: argument 0"}
!112 = distinct !{!112, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE4rendEv"}
!113 = !{}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE6rbeginEv: argument 0"}
!116 = distinct !{!116, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE6rbeginEv"}
!117 = !{!84, !57, i64 24}
!118 = distinct !{!118, !119, !120}
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!"function_entry_count", i64 2}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv: argument 0"}
!124 = distinct !{!124, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv"}
!125 = !{!"branch_weights", i32 0, i32 2}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!128 = distinct !{!128, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!129 = !{!"branch_weights", i32 1, i32 127}
!130 = !{!"branch_weights", i32 0, i32 3}
!131 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!135 = !{!"branch_weights", i32 127, i32 65}
!136 = distinct !{!136, !119, !120}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv: argument 0"}
!139 = distinct !{!139, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!142 = distinct !{!142, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!143 = !{!"branch_weights", i32 0, i32 5}
!144 = !{!"branch_weights", i32 2, i32 3}
!145 = !{!56, !57, i64 16}
!146 = distinct !{!146, !119, !120}
!147 = !{!"function_entry_count", i64 3}
!148 = !{!"branch_weights", i32 1, i32 191}
!149 = !{!85, !57, i64 0}
!150 = !{!"branch_weights", i32 1345, i32 191}
!151 = distinct !{!151, !119, !120}
!152 = !{!"function_entry_count", i64 42470003}
!153 = !{!64, !54, i64 16}
!154 = !{!"branch_weights", i32 52000, i32 42418003}
!155 = !{!64, !57, i64 24}
!156 = !{!64, !57, i64 0}
!157 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!158 = !{!"branch_weights", i32 0, i32 1}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv: argument 0"}
!161 = distinct !{!161, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!164 = distinct !{!164, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!167 = distinct !{!167, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!168 = distinct !{!168, !119, !120}
!169 = !{!"branch_weights", i32 1, i32 3}
!170 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!171 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!174 = distinct !{!174, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!175 = !{!"branch_weights", i32 3, i32 0}
!176 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
