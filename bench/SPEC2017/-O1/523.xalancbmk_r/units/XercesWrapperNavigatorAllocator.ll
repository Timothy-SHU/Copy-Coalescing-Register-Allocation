; ModuleID = 'XercesWrapperNavigatorAllocator.cpp'
source_filename = "XercesWrapperNavigatorAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

$_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_22XercesWrapperNavigatorEmED2Ev = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [84 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN11xalanc_1_1022XercesWrapperNavigatorC1EPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45, !noalias !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !44, !noalias !46
  %10 = load ptr, ptr %9, align 8, !tbaa !35, !noalias !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !46
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !46
  store ptr %13, ptr %4, align 8, !tbaa !45, !noalias !46
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !49, !noalias !46
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !51, !noalias !46
  br label %16

16:                                               ; preds = %2, %7
  %17 = load ptr, ptr %4, align 8, !tbaa !45, !noalias !46
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !51, !noalias !52
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !56
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45, !noalias !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !44, !noalias !59
  %13 = load ptr, ptr %12, align 8, !tbaa !35, !noalias !59
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !59
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !59
  store ptr %16, ptr %8, align 8, !tbaa !45, !noalias !59
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !49, !noalias !59
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !51, !noalias !59
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !45, !noalias !59
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !51, !noalias !62
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !65
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %30 = load ptr, ptr %5, align 8, !tbaa !44
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 %32, ptr %2, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !55
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !45, !noalias !67
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !44, !noalias !67
  %40 = load ptr, ptr %39, align 8, !tbaa !35, !noalias !67
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !67
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !67
  store ptr %43, ptr %35, align 8, !tbaa !45, !noalias !67
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !49, !noalias !67
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !51, !noalias !67
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !45, !noalias !67
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !51, !noalias !70
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !56
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !65
  %55 = icmp eq i64 %52, %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %57, i64 %52
  %59 = select i1 %55, ptr null, ptr %58
  ret ptr %59
}

declare void @_ZN11xalanc_1_1022XercesWrapperNavigatorC1EPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44, !noalias !73
  %9 = load ptr, ptr %8, align 8, !tbaa !35, !noalias !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !73
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !73
  store ptr %12, ptr %3, align 8, !tbaa !45, !noalias !73
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !49, !noalias !73
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !51, !noalias !73
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !73
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51, !noalias !76
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !56
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !44, !noalias !79
  %8 = load ptr, ptr %7, align 8, !tbaa !35, !noalias !79
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !79
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !79
  store ptr %11, ptr %3, align 8, !tbaa !45, !noalias !79
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !49, !noalias !79
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !51, !noalias !79
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !82
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49, !noalias !79
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !44, !noalias !83
  %21 = load ptr, ptr %20, align 8, !tbaa !35, !noalias !83
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !83
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !83
  store ptr %24, ptr %3, align 8, !tbaa !45, !noalias !83
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !49, !noalias !83
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !51, !noalias !83
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !83
  %29 = load ptr, ptr %2, align 8, !tbaa !44
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_22XercesWrapperNavigatorEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #9
  %36 = load ptr, ptr %29, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !49, !noalias !86
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !llvm.loop !89

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45, !noalias !92
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !44, !noalias !92
  %9 = load ptr, ptr %8, align 8, !tbaa !35, !noalias !92
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !92
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !92
  store ptr %12, ptr %4, align 8, !tbaa !45, !noalias !92
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !49, !noalias !92
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !51, !noalias !92
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !45, !noalias !82
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !49, !noalias !92
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !44, !noalias !95
  %22 = load ptr, ptr %21, align 8, !tbaa !35, !noalias !95
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !95
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !95
  store ptr %25, ptr %4, align 8, !tbaa !45, !noalias !95
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !49, !noalias !95
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !51, !noalias !95
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !45, !noalias !95
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !65
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !99

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49, !noalias !100
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !44, !noalias !103
  %14 = load ptr, ptr %13, align 8, !tbaa !35, !noalias !103
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !103
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !45, !noalias !103
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !49, !noalias !103
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !51, !noalias !103
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !103
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !49, !noalias !106
  %27 = load ptr, ptr %0, align 8, !tbaa !44
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !109

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = load ptr, ptr %0, align 8, !tbaa !44
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !45
  %46 = load ptr, ptr %0, align 8, !tbaa !44
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55

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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24)
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !44
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !45
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !49
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !51
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !45
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !111
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !44, !noalias !111
  %8 = load ptr, ptr %7, align 8, !tbaa !35, !noalias !111
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !111
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !111
  store ptr %11, ptr %3, align 8, !tbaa !45, !noalias !111
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !49, !noalias !111
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !51, !noalias !111
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !111
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !44
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !110
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !55
  store ptr %31, ptr %29, align 8, !tbaa !55
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  store ptr %34, ptr %32, align 8, !tbaa !55
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !55
  %36 = load ptr, ptr %33, align 8, !tbaa !51
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !49
  store ptr %29, ptr %33, align 8, !tbaa !51
  store ptr %30, ptr %16, align 8, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32)
  %9 = load i64, ptr %3, align 8, !tbaa !66
  store ptr %2, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !65
  %12 = shl i64 %9, 6
  %13 = load ptr, ptr %2, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12)
          to label %17 unwind label %19

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %16, ptr %18, align 8, !tbaa !98
  store ptr %8, ptr %1, align 8, !tbaa !55
  ret ptr %8

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %27 unwind label %24

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #10
  unreachable

