; ModuleID = 'XalanAVTPartSimpleAllocator.cpp'
source_filename = "XalanAVTPartSimpleAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::AVTPartSimple" = type <{ %"class.xalanc_1_10::AVTPart", ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::AVTPart" = type { ptr }

$_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_13AVTPartSimpleEmED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_13AVTPartSimpleEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [75 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !51

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocator6createERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !52 {
  %5 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN11xalanc_1_1013AVTPartSimpleC1ERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 1 %1, ptr noundef %2, i32 noundef %3)
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53, !noalias !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50, !noalias !54
  %12 = load ptr, ptr %11, align 8, !tbaa !41, !noalias !54
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !54
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24), !noalias !54
  store ptr %15, ptr %6, align 8, !tbaa !53, !noalias !54
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !57, !noalias !54
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !59, !noalias !54
  br label %18

18:                                               ; preds = %4, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !53, !noalias !54
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !59, !noalias !60
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !64
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !52 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !50, !noalias !67
  %13 = load ptr, ptr %12, align 8, !tbaa !41, !noalias !67
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !67
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !67
  store ptr %16, ptr %8, align 8, !tbaa !53, !noalias !67
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !57, !noalias !67
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !59, !noalias !67
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !67
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59, !noalias !70
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !64
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !73
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %30 = load ptr, ptr %5, align 8, !tbaa !50
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 %32, ptr %2, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_13AVTPartSimpleEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !63
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !53, !noalias !75
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !50, !noalias !75
  %40 = load ptr, ptr %39, align 8, !tbaa !41, !noalias !75
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !75
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !75
  store ptr %43, ptr %35, align 8, !tbaa !53, !noalias !75
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !57, !noalias !75
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !59, !noalias !75
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !53, !noalias !75
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !59, !noalias !78
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !64
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !73
  %55 = icmp eq i64 %52, %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %57, i64 %52
  %59 = select i1 %55, ptr null, ptr %58
  ret ptr %59
}

