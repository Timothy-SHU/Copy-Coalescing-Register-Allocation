; ModuleID = 'XPathAllocator.cpp'
source_filename = "XPathAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector", i32, %"class.xalanc_1_10::XalanVector.0", i32, ptr, %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_5XPathEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_5XPathEmED2Ev = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [66 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1014XPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1014XPathAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1014XPathAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014XPathAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1014XPathAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014XPathAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !59

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 !prof !60 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  tail call void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16, !prof !65

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !62
  %10 = load ptr, ptr %9, align 8, !tbaa !49, !noalias !62
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !62
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !62
  store ptr %13, ptr %5, align 8, !tbaa !61, !noalias !62
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !66, !noalias !62
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !68, !noalias !62
  br label %16

16:                                               ; preds = %1, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !62
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !68, !noalias !69
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !73
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !73
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !60 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7, !prof !76

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19, !prof !80

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !77
  %13 = load ptr, ptr %12, align 8, !tbaa !49, !noalias !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !77
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !77
  store ptr %16, ptr %8, align 8, !tbaa !61, !noalias !77
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !66, !noalias !77
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !68, !noalias !77
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !77
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !68, !noalias !81
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !73
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !84
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %34, label %29, !prof !85

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %30 = load ptr, ptr %5, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 %32, ptr %2, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_5XPathEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !72
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !61, !noalias !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46, !prof !65

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !58, !noalias !87
  %40 = load ptr, ptr %39, align 8, !tbaa !49, !noalias !87
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !87
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !87
  store ptr %43, ptr %35, align 8, !tbaa !61, !noalias !87
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !66, !noalias !87
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !68, !noalias !87
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !61, !noalias !87
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !68, !noalias !90
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !73
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !84
  %55 = icmp eq i64 %52, %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %57, i64 %52
  %59 = select i1 %55, ptr null, ptr %58, !prof !65
  ret ptr %59
}