27:                                               ; preds = %19
  resume { ptr, i32 } %20
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !44, !noalias !114
  %7 = load ptr, ptr %6, align 8, !tbaa !35, !noalias !114
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !114
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !114
  store ptr %10, ptr %2, align 8, !tbaa !45, !noalias !114
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !49, !noalias !114
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !51, !noalias !114
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !114
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !49, !noalias !114
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !117
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !44, !noalias !117
  %24 = load ptr, ptr %23, align 8, !tbaa !35, !noalias !117
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !117
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !117
  store ptr %27, ptr %2, align 8, !tbaa !45, !noalias !117
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !49, !noalias !117
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !51, !noalias !117
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !117
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !49
  %39 = load ptr, ptr %34, align 8, !tbaa !49
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XercesWrapperNavigator> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !51
  store ptr null, ptr %36, align 8, !tbaa !51
  %41 = load ptr, ptr %17, align 8, !tbaa !110
  store ptr %41, ptr %34, align 8, !tbaa !49
  store ptr %19, ptr %17, align 8, !tbaa !110
  br label %18, !llvm.loop !120

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_22XercesWrapperNavigatorEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !56
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !121
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #10
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !98
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(64) %23) #9
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !56
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !llvm.loop !122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE", !40, i64 8, !42, i64 16}
!40 = !{!"long", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"any pointer", !41, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!42, !43, i64 8}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!48 = distinct !{!48, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!49 = !{!50, !43, i64 16}
!50 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE4NodeE", !43, i64 0, !43, i64 8, !43, i64 16}
!51 = !{!50, !43, i64 8}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!54 = distinct !{!54, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!55 = !{!43, !43, i64 0}
!56 = !{!57, !40, i64 8}
!57 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_22XercesWrapperNavigatorEmEE", !58, i64 0, !40, i64 8, !40, i64 16, !43, i64 24}
!58 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_22XercesWrapperNavigatorEEE", !43, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!61 = distinct !{!61, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!64 = distinct !{!64, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!65 = !{!57, !40, i64 16}
!66 = !{!40, !40, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!69 = distinct !{!69, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!72 = distinct !{!72, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!75 = distinct !{!75, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!78 = distinct !{!78, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5beginEv: argument 0"}
!81 = distinct !{!81, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5beginEv"}
!82 = !{}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!85 = distinct !{!85, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!88 = distinct !{!88, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE4rendEv: argument 0"}
!94 = distinct !{!94, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE4rendEv"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE6rbeginEv: argument 0"}
!97 = distinct !{!97, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE6rbeginEv"}
!98 = !{!57, !43, i64 24}
!99 = distinct !{!99, !90, !91}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5beginEv"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!105 = distinct !{!105, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!108 = distinct !{!108, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!109 = distinct !{!109, !90, !91}
!110 = !{!42, !43, i64 16}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!113 = distinct !{!113, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5beginEv: argument 0"}
!116 = distinct !{!116, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE5beginEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv: argument 0"}
!119 = distinct !{!119, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEE3endEv"}
!120 = distinct !{!120, !90, !91}
!121 = !{!58, !43, i64 0}
!122 = distinct !{!122, !90, !91}
