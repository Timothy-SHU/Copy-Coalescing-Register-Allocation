; ModuleID = 'XalanDOMStringAllocator.cpp'
source_filename = "XalanDOMStringAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEED2Ev = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [76 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !54

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 !prof !55 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56, !noalias !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !57
  %10 = load ptr, ptr %9, align 8, !tbaa !44, !noalias !57
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !57
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 24), !noalias !57
  store ptr %13, ptr %5, align 8, !tbaa !56, !noalias !57
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !60, !noalias !57
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !62, !noalias !57
  br label %16

16:                                               ; preds = %1, %8
  %17 = load ptr, ptr %5, align 8, !tbaa !56, !noalias !57
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !62, !noalias !63
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !67
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !67
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !71

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !72
  store ptr %11, ptr %3, align 8, !tbaa !56
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !62
  br label %14

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr %3, align 8, !tbaa !56
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !73

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !53
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24)
  store ptr %24, ptr %3, align 8, !tbaa !56
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !60
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !62
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !56
  %29 = icmp eq ptr %17, %28
  br i1 %29, label %52, label %30, !prof !71

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !56, !noalias !74
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42, !prof !77

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !74
  %36 = load ptr, ptr %35, align 8, !tbaa !44, !noalias !74
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !74
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 24), !noalias !74
  store ptr %39, ptr %31, align 8, !tbaa !56, !noalias !74
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !60, !noalias !74
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !62, !noalias !74
  br label %42

42:                                               ; preds = %30, %34
  %43 = load ptr, ptr %31, align 8, !tbaa !56, !noalias !74
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !62, !noalias !78
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !67
  %49 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %46, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !81
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %111, label %52, !prof !82

52:                                               ; preds = %42, %27
  %53 = load ptr, ptr %2, align 8, !tbaa !53
  %54 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !47
  %56 = load ptr, ptr %53, align 8, !tbaa !44
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !prof !83
  store ptr %53, ptr %59, align 8, !tbaa !66
  %60 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 1
  store i64 0, ptr %60, align 8, !tbaa !67
  %61 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %59, i64 0, i32 2
  store i64 %55, ptr %61, align 8, !tbaa !81
  %62 = mul i64 %55, 40
  %63 = load ptr, ptr %53, align 8, !tbaa !44
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %62)
          to label %76 unwind label %67, !prof !83

67:                                               ; preds = %52
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %53, align 8, !tbaa !44
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
  store ptr %66, ptr %77, align 8, !tbaa !84
  %78 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !85
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %88, !prof !88

80:                                               ; preds = %76
  %81 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !85
  %82 = load ptr, ptr %81, align 8, !tbaa !44, !noalias !85
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8, !noalias !85
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %81, i64 noundef 24), !noalias !85
  store ptr %85, ptr %3, align 8, !tbaa !56, !noalias !85
  %86 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %85, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !60, !noalias !85
  %87 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %85, i64 0, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !62, !noalias !85
  br label %88

88:                                               ; preds = %80, %76
  %89 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !85
  %90 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !89
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !90

93:                                               ; preds = %88
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %91, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  br label %102

96:                                               ; preds = %88
  %97 = load ptr, ptr %2, align 8, !tbaa !53
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97, i64 noundef 24), !prof !83
  store ptr %101, ptr %90, align 8, !tbaa !89
  br label %102

102:                                              ; preds = %93, %96
  %103 = phi ptr [ %91, %93 ], [ %101, %96 ]
  %104 = phi ptr [ %95, %93 ], [ null, %96 ]
  store ptr %59, ptr %103, align 8, !tbaa !66
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %103, i64 0, i32 1
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %89, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  store ptr %107, ptr %105, align 8, !tbaa !66
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %103, i64 0, i32 2
  store ptr %89, ptr %108, align 8, !tbaa !66
  %109 = load ptr, ptr %106, align 8, !tbaa !62
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %109, i64 0, i32 2
  store ptr %103, ptr %110, align 8, !tbaa !60
  store ptr %103, ptr %106, align 8, !tbaa !62
  store ptr %104, ptr %90, align 8, !tbaa !89
  br label %111