declare void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !93 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !94
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58, !noalias !94
  %9 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !94
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !94
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !94
  store ptr %12, ptr %3, align 8, !tbaa !61, !noalias !94
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !66, !noalias !94
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !68, !noalias !94
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !94
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !68, !noalias !97
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !73
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 !prof !100 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !105

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !102
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !102
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !102
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !102
  store ptr %11, ptr %3, align 8, !tbaa !61, !noalias !102
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !66, !noalias !102
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !68, !noalias !102
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !106
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !66, !noalias !102
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !105

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !58, !noalias !107
  %21 = load ptr, ptr %20, align 8, !tbaa !49, !noalias !107
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !107
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !107
  store ptr %24, ptr %3, align 8, !tbaa !61, !noalias !107
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !66, !noalias !107
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !68, !noalias !107
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !107
  %29 = load ptr, ptr %2, align 8, !tbaa !58
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !110

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !111

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_5XPathEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #10
  %36 = load ptr, ptr %29, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !112
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !66, !noalias !113
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !116, !llvm.loop !117

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !93 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !93 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !120
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !120
  %9 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !120
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !120
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !120
  store ptr %12, ptr %4, align 8, !tbaa !61, !noalias !120
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !66, !noalias !120
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !68, !noalias !120
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !106
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !66, !noalias !120
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !58, !noalias !123
  %22 = load ptr, ptr %21, align 8, !tbaa !49, !noalias !123
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !123
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !123
  store ptr %25, ptr %4, align 8, !tbaa !61, !noalias !123
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !66, !noalias !123
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !68, !noalias !123
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !123
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !73
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !84
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !126
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !127

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !93 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !128

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !66, !noalias !129
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !132
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !128

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !132
  %14 = load ptr, ptr %13, align 8, !tbaa !49, !noalias !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !132
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !61, !noalias !132
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !66, !noalias !132
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !68, !noalias !132
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !132
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !59

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !66, !noalias !135
  %27 = load ptr, ptr %0, align 8, !tbaa !58
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !138

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !139
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !140

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = load ptr, ptr %0, align 8, !tbaa !58
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !112

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !61
  %46 = load ptr, ptr %0, align 8, !tbaa !58
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !141

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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !76

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !142
  store ptr %10, ptr %2, align 8, !tbaa !61
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !65

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !61
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !66
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !61
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !143 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !144
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !111

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !144
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !144
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !144
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !144
  store ptr %11, ptr %3, align 8, !tbaa !61, !noalias !144
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !66, !noalias !144
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !68, !noalias !144
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !144
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !147

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !58
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !prof !148
  store ptr %27, ptr %16, align 8, !tbaa !139
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %31, ptr %29, align 8, !tbaa !72
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %34, ptr %32, align 8, !tbaa !72
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !72
  %36 = load ptr, ptr %33, align 8, !tbaa !68
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !66
  store ptr %29, ptr %33, align 8, !tbaa !68
  store ptr %30, ptr %16, align 8, !tbaa !139
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_5XPathEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !143 {
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !148
  %9 = load i64, ptr %3, align 8, !tbaa !86
  store ptr %2, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !84
  %12 = mul i64 %9, 136
  %13 = load ptr, ptr %2, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12)
          to label %17 unwind label %19, !prof !148

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %16, ptr %18, align 8, !tbaa !126
  store ptr %8, ptr %1, align 8, !tbaa !72
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !105

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !149
  %7 = load ptr, ptr %6, align 8, !tbaa !49, !noalias !149
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !149
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !149
  store ptr %10, ptr %2, align 8, !tbaa !61, !noalias !149
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !66, !noalias !149
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !68, !noalias !149
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !149
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !66, !noalias !149
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !152
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !155

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !152
  %24 = load ptr, ptr %23, align 8, !tbaa !49, !noalias !152
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !152
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !152
  store ptr %27, ptr %2, align 8, !tbaa !61, !noalias !152
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !66, !noalias !152
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !68, !noalias !152
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !152
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !156

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !66
  %39 = load ptr, ptr %34, align 8, !tbaa !66
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !68
  store ptr null, ptr %36, align 8, !tbaa !68
  %41 = load ptr, ptr %17, align 8, !tbaa !139
  store ptr %41, ptr %34, align 8, !tbaa !66
  store ptr %19, ptr %17, align 8, !tbaa !139
  br label %18, !llvm.loop !157

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_5XPathEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !73
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !158

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !111

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !159
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !112

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
  %22 = load ptr, ptr %6, align 8, !tbaa !126
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %22, i64 %21
  tail call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %23) #10
  %24 = add nuw i64 %21, 1
  %25 = load i64, ptr %2, align 8, !tbaa !73
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %20, label %7, !prof !160, !llvm.loop !161
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #7

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
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!35 = !{ptr @_ZN11xalanc_1_1014XPathAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014XPathAllocator6createEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv, i64 164}
!39 = !{ptr @_ZN11xalanc_1_1014XPathAllocator6createEv, ptr @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE, i64 164}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5emptyEv, i64 164}
!41 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_5XPathEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, i64 9}
!42 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE9push_backERKS4_, i64 9}
!43 = !{ptr @_ZN11xalanc_1_1014XPathAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv, i64 3}
!44 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_5XPathEmED2Ev, i64 9}
!45 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5clearEv, i64 4}
!46 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_5XPathEmED2Ev, ptr @_ZN11xalanc_1_105XPathD1Ev, i64 164}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE", !54, i64 8, !56, i64 16}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !51, i64 0}
!56 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"any pointer", !55, i64 0}
!58 = !{!56, !57, i64 0}
!59 = !{!"branch_weights", i32 1, i32 0}
!60 = !{!"function_entry_count", i64 164}
!61 = !{!56, !57, i64 8}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!64 = distinct !{!64, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!65 = !{!"branch_weights", i32 0, i32 164}
!66 = !{!67, !57, i64 16}
!67 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE4NodeE", !57, i64 0, !57, i64 8, !57, i64 16}
!68 = !{!67, !57, i64 8}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!71 = distinct !{!71, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!72 = !{!57, !57, i64 0}
!73 = !{!74, !54, i64 8}
!74 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_5XPathEmEE", !75, i64 0, !54, i64 8, !54, i64 16, !57, i64 24}
!75 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_5XPathEEE", !57, i64 0}
!76 = !{!"branch_weights", i32 1, i32 163}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!79 = distinct !{!79, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!80 = !{!"branch_weights", i32 0, i32 163}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!83 = distinct !{!83, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!84 = !{!74, !54, i64 16}
!85 = !{!"branch_weights", i32 155, i32 8}
!86 = !{!54, !54, i64 0}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!89 = distinct !{!89, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!92 = distinct !{!92, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!93 = !{!"function_entry_count", i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!96 = distinct !{!96, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!99 = distinct !{!99, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!100 = !{!"function_entry_count", i64 3}
!101 = !{!"function_entry_count", i64 4}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5beginEv: argument 0"}
!104 = distinct !{!104, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5beginEv"}
!105 = !{!"branch_weights", i32 0, i32 4}
!106 = !{}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!109 = distinct !{!109, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!110 = !{!"branch_weights", i32 1, i32 127}
!111 = !{!"branch_weights", i32 0, i32 9}
!112 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!115 = distinct !{!115, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!116 = !{!"branch_weights", i32 127, i32 161}
!117 = distinct !{!117, !118, !119}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE4rendEv: argument 0"}
!122 = distinct !{!122, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE4rendEv"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE6rbeginEv: argument 0"}
!125 = distinct !{!125, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE6rbeginEv"}
!126 = !{!74, !57, i64 24}
!127 = distinct !{!127, !118, !119}
!128 = !{!"branch_weights", i32 0, i32 1}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5beginEv: argument 0"}
!131 = distinct !{!131, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5beginEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_5XPathEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!138 = distinct !{!138, !118, !119}
!139 = !{!56, !57, i64 16}
!140 = !{!"branch_weights", i32 1, i32 9}
!141 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!142 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!143 = !{!"function_entry_count", i64 9}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!147 = !{!"branch_weights", i32 9, i32 0}
!148 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5beginEv: argument 0"}
!151 = distinct !{!151, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE5beginEv"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv: argument 0"}
!154 = distinct !{!154, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE3endEv"}
!155 = !{!"branch_weights", i32 0, i32 13}
!156 = !{!"branch_weights", i32 4, i32 9}
!157 = distinct !{!157, !118, !119}
!158 = !{!"branch_weights", i32 1, i32 143}
!159 = !{!75, !57, i64 0}
!160 = !{!"branch_weights", i32 2481, i32 143}
!161 = distinct !{!161, !118, !119}
