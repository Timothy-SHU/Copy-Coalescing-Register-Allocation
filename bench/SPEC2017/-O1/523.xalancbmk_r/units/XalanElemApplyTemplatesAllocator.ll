; ModuleID = 'XalanElemApplyTemplatesAllocator.cpp'
source_filename = "XalanElemApplyTemplatesAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ElemApplyTemplates" = type { %"class.xalanc_1_10::ElemForEach", ptr }
%"class.xalanc_1_10::ElemForEach" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, %"class.xalanc_1_10::XalanVector.4", i64 }
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
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED0Ev = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_18ElemApplyTemplatesEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE = comdat any

@_ZTVN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant [80 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE }, comdat, align 8

@_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorC1ERN11xercesc_2_713MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorC2ERN11xercesc_2_713MemoryManagerEm
@_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorC2ERN11xercesc_2_713MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 !prof !46 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %4, !prof !57

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 !prof !58 {
  %7 = tail call noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN11xalanc_1_1018ElemApplyTemplatesC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4, i32 noundef %5)
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59, !noalias !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !63

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !56, !noalias !60
  %14 = load ptr, ptr %13, align 8, !tbaa !47, !noalias !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !60
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24), !noalias !60
  store ptr %17, ptr %8, align 8, !tbaa !59, !noalias !60
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !64, !noalias !60
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !66, !noalias !60
  br label %20

20:                                               ; preds = %6, %11
  %21 = load ptr, ptr %8, align 8, !tbaa !59, !noalias !60
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !66, !noalias !67
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %24, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !71
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8, !tbaa !71
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !58 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %6, label %29, label %7, !prof !74

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59, !noalias !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19, !prof !78

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !56, !noalias !75
  %13 = load ptr, ptr %12, align 8, !tbaa !47, !noalias !75
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !75
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 24), !noalias !75
  store ptr %16, ptr %8, align 8, !tbaa !59, !noalias !75
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !64, !noalias !75
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !66, !noalias !75
  br label %19

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !59, !noalias !75
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !66, !noalias !79
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !71
  %26 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %23, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !82
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %34, label %29, !prof !83

29:                                               ; preds = %19, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %30 = load ptr, ptr %5, align 8, !tbaa !56
  %31 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 %32, ptr %2, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %33 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_18ElemApplyTemplatesEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %33, ptr %4, align 8, !tbaa !70
  call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

34:                                               ; preds = %29, %19
  %35 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59, !noalias !85
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46, !prof !63

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !56, !noalias !85
  %40 = load ptr, ptr %39, align 8, !tbaa !47, !noalias !85
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !noalias !85
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef 24), !noalias !85
  store ptr %43, ptr %35, align 8, !tbaa !59, !noalias !85
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %43, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !64, !noalias !85
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %43, i64 0, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !66, !noalias !85
  br label %46

46:                                               ; preds = %34, %38
  %47 = load ptr, ptr %35, align 8, !tbaa !59, !noalias !85
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !66, !noalias !88
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !71
  %53 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !82
  %55 = icmp eq i64 %52, %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %57, i64 %52
  %59 = select i1 %55, ptr null, ptr %58, !prof !63
  ret ptr %59
}