111:                                              ; preds = %102, %42
  %112 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !56, !noalias !91
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %123, !prof !73

115:                                              ; preds = %111
  %116 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !91
  %117 = load ptr, ptr %116, align 8, !tbaa !44, !noalias !91
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8, !noalias !91
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %116, i64 noundef 24), !noalias !91
  store ptr %120, ptr %112, align 8, !tbaa !56, !noalias !91
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %120, i64 0, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !60, !noalias !91
  %122 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %120, i64 0, i32 1
  store ptr %120, ptr %122, align 8, !tbaa !62, !noalias !91
  br label %123

123:                                              ; preds = %111, %115
  %124 = load ptr, ptr %112, align 8, !tbaa !56, !noalias !91
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !62, !noalias !94
  %127 = load ptr, ptr %126, align 8, !tbaa !66
  %128 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !67
  %130 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !81
  %132 = icmp eq i64 %129, %131
  %133 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %127, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %134, i64 %129
  %136 = select i1 %132, ptr null, ptr %135, !prof !73
  ret ptr %136
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53, !noalias !97
  %9 = load ptr, ptr %8, align 8, !tbaa !44, !noalias !97
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !97
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !97
  store ptr %12, ptr %3, align 8, !tbaa !56, !noalias !97
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !60, !noalias !97
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !62, !noalias !97
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !97
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62, !noalias !100
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !67
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKcj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !55 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !103
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !53, !noalias !103
  %12 = load ptr, ptr %11, align 8, !tbaa !44, !noalias !103
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !103
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24), !noalias !103
  store ptr %15, ptr %7, align 8, !tbaa !56, !noalias !103
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !60, !noalias !103
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !62, !noalias !103
  br label %18

18:                                               ; preds = %3, %10
  %19 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !103
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !62, !noalias !106
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !67
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !67
  ret ptr %4
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createERKNS_14XalanDOMStringEjj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !55 {
  %5 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %2, i32 noundef %3)
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !56, !noalias !109
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !53, !noalias !109
  %13 = load ptr, ptr %12, align 8, !tbaa !44, !noalias !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !109
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !109
  store ptr %16, ptr %8, align 8, !tbaa !56, !noalias !109
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !60, !noalias !109
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !62, !noalias !109
  br label %19

19:                                               ; preds = %4, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !56, !noalias !109
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !62, !noalias !112
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !67
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8, !tbaa !67
  ret ptr %5
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !70 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18, !prof !73

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !53, !noalias !115
  %12 = load ptr, ptr %11, align 8, !tbaa !44, !noalias !115
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !115
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24), !noalias !115
  store ptr %15, ptr %7, align 8, !tbaa !56, !noalias !115
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !60, !noalias !115
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !62, !noalias !115
  br label %18

18:                                               ; preds = %3, %10
  %19 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !115
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !62, !noalias !118
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !67
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !67
  ret ptr %4
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEjt(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !55 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !121
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !53, !noalias !121
  %12 = load ptr, ptr %11, align 8, !tbaa !44, !noalias !121
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !121
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24), !noalias !121
  store ptr %15, ptr %7, align 8, !tbaa !56, !noalias !121
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !60, !noalias !121
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !62, !noalias !121
  br label %18

