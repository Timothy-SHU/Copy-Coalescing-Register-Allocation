; ModuleID = 'XalanSourceTreeElementNANSAllocator.cpp'
source_filename = "XalanSourceTreeElementNANSAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeElementNANS" = type { %"class.xalanc_1_10::XalanSourceTreeElementNA", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeElementNA" = type { %"class.xalanc_1_10::XalanSourceTreeElement" }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5clearEv = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [88 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !42 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #11
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #2 align 2 !prof !54 {
  %11 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %12 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  tail call void @_ZN11xalanc_1_1026XalanSourceTreeElementNANSC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_S6_S6_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9)
  %14 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !55, !noalias !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25, !prof !59

17:                                               ; preds = %10
  %18 = load ptr, ptr %12, align 8, !tbaa !52, !noalias !56
  %19 = load ptr, ptr %18, align 8, !tbaa !43, !noalias !56
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8, !noalias !56
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef 24), !noalias !56
  store ptr %22, ptr %14, align 8, !tbaa !55, !noalias !56
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %22, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !60, !noalias !56
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %22, i64 0, i32 1
  store ptr %22, ptr %24, align 8, !tbaa !62, !noalias !56
  br label %25

25:                                               ; preds = %10, %17
  %26 = load ptr, ptr %14, align 8, !tbaa !55, !noalias !56
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !62, !noalias !63
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !67
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !67
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !70

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !71
  store ptr %11, ptr %3, align 8, !tbaa !55
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !62
  br label %14

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr %3, align 8, !tbaa !55
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !59

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !52
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24)
  store ptr %24, ptr %3, align 8, !tbaa !55
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !60
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !62
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !55
  %29 = icmp eq ptr %17, %28
  br i1 %29, label %52, label %30, !prof !70

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55, !noalias !72
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42, !prof !75

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !72
  %36 = load ptr, ptr %35, align 8, !tbaa !43, !noalias !72
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !72
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 24), !noalias !72
  store ptr %39, ptr %31, align 8, !tbaa !55, !noalias !72
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !60, !noalias !72
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !62, !noalias !72
  br label %42

42:                                               ; preds = %30, %34
  %43 = load ptr, ptr %31, align 8, !tbaa !55, !noalias !72
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !62, !noalias !76
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !67
  %49 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !79
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %111, label %52, !prof !80

52:                                               ; preds = %42, %27
  %53 = load ptr, ptr %2, align 8, !tbaa !52
  %54 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !46
  %56 = load ptr, ptr %53, align 8, !tbaa !43
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !prof !81
  store ptr %53, ptr %59, align 8, !tbaa !66
  %60 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 1
  store i64 0, ptr %60, align 8, !tbaa !67
  %61 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 2
  store i64 %55, ptr %61, align 8, !tbaa !79
  %62 = mul i64 %55, 96
  %63 = load ptr, ptr %53, align 8, !tbaa !43
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %62)
          to label %76 unwind label %67, !prof !81

67:                                               ; preds = %52
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %53, align 8, !tbaa !43
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull %59)
          to label %75 unwind label %72

72:                                               ; preds = %67
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #11
  unreachable

75:                                               ; preds = %67
  resume { ptr, i32 } %68

76:                                               ; preds = %52
  %77 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 3
  store ptr %66, ptr %77, align 8, !tbaa !82
  %78 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !83
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %88, !prof !86

80:                                               ; preds = %76
  %81 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !83
  %82 = load ptr, ptr %81, align 8, !tbaa !43, !noalias !83
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8, !noalias !83
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %81, i64 noundef 24), !noalias !83
  store ptr %85, ptr %3, align 8, !tbaa !55, !noalias !83
  %86 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %85, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !60, !noalias !83
  %87 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %85, i64 0, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !62, !noalias !83
  br label %88

88:                                               ; preds = %80, %76
  %89 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !83
  %90 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !87
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !88

93:                                               ; preds = %88
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %91, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  br label %102

96:                                               ; preds = %88
  %97 = load ptr, ptr %2, align 8, !tbaa !52
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97, i64 noundef 24), !prof !81
  store ptr %101, ptr %90, align 8, !tbaa !87
  br label %102

102:                                              ; preds = %93, %96
  %103 = phi ptr [ %91, %93 ], [ %101, %96 ]
  %104 = phi ptr [ %95, %93 ], [ null, %96 ]
  store ptr %59, ptr %103, align 8, !tbaa !66
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %103, i64 0, i32 1
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %89, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  store ptr %107, ptr %105, align 8, !tbaa !66
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %103, i64 0, i32 2
  store ptr %89, ptr %108, align 8, !tbaa !66
  %109 = load ptr, ptr %106, align 8, !tbaa !62
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %109, i64 0, i32 2
  store ptr %103, ptr %110, align 8, !tbaa !60
  store ptr %103, ptr %106, align 8, !tbaa !62
  store ptr %104, ptr %90, align 8, !tbaa !87
  br label %111