declare void @_ZN11xalanc_1_1018ElemApplyTemplatesC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !91 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !92
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !92
  %9 = load ptr, ptr %8, align 8, !tbaa !47, !noalias !92
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !92
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !92
  store ptr %12, ptr %3, align 8, !tbaa !59, !noalias !92
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !64, !noalias !92
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !66, !noalias !92
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !92
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !66, !noalias !95
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !71
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !91 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !91 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !98
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !98
  %9 = load ptr, ptr %8, align 8, !tbaa !47, !noalias !98
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !98
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !98
  store ptr %12, ptr %4, align 8, !tbaa !59, !noalias !98
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !64, !noalias !98
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !66, !noalias !98
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !101
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64, !noalias !98
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !56, !noalias !102
  %22 = load ptr, ptr %21, align 8, !tbaa !47, !noalias !102
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !102
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !102
  store ptr %25, ptr %4, align 8, !tbaa !59, !noalias !102
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !64, !noalias !102
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !66, !noalias !102
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !59, !noalias !102
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = load ptr, ptr %35, align 8, !tbaa !70
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !71
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !82
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !106

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !113

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !110
  %8 = load ptr, ptr %7, align 8, !tbaa !47, !noalias !110
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !110
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !110
  store ptr %11, ptr %3, align 8, !tbaa !59, !noalias !110
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !64, !noalias !110
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !66, !noalias !110
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !101
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !64, !noalias !110
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !113

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !56, !noalias !114
  %21 = load ptr, ptr %20, align 8, !tbaa !47, !noalias !114
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !114
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !114
  store ptr %24, ptr %3, align 8, !tbaa !59, !noalias !114
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !64, !noalias !114
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !66, !noalias !114
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !114
  %29 = load ptr, ptr %2, align 8, !tbaa !56
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !117

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !118

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #9
  %36 = load ptr, ptr %29, align 8, !tbaa !47
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !119
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !64, !noalias !120
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !123, !llvm.loop !124

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !125
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !113

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !56, !noalias !125
  %7 = load ptr, ptr %6, align 8, !tbaa !47, !noalias !125
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !125
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !125
  store ptr %10, ptr %2, align 8, !tbaa !59, !noalias !125
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !64, !noalias !125
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !66, !noalias !125
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !125
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64, !noalias !125
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !128
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !131

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !56, !noalias !128
  %24 = load ptr, ptr %23, align 8, !tbaa !47, !noalias !128
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !128
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !128
  store ptr %27, ptr %2, align 8, !tbaa !59, !noalias !128
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !64, !noalias !128
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !66, !noalias !128
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !128
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !132

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !64
  %39 = load ptr, ptr %34, align 8, !tbaa !64
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !66
  store ptr null, ptr %36, align 8, !tbaa !66
  %41 = load ptr, ptr %17, align 8, !tbaa !133
  store ptr %41, ptr %34, align 8, !tbaa !64
  store ptr %19, ptr %17, align 8, !tbaa !133
  br label %18, !llvm.loop !134

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !71
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !117

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !118

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !136
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !119

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
  %22 = load ptr, ptr %6, align 8, !tbaa !105
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(384) %23) #9, !prof !137
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !71
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !138, !llvm.loop !139
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !91 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !140

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64, !noalias !141
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !144
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !140

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !56, !noalias !144
  %14 = load ptr, ptr %13, align 8, !tbaa !47, !noalias !144
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !144
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 24)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !59, !noalias !144
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !64, !noalias !144
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !66, !noalias !144
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !59, !noalias !144
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !57

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64, !noalias !147
  %27 = load ptr, ptr %0, align 8, !tbaa !56
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !150

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !133
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !151

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = load ptr, ptr %0, align 8, !tbaa !56
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51, !prof !119

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !59
  %46 = load ptr, ptr %0, align 8, !tbaa !56
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !152

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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !74

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !56
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !prof !153
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !66
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !59
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !63

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !56
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 24)
  store ptr %23, ptr %2, align 8, !tbaa !59
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !66
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !59
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !135 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !154
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !118

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !56, !noalias !154
  %8 = load ptr, ptr %7, align 8, !tbaa !47, !noalias !154
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !154
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !154
  store ptr %11, ptr %3, align 8, !tbaa !59, !noalias !154
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !64, !noalias !154
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !66, !noalias !154
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !154
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !157

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !56
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !prof !158
  store ptr %27, ptr %16, align 8, !tbaa !133
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %31, ptr %29, align 8, !tbaa !70
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %29, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  store ptr %34, ptr %32, align 8, !tbaa !70
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !70
  %36 = load ptr, ptr %33, align 8, !tbaa !66
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %36, i64 0, i32 2
  store ptr %29, ptr %37, align 8, !tbaa !64
  store ptr %29, ptr %33, align 8, !tbaa !66
  store ptr %30, ptr %16, align 8, !tbaa !133
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_18ElemApplyTemplatesEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !135 {
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32), !prof !158
  %9 = load i64, ptr %3, align 8, !tbaa !84
  store ptr %2, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !82
  %12 = mul i64 %9, 384
  %13 = load ptr, ptr %2, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12)
          to label %17 unwind label %19, !prof !158

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %8, i64 0, i32 3
  store ptr %16, ptr %18, align 8, !tbaa !105
  store ptr %8, ptr %1, align 8, !tbaa !70
  ret ptr %8

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %0, align 8, !tbaa !47
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
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv, i64 32}
!39 = !{ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 32}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5emptyEv, i64 32}
!41 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014XalanConstructINS_10ArenaBlockINS_18ElemApplyTemplatesEmEEN11xercesc_2_713MemoryManagerEmEEPT_RS5_RS7_RT0_RKT1_, i64 4}
!42 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE9push_backERKS4_, i64 4}
!43 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev, i64 4}
!44 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv, i64 2}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !52, i64 8}
!51 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE", !52, i64 8, !54, i64 16}
!52 = !{!"long", !53, i64 0}
!53 = !{!"omnipotent char", !49, i64 0}
!54 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"any pointer", !53, i64 0}
!56 = !{!54, !55, i64 0}
!57 = !{!"branch_weights", i32 1, i32 0}
!58 = !{!"function_entry_count", i64 32}
!59 = !{!54, !55, i64 8}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!62 = distinct !{!62, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!63 = !{!"branch_weights", i32 0, i32 32}
!64 = !{!65, !55, i64 16}
!65 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE4NodeE", !55, i64 0, !55, i64 8, !55, i64 16}
!66 = !{!65, !55, i64 8}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!69 = distinct !{!69, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!70 = !{!55, !55, i64 0}
!71 = !{!72, !52, i64 8}
!72 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_18ElemApplyTemplatesEmEE", !73, i64 0, !52, i64 8, !52, i64 16, !55, i64 24}
!73 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_18ElemApplyTemplatesEEE", !55, i64 0}
!74 = !{!"branch_weights", i32 1, i32 31}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!78 = !{!"branch_weights", i32 0, i32 31}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!81 = distinct !{!81, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!82 = !{!72, !52, i64 16}
!83 = !{!"branch_weights", i32 28, i32 3}
!84 = !{!52, !52, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!90 = distinct !{!90, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!94 = distinct !{!94, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv: argument 0"}
!97 = distinct !{!97, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEmmEv"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE4rendEv: argument 0"}
!100 = distinct !{!100, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE4rendEv"}
!101 = !{}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE6rbeginEv: argument 0"}
!104 = distinct !{!104, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE6rbeginEv"}
!105 = !{!72, !55, i64 24}
!106 = distinct !{!106, !107, !108}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = !{!"function_entry_count", i64 2}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv: argument 0"}
!112 = distinct !{!112, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv"}
!113 = !{!"branch_weights", i32 0, i32 2}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!116 = distinct !{!116, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!117 = !{!"branch_weights", i32 1, i32 127}
!118 = !{!"branch_weights", i32 0, i32 4}
!119 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!122 = distinct !{!122, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!123 = !{!"branch_weights", i32 127, i32 129}
!124 = distinct !{!124, !107, !108}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv: argument 0"}
!127 = distinct !{!127, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!130 = distinct !{!130, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!131 = !{!"branch_weights", i32 0, i32 6}
!132 = !{!"branch_weights", i32 2, i32 4}
!133 = !{!54, !55, i64 16}
!134 = distinct !{!134, !107, !108}
!135 = !{!"function_entry_count", i64 4}
!136 = !{!73, !55, i64 0}
!137 = !{!"VP", i32 0, i64 32, i64 9206948017064192149, i64 32}
!138 = !{!"branch_weights", i32 897, i32 127}
!139 = distinct !{!139, !107, !108}
!140 = !{!"branch_weights", i32 0, i32 1}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv: argument 0"}
!143 = distinct !{!143, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEppEi: argument 0"}
!149 = distinct !{!149, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEppEi"}
!150 = distinct !{!150, !107, !108}
!151 = !{!"branch_weights", i32 1, i32 4}
!152 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!153 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!156 = distinct !{!156, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!157 = !{!"branch_weights", i32 4, i32 0}
!158 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