18:                                               ; preds = %3, %10
  %19 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !121
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !62, !noalias !124
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !67
  %25 = add i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !67
  ret ptr %4
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !55 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !56, !noalias !127
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !127
  %9 = load ptr, ptr %8, align 8, !tbaa !44, !noalias !127
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !127
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !127
  store ptr %12, ptr %4, align 8, !tbaa !56, !noalias !127
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !60, !noalias !127
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !62, !noalias !127
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !56, !noalias !130
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !60, !noalias !127
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !131
  %22 = load ptr, ptr %21, align 8, !tbaa !44, !noalias !131
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !131
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !131
  store ptr %25, ptr %4, align 8, !tbaa !56, !noalias !131
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !60, !noalias !131
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !62, !noalias !131
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !56, !noalias !131
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !67
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !81
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !134

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !138
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !141

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !138
  %8 = load ptr, ptr %7, align 8, !tbaa !44, !noalias !138
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !138
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !142, !noalias !138
  store ptr %11, ptr %3, align 8, !tbaa !56, !noalias !138
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !60, !noalias !138
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !62, !noalias !138
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !130
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !60, !noalias !138
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !143

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !144
  %21 = load ptr, ptr %20, align 8, !tbaa !44, !noalias !144
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !144
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !144
  store ptr %24, ptr %3, align 8, !tbaa !56, !noalias !144
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !60, !noalias !144
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !62, !noalias !144
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !144
  %29 = load ptr, ptr %2, align 8, !tbaa !53
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %82, label %31, !prof !147

31:                                               ; preds = %27, %78
  %32 = phi ptr [ %80, %78 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35, !prof !88

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !67
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %39, !prof !148

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  br label %53

41:                                               ; preds = %70, %35
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45, !prof !88

45:                                               ; preds = %41
  %46 = load ptr, ptr %33, align 8, !tbaa !149
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %43)
          to label %74 unwind label %50, !prof !150

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #11
  unreachable

53:                                               ; preds = %70, %39
  %54 = phi i64 [ 0, %39 ], [ %71, %70 ]
  %55 = load ptr, ptr %40, align 8, !tbaa !84
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %55, i64 %54
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !151
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %70, label %60, !prof !153

60:                                               ; preds = %53
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !154
  %63 = load ptr, ptr %56, align 8, !tbaa !155
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %62)
          to label %70 unwind label %67, !prof !156

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  tail call void @__clang_call_terminate(ptr %69) #11
  unreachable

70:                                               ; preds = %60, %53
  %71 = add nuw i64 %54, 1
  %72 = load i64, ptr %36, align 8, !tbaa !67
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %53, label %41, !prof !157, !llvm.loop !158

74:                                               ; preds = %41, %45
  %75 = load ptr, ptr %29, align 8, !tbaa !44
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !150
  br label %78

78:                                               ; preds = %74, %31
  %79 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %32, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !60, !noalias !159
  %81 = icmp eq ptr %80, %28
  br i1 %81, label %82, label %31, !prof !162, !llvm.loop !163

82:                                               ; preds = %78, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !137 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !143

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !164
  %7 = load ptr, ptr %6, align 8, !tbaa !44, !noalias !164
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !164
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !164
  store ptr %10, ptr %2, align 8, !tbaa !56, !noalias !164
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !60, !noalias !164
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !62, !noalias !164
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !164
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !60, !noalias !164
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !167
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !170

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !167
  %24 = load ptr, ptr %23, align 8, !tbaa !44, !noalias !167
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !167
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !167
  store ptr %27, ptr %2, align 8, !tbaa !56, !noalias !167
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !60, !noalias !167
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !62, !noalias !167
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !167
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !171

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !60
  %39 = load ptr, ptr %34, align 8, !tbaa !60
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !62
  store ptr null, ptr %36, align 8, !tbaa !62
  %41 = load ptr, ptr %17, align 8, !tbaa !89
  store ptr %41, ptr %34, align 8, !tbaa !60
  store ptr %19, ptr %17, align 8, !tbaa !89
  br label %18, !llvm.loop !172