declare void @_ZN11xalanc_1_1013AVTPartSimpleC1ERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 1, ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50, !noalias !81
  %9 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !81
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !81
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !81
  store ptr %12, ptr %3, align 8, !tbaa !53, !noalias !81
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !57, !noalias !81
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !59, !noalias !81
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !81
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !59, !noalias !84
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !50, !noalias !87
  %9 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !87
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !87
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !87
  store ptr %12, ptr %4, align 8, !tbaa !53, !noalias !87
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !57, !noalias !87
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !59, !noalias !87
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !90
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !57, !noalias !87
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !50, !noalias !91
  %22 = load ptr, ptr %21, align 8, !tbaa !41, !noalias !91
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !91
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !91
  store ptr %25, ptr %4, align 8, !tbaa !53, !noalias !91
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !57, !noalias !91
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !59, !noalias !91
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !91
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !59
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !73
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !94
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !95

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !102

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !50, !noalias !99
  %8 = load ptr, ptr %7, align 8, !tbaa !41, !noalias !99
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !99
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !103, !noalias !99
  store ptr %11, ptr %3, align 8, !tbaa !53, !noalias !99
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !57, !noalias !99
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !59, !noalias !99
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !90
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57, !noalias !99
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !104

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !50, !noalias !105
  %21 = load ptr, ptr %20, align 8, !tbaa !41, !noalias !105
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !105
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !105
  store ptr %24, ptr %3, align 8, !tbaa !53, !noalias !105
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !57, !noalias !105
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !59, !noalias !105
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !105
  %29 = load ptr, ptr %2, align 8, !tbaa !50
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !51

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_13AVTPartSimpleEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #9
  %36 = load ptr, ptr %29, align 8, !tbaa !41
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !57, !noalias !108
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !51, !llvm.loop !111

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !104

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !50, !noalias !112
  %7 = load ptr, ptr %6, align 8, !tbaa !41, !noalias !112
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !112
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !112
  store ptr %10, ptr %2, align 8, !tbaa !53, !noalias !112
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !57, !noalias !112
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !59, !noalias !112
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !112
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57, !noalias !112
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !115
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !104

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !50, !noalias !115
  %23 = load ptr, ptr %22, align 8, !tbaa !41, !noalias !115
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !115
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !115
  store ptr %26, ptr %2, align 8, !tbaa !53, !noalias !115
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !57, !noalias !115
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !59, !noalias !115
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !115
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !118

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !57
  %39 = load ptr, ptr %34, align 8, !tbaa !57
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !59
  store ptr null, ptr %36, align 8, !tbaa !59
  %41 = load ptr, ptr %33, align 8, !tbaa !119
  store ptr %41, ptr %34, align 8, !tbaa !57
  store ptr %18, ptr %33, align 8, !tbaa !119
  br label %17, !llvm.loop !120

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_13AVTPartSimpleEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !121
  %13 = load ptr, ptr %12, align 8, !tbaa !41
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
  %22 = load ptr, ptr %6, align 8, !tbaa !94
  %23 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(20) %23) #9
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !llvm.loop !122
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !52 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !123

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57, !noalias !124
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !127
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !123

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !50, !noalias !127
  %14 = load ptr, ptr %13, align 8, !tbaa !41, !noalias !127
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !127
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !53, !noalias !127
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !57, !noalias !127
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !59, !noalias !127
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !127
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !51

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !57, !noalias !130
  %27 = load ptr, ptr %0, align 8, !tbaa !50
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !133

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !119
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !51

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = load ptr, ptr %0, align 8, !tbaa !50
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !53
  %46 = load ptr, ptr %0, align 8, !tbaa !50
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !134

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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24)
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !53
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !50
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !53
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !57
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !59
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !53
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !50, !noalias !135
  %8 = load ptr, ptr %7, align 8, !tbaa !41, !noalias !135
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !135
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !135
  store ptr %11, ptr %3, align 8, !tbaa !53, !noalias !135
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !57, !noalias !135
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !59, !noalias !135
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !135
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !50
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24)
  store ptr %27, ptr %16, align 8, !tbaa !119
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !63
  store ptr %31, ptr %29, align 8, !tbaa !63
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  store ptr %34, ptr %32, align 8, !tbaa !63
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !63
  %36 = load ptr, ptr %33, align 8, !tbaa !59
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !57
  store ptr %29, ptr %33, align 8, !tbaa !59
  store ptr %30, ptr %16, align 8, !tbaa !119
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_13AVTPartSimpleEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !52 {
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32)
  %9 = load i64, ptr %3, align 8, !tbaa !74
  store ptr %2, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !73
  %12 = mul i64 %9, 24
  %13 = load ptr, ptr %2, align 8, !tbaa !41
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12)
          to label %17 unwind label %19

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %16, ptr %18, align 8, !tbaa !94
  store ptr %8, ptr %1, align 8, !tbaa !63
  ret ptr %8

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %0, align 8, !tbaa !41
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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv, i64 2}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !46, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE", !46, i64 8, !48, i64 16}
!46 = !{!"long", !47, i64 0}
!47 = !{!"omnipotent char", !43, i64 0}
!48 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"any pointer", !47, i64 0}
!50 = !{!48, !49, i64 0}
!51 = !{!"branch_weights", i32 1, i32 0}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!48, !49, i64 8}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!56 = distinct !{!56, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!57 = !{!58, !49, i64 16}
!58 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE4NodeE", !49, i64 0, !49, i64 8, !49, i64 16}
!59 = !{!58, !49, i64 8}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!62 = distinct !{!62, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!63 = !{!49, !49, i64 0}
!64 = !{!65, !46, i64 8}
!65 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_13AVTPartSimpleEmEE", !66, i64 0, !46, i64 8, !46, i64 16, !49, i64 24}
!66 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_13AVTPartSimpleEEE", !49, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!69 = distinct !{!69, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!72 = distinct !{!72, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!73 = !{!65, !46, i64 16}
!74 = !{!46, !46, i64 0}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!80 = distinct !{!80, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!83 = distinct !{!83, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!86 = distinct !{!86, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE4rendEv: argument 0"}
!89 = distinct !{!89, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE4rendEv"}
!90 = !{}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE6rbeginEv: argument 0"}
!93 = distinct !{!93, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE6rbeginEv"}
!94 = !{!65, !49, i64 24}
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!"function_entry_count", i64 2}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv"}
!102 = !{!"branch_weights", i32 1, i32 1}
!103 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!104 = !{!"branch_weights", i32 0, i32 2}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!107 = distinct !{!107, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!110 = distinct !{!110, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!111 = distinct !{!111, !96, !97}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!117 = distinct !{!117, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!118 = !{!"branch_weights", i32 2, i32 0}
!119 = !{!48, !49, i64 16}
!120 = distinct !{!120, !96, !97}
!121 = !{!66, !49, i64 0}
!122 = distinct !{!122, !96, !97}
!123 = !{!"branch_weights", i32 0, i32 1}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv: argument 0"}
!126 = distinct !{!126, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!129 = distinct !{!129, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!132 = distinct !{!132, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!133 = distinct !{!133, !96, !97}
!134 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