111:                                              ; preds = %102, %42
  %112 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !55, !noalias !89
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %123, !prof !59

115:                                              ; preds = %111
  %116 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !89
  %117 = load ptr, ptr %116, align 8, !tbaa !43, !noalias !89
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8, !noalias !89
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %116, i64 noundef 24), !noalias !89
  store ptr %120, ptr %112, align 8, !tbaa !55, !noalias !89
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %120, i64 0, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !60, !noalias !89
  %122 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %120, i64 0, i32 1
  store ptr %120, ptr %122, align 8, !tbaa !62, !noalias !89
  br label %123

123:                                              ; preds = %111, %115
  %124 = load ptr, ptr %112, align 8, !tbaa !55, !noalias !89
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !62, !noalias !92
  %127 = load ptr, ptr %126, align 8, !tbaa !66
  %128 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !67
  %130 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !79
  %132 = icmp eq i64 %129, %131
  %133 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementNANS", ptr %134, i64 %129
  %136 = select i1 %132, ptr null, ptr %135, !prof !59
  ret ptr %136
}

declare void @_ZN11xalanc_1_1026XalanSourceTreeElementNANSC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_S6_S6_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !95 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52, !noalias !96
  %9 = load ptr, ptr %8, align 8, !tbaa !43, !noalias !96
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !96
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !96
  store ptr %12, ptr %3, align 8, !tbaa !55, !noalias !96
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !60, !noalias !96
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !62, !noalias !96
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !96
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62, !noalias !99
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !67
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 align 2 !prof !95 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !105

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !102
  %8 = load ptr, ptr %7, align 8, !tbaa !43, !noalias !102
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !102
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !71, !noalias !102
  store ptr %11, ptr %3, align 8, !tbaa !55, !noalias !102
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !60, !noalias !102
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !62, !noalias !102
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !106
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !60, !noalias !102
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !107

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !52, !noalias !108
  %21 = load ptr, ptr %20, align 8, !tbaa !43, !noalias !108
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !108
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !108
  store ptr %24, ptr %3, align 8, !tbaa !55, !noalias !108
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !60, !noalias !108
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !62, !noalias !108
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !55, !noalias !108
  %29 = load ptr, ptr %2, align 8, !tbaa !52
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %70, label %31, !prof !111

31:                                               ; preds = %27, %66
  %32 = phi ptr [ %68, %66 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = icmp eq ptr %33, null
  br i1 %34, label %66, label %35, !prof !86

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !67
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %39, !prof !112

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  br label %53

41:                                               ; preds = %53, %35
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %45, !prof !86

45:                                               ; preds = %41
  %46 = load ptr, ptr %33, align 8, !tbaa !113
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %43)
          to label %62 unwind label %50, !prof !114

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #11
  unreachable

53:                                               ; preds = %53, %39
  %54 = phi i64 [ 0, %39 ], [ %59, %53 ]
  %55 = load ptr, ptr %40, align 8, !tbaa !82
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementNANS", ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(96) %56) #10, !prof !115
  %59 = add nuw i64 %54, 1
  %60 = load i64, ptr %36, align 8, !tbaa !67
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %53, label %41, !prof !116, !llvm.loop !117

62:                                               ; preds = %41, %45
  %63 = load ptr, ptr %29, align 8, !tbaa !43
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !114
  br label %66

66:                                               ; preds = %62, %31
  %67 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %32, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !60, !noalias !120
  %69 = icmp eq ptr %68, %28
  br i1 %69, label %70, label %31, !prof !123, !llvm.loop !124