42:                                               ; preds = %30
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !55 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !173

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !60, !noalias !174
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !177
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !173

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !53, !noalias !177
  %14 = load ptr, ptr %13, align 8, !tbaa !44, !noalias !177
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !177
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !56, !noalias !177
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !60, !noalias !177
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !62, !noalias !177
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !177
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !54

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !60, !noalias !180
  %27 = load ptr, ptr %0, align 8, !tbaa !53
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !183

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !89
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !184

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = load ptr, ptr %0, align 8, !tbaa !53
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !150

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !56
  %46 = load ptr, ptr %0, align 8, !tbaa !53
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !185

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev, i64 8}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, i64 8}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEED2Ev, i64 8}
!38 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE13allocateBlockEv, i64 655226}
!39 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 655226}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @__clang_call_terminate, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, i64 8}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 8}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !49, i64 8, !51, i64 16}
!49 = !{!"long", !50, i64 0}
!50 = !{!"omnipotent char", !46, i64 0}
!51 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"any pointer", !50, i64 0}
!53 = !{!51, !52, i64 0}
!54 = !{!"branch_weights", i32 8, i32 0}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!51, !52, i64 8}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!59 = distinct !{!59, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!60 = !{!61, !52, i64 16}
!61 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE4NodeE", !52, i64 0, !52, i64 8, !52, i64 16}
!62 = !{!61, !52, i64 8}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!65 = distinct !{!65, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!66 = !{!52, !52, i64 0}
!67 = !{!68, !49, i64 8}
!68 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmEE", !69, i64 0, !49, i64 8, !49, i64 16, !52, i64 24}
!69 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !52, i64 0}
!70 = !{!"function_entry_count", i64 655226}
!71 = !{!"branch_weights", i32 5, i32 655221}
!72 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!73 = !{!"branch_weights", i32 0, i32 655226}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!76 = distinct !{!76, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!77 = !{!"branch_weights", i32 0, i32 655221}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!80 = distinct !{!80, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!81 = !{!68, !49, i64 16}
!82 = !{!"branch_weights", i32 634749, i32 20472}
!83 = !{!"VP", i32 0, i64 20477, i64 8345045103670217670, i64 20477}
!84 = !{!68, !52, i64 24}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!88 = !{!"branch_weights", i32 0, i32 20477}
!89 = !{!51, !52, i64 16}
!90 = !{!"branch_weights", i32 20477, i32 0}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!93 = distinct !{!93, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!96 = distinct !{!96, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!99 = distinct !{!99, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!102 = distinct !{!102, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!105 = distinct !{!105, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!108 = distinct !{!108, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!111 = distinct !{!111, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!117 = distinct !{!117, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!120 = distinct !{!120, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!123 = distinct !{!123, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!126 = distinct !{!126, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE4rendEv: argument 0"}
!129 = distinct !{!129, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE4rendEv"}
!130 = !{}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE6rbeginEv: argument 0"}
!133 = distinct !{!133, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE6rbeginEv"}
!134 = distinct !{!134, !135, !136}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!"function_entry_count", i64 9}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv: argument 0"}
!140 = distinct !{!140, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv"}
!141 = !{!"branch_weights", i32 3, i32 6}
!142 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!143 = !{!"branch_weights", i32 0, i32 9}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!147 = !{!"branch_weights", i32 1, i32 143}
!148 = !{!"branch_weights", i32 1, i32 20476}
!149 = !{!69, !52, i64 0}
!150 = !{!"VP", i32 0, i64 20477, i64 -7405368087501025645, i64 20477}
!151 = !{!152, !49, i64 16}
!152 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !49, i64 8, !49, i64 16, !52, i64 24}
!153 = !{!"branch_weights", i32 52000, i32 42418003}
!154 = !{!152, !52, i64 24}
!155 = !{!152, !52, i64 0}
!156 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!157 = !{!"branch_weights", i32 634750, i32 20476}
!158 = distinct !{!158, !135, !136}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!161 = distinct !{!161, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!162 = !{!"branch_weights", i32 143, i32 327489}
!163 = distinct !{!163, !135, !136}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv: argument 0"}
!166 = distinct !{!166, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!169 = distinct !{!169, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!170 = !{!"branch_weights", i32 0, i32 20486}
!171 = !{!"branch_weights", i32 9, i32 20477}
!172 = distinct !{!172, !135, !136}
!173 = !{!"branch_weights", i32 0, i32 8}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv: argument 0"}
!176 = distinct !{!176, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!179 = distinct !{!179, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!182 = distinct !{!182, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!183 = distinct !{!183, !135, !136}
!184 = !{!"branch_weights", i32 8, i32 20477}
!185 = !{!"VP", i32 0, i64 8, i64 -7405368087501025645, i64 8}