70:                                               ; preds = %66, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !95 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !95 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55, !noalias !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !125
  %9 = load ptr, ptr %8, align 8, !tbaa !43, !noalias !125
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !125
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !125
  store ptr %12, ptr %4, align 8, !tbaa !55, !noalias !125
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !60, !noalias !125
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !62, !noalias !125
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !55, !noalias !106
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !60, !noalias !125
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !52, !noalias !128
  %22 = load ptr, ptr %21, align 8, !tbaa !43, !noalias !128
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !128
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !128
  store ptr %25, ptr %4, align 8, !tbaa !55, !noalias !128
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !60, !noalias !128
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !62, !noalias !128
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !55, !noalias !128
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !67
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !79
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementNANS", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !131

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !95 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !107

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !60, !noalias !132
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !135
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !107

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !135
  %14 = load ptr, ptr %13, align 8, !tbaa !43, !noalias !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !135
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !55, !noalias !135
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !60, !noalias !135
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !62, !noalias !135
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !135
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !53

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !60, !noalias !138
  %27 = load ptr, ptr %0, align 8, !tbaa !52
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !141

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !142

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = load ptr, ptr %0, align 8, !tbaa !52
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !114

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !55
  %46 = load ptr, ptr %0, align 8, !tbaa !52
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !143

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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !107

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !144
  %7 = load ptr, ptr %6, align 8, !tbaa !43, !noalias !144
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !144
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !144
  store ptr %10, ptr %2, align 8, !tbaa !55, !noalias !144
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !60, !noalias !144
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !62, !noalias !144
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !144
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !60, !noalias !144
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !147
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !150

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !147
  %24 = load ptr, ptr %23, align 8, !tbaa !43, !noalias !147
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !147
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !147
  store ptr %27, ptr %2, align 8, !tbaa !55, !noalias !147
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !60, !noalias !147
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !62, !noalias !147
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !55, !noalias !147
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !142

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !60
  %39 = load ptr, ptr %34, align 8, !tbaa !60
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanSourceTreeElementNANS> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !62
  store ptr null, ptr %36, align 8, !tbaa !62
  %41 = load ptr, ptr %17, align 8, !tbaa !87
  store ptr %41, ptr %34, align 8, !tbaa !60
  store ptr %19, ptr %17, align 8, !tbaa !87
  br label %18, !llvm.loop !151

42:                                               ; preds = %30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEED2Ev, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE13allocateBlockEv, i64 643375}
!39 = !{ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m, ptr @_ZN11xalanc_1_1026XalanSourceTreeElementNANSC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_S6_S6_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m, i64 643375}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5clearEv, i64 2}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE", !48, i64 8, !50, i64 16}
!48 = !{!"long", !49, i64 0}
!49 = !{!"omnipotent char", !45, i64 0}
!50 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"any pointer", !49, i64 0}
!52 = !{!50, !51, i64 0}
!53 = !{!"branch_weights", i32 2, i32 0}
!54 = !{!"function_entry_count", i64 643375}
!55 = !{!50, !51, i64 8}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!58 = distinct !{!58, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!59 = !{!"branch_weights", i32 0, i32 643375}
!60 = !{!61, !51, i64 16}
!61 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE4NodeE", !51, i64 0, !51, i64 8, !51, i64 16}
!62 = !{!61, !51, i64 8}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!65 = distinct !{!65, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!66 = !{!51, !51, i64 0}
!67 = !{!68, !48, i64 8}
!68 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_26XalanSourceTreeElementNANSEmEE", !69, i64 0, !48, i64 8, !48, i64 16, !51, i64 24}
!69 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_26XalanSourceTreeElementNANSEEE", !51, i64 0}
!70 = !{!"branch_weights", i32 1, i32 643374}
!71 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!74 = distinct !{!74, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!75 = !{!"branch_weights", i32 0, i32 643374}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!78 = distinct !{!78, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!79 = !{!68, !48, i64 16}
!80 = !{!"branch_weights", i32 636941, i32 6433}
!81 = !{!"VP", i32 0, i64 6434, i64 8345045103670217670, i64 6434}
!82 = !{!68, !51, i64 24}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!85 = distinct !{!85, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!86 = !{!"branch_weights", i32 0, i32 6434}
!87 = !{!50, !51, i64 16}
!88 = !{!"branch_weights", i32 6434, i32 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!91 = distinct !{!91, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!94 = distinct !{!94, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5beginEv: argument 0"}
!104 = distinct !{!104, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5beginEv"}
!105 = !{!"branch_weights", i32 1, i32 1}
!106 = !{}
!107 = !{!"branch_weights", i32 0, i32 2}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!110 = distinct !{!110, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!111 = !{!"branch_weights", i32 1, i32 127}
!112 = !{!"branch_weights", i32 1, i32 6433}
!113 = !{!69, !51, i64 0}
!114 = !{!"VP", i32 0, i64 6434, i64 -7405368087501025645, i64 6434}
!115 = !{!"VP", i32 0, i64 643375, i64 -9164279146442271396, i64 643375}
!116 = !{!"branch_weights", i32 636942, i32 6433}
!117 = distinct !{!117, !118, !119}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!122 = distinct !{!122, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!123 = !{!"branch_weights", i32 127, i32 411649}
!124 = distinct !{!124, !118, !119}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE4rendEv: argument 0"}
!127 = distinct !{!127, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE4rendEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE6rbeginEv: argument 0"}
!130 = distinct !{!130, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE6rbeginEv"}
!131 = distinct !{!131, !118, !119}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5beginEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5beginEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!140 = distinct !{!140, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!141 = distinct !{!141, !118, !119}
!142 = !{!"branch_weights", i32 2, i32 6434}
!143 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5beginEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE5beginEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv: argument 0"}
!149 = distinct !{!149, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEE3endEv"}
!150 = !{!"branch_weights", i32 0, i32 6436}
!151 = distinct !{!151, !118, !119}
