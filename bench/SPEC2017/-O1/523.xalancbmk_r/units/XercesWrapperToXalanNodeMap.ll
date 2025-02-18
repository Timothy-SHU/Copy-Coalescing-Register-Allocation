; ModuleID = 'XercesWrapperToXalanNodeMap.cpp'
source_filename = "XercesWrapperToXalanNodeMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator.0" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE5clearEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS4_S6_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS9_5EntryEEENS_9XalanListISI_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE6insertERKS4_RKS6_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE4findERKS4_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE13doCreateEntryERKS4_PKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_mRKSL_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE9push_backERKSB_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2ERKSO_RNS4_13MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2EmRKSL_RNS4_13MemoryManagerE = comdat any

@_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 3
  store float 7.500000e-01, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 4
  store i64 29, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  store i64 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  store i64 50, ptr %13, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !54
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !noalias !54
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !54
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !53, !noalias !54
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !59, !noalias !54
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !63, !noalias !54
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !54
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !59, !noalias !64
  %27 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !65
  %31 = load ptr, ptr %30, align 8, !tbaa !57, !noalias !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !65
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !53, !noalias !65
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !59, !noalias !65
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !63, !noalias !65
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !65
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !68
  %43 = load ptr, ptr %22, align 8, !tbaa !35
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !69

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #10
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #10
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #10
  ret void

51:                                               ; preds = %29, %41
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

53:                                               ; preds = %1, %11
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !prof !34 {
  %4 = alloca %"struct.std::pair", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr %1, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !74
  call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE6insertERKS4_RKS6_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1, %14
  %9 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i64 0, ptr %10, align 8, !tbaa !76
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %9, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !78

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  store i64 0, ptr %18, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XercesWrapperToXalanNodeMap7getNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.0", align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10, !noalias !81
  call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE4findERKS4_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.0") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !81
  %5 = load ptr, ptr %3, align 8, !tbaa !84, !noalias !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10, !noalias !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53, !noalias !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !49, !noalias !86
  %12 = load ptr, ptr %11, align 8, !tbaa !57, !noalias !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !86
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !86
  store ptr %15, ptr %6, align 8, !tbaa !53, !noalias !86
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !59, !noalias !86
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !63, !noalias !86
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !53, !noalias !86
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !tbaa !68
  %23 = getelementptr inbounds %"struct.std::pair", ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  br label %25

25:                                               ; preds = %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ]
  ret ptr %26
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59, !noalias !93
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !49, !noalias !96
  %14 = load ptr, ptr %13, align 8, !tbaa !57, !noalias !96
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !96
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !53, !noalias !96
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !59, !noalias !96
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !63, !noalias !96
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !53, !noalias !96
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !59, !noalias !99
  %27 = load ptr, ptr %0, align 8, !tbaa !49
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !102

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = load ptr, ptr %0, align 8, !tbaa !49
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !53
  %46 = load ptr, ptr %0, align 8, !tbaa !49
  %47 = load ptr, ptr %46, align 8, !tbaa !57
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
  tail call void @__clang_call_terminate(ptr %59) #11
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.0", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %10 = load ptr, ptr %7, align 8, !tbaa !53, !noalias !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !49, !noalias !107
  %14 = load ptr, ptr %13, align 8, !tbaa !57, !noalias !107
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !107
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !107
  store ptr %17, ptr %7, align 8, !tbaa !53, !noalias !107
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !59, !noalias !107
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !63, !noalias !107
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !53, !noalias !107
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !59, !noalias !107
  store ptr %23, ptr %2, align 8, !tbaa !84, !alias.scope !104
  call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS4_S6_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS9_5EntryEEENS_9XalanListISI_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %24 = load i64, ptr %3, align 8, !tbaa !48
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !110

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !112

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !75
  %18 = load ptr, ptr %0, align 8, !tbaa !50
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS4_S6_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS9_5EntryEEENS_9XalanListISI_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49, !noalias !113
  %9 = load ptr, ptr %8, align 8, !tbaa !57, !noalias !113
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !113
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !113
  store ptr %12, ptr %3, align 8, !tbaa !53, !noalias !113
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !59, !noalias !113
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !63, !noalias !113
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !113
  %17 = load ptr, ptr %1, align 8, !tbaa !84
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !59
  %25 = load ptr, ptr %20, align 8, !tbaa !59
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %25, i64 0, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !63
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  store ptr %28, ptr %22, align 8, !tbaa !63
  store ptr %16, ptr %20, align 8, !tbaa !59
  %29 = load ptr, ptr %27, align 8, !tbaa !63
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %17, ptr %30, align 8, !tbaa !59
  store ptr %17, ptr %27, align 8, !tbaa !63
  br label %31

31:                                               ; preds = %15, %19
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry", ptr %17, i64 0, i32 1
  store i8 1, ptr %32, align 8, !tbaa !116
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !48
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !117
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = load ptr, ptr %0, align 8, !tbaa !119
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE6insertERKS4_RKS6_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.0", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE4findERKS4_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.0") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53, !noalias !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !49, !noalias !120
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !noalias !120
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !120
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !120
  store ptr %16, ptr %7, align 8, !tbaa !53, !noalias !120
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !59, !noalias !120
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !63, !noalias !120
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !53, !noalias !120
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE13doCreateEntryERKS4_PKS6_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.0") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE4findERKS4_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds i8, ptr %2, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !125
  %16 = sext i8 %15 to i64
  %17 = xor i64 %13, %16
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %10, !llvm.loop !126

20:                                               ; preds = %10
  %21 = urem i64 %17, %9
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %23, i64 %21, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %23, i64 %21, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %25, i64 %27
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %2, align 8
  br label %32

32:                                               ; preds = %30, %44
  %33 = phi i1 [ %29, %30 ], [ %46, %44 ]
  %34 = phi ptr [ %25, %30 ], [ %45, %44 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry", ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !116, !range !127, !noundef !64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load ptr, ptr %35, align 8, !tbaa !68
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = icmp eq ptr %31, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr %35, ptr %0, align 8, !tbaa !84
  br i1 %33, label %47, label %62

44:                                               ; preds = %39, %32
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %34, i64 1
  %46 = icmp eq ptr %45, %28
  br i1 %46, label %47, label %32, !llvm.loop !128

47:                                               ; preds = %44, %20, %43, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !53, !noalias !132
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !49, !noalias !132
  %54 = load ptr, ptr %53, align 8, !tbaa !57, !noalias !132
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8, !noalias !132
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !noalias !132
  store ptr %57, ptr %48, align 8, !tbaa !53, !noalias !132
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %57, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !59, !noalias !132
  %59 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %57, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !63, !noalias !132
  br label %60

60:                                               ; preds = %47, %51
  %61 = load ptr, ptr %48, align 8, !tbaa !53, !noalias !132
  store ptr %61, ptr %0, align 8, !tbaa !84, !alias.scope !129
  br label %62

62:                                               ; preds = %43, %60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE13doCreateEntryERKS4_PKS6_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !52
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  store ptr %18, ptr %5, align 8, !tbaa !119
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_mRKSL_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !117
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !118
  %27 = load ptr, ptr %5, align 8, !tbaa !119
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #11
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !117
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !118
  %41 = load ptr, ptr %5, align 8, !tbaa !119
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #11
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !48
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !52
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !52
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %70, %62 ]
  %64 = phi i64 [ 0, %60 ], [ %69, %62 ]
  %65 = shl i64 %64, 1
  %66 = getelementptr inbounds i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !125
  %68 = sext i8 %67 to i64
  %69 = xor i64 %65, %68
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %62, !llvm.loop !126

72:                                               ; preds = %62
  %73 = urem i64 %69, %61
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %75 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %78, i64 noundef 16)
  store ptr %82, ptr %6, align 8, !tbaa !68
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %83, align 8, !tbaa !116
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE9push_backERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %84

84:                                               ; preds = %76, %72
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !53, !noalias !135
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load ptr, ptr %74, align 8, !tbaa !49, !noalias !135
  %90 = load ptr, ptr %89, align 8, !tbaa !57, !noalias !135
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8, !noalias !135
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 32), !noalias !135
  store ptr %93, ptr %85, align 8, !tbaa !53, !noalias !135
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %93, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !59, !noalias !135
  %95 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %93, i64 0, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !63, !noalias !135
  br label %96

96:                                               ; preds = %84, %88
  %97 = load ptr, ptr %85, align 8, !tbaa !53, !noalias !135
  %98 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !63, !noalias !138
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry", ptr %99, i64 0, i32 1
  store i8 0, ptr %100, align 8, !tbaa !116
  %101 = load ptr, ptr %99, align 8, !tbaa !68
  %102 = load ptr, ptr %2, align 8, !tbaa !80
  store ptr %102, ptr %101, align 8, !tbaa !80
  %103 = icmp eq ptr %3, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load ptr, ptr %99, align 8, !tbaa !68
  %106 = getelementptr inbounds %"struct.std::pair", ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %3, align 8, !tbaa !80
  store ptr %107, ptr %106, align 8, !tbaa !80
  br label %108

108:                                              ; preds = %96, %104
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !53, !noalias !141
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load ptr, ptr %109, align 8, !tbaa !49, !noalias !141
  %115 = load ptr, ptr %114, align 8, !tbaa !57, !noalias !141
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8, !noalias !141
  %118 = call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %114, i64 noundef 32), !noalias !141
  store ptr %118, ptr %110, align 8, !tbaa !53, !noalias !141
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %118, i64 0, i32 2
  store ptr %118, ptr %119, align 8, !tbaa !59, !noalias !141
  %120 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %118, i64 0, i32 1
  store ptr %118, ptr %120, align 8, !tbaa !63, !noalias !141
  br label %121

121:                                              ; preds = %108, %113
  %122 = load ptr, ptr %110, align 8, !tbaa !53, !noalias !141
  %123 = load ptr, ptr %85, align 8, !tbaa !53, !noalias !144
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load ptr, ptr %74, align 8, !tbaa !49, !noalias !144
  %127 = load ptr, ptr %126, align 8, !tbaa !57, !noalias !144
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !144
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !144
  store ptr %130, ptr %85, align 8, !tbaa !53, !noalias !144
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !59, !noalias !144
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !63, !noalias !144
  br label %133

133:                                              ; preds = %121, %125
  %134 = load ptr, ptr %85, align 8, !tbaa !53, !noalias !144
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !63, !noalias !147
  %137 = icmp eq ptr %122, %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %136, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !59
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %136, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !63
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %140, ptr %143, align 8, !tbaa !59
  %144 = load ptr, ptr %139, align 8, !tbaa !59
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %144, i64 0, i32 1
  store ptr %142, ptr %145, align 8, !tbaa !63
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %122, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !63
  store ptr %147, ptr %141, align 8, !tbaa !63
  store ptr %122, ptr %139, align 8, !tbaa !59
  %148 = load ptr, ptr %146, align 8, !tbaa !63
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %148, i64 0, i32 2
  store ptr %136, ptr %149, align 8, !tbaa !59
  store ptr %136, ptr %146, align 8, !tbaa !63
  br label %150

150:                                              ; preds = %133, %138
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !75
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %152, i64 %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %154 = load ptr, ptr %110, align 8, !tbaa !53, !noalias !150
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load ptr, ptr %109, align 8, !tbaa !49, !noalias !150
  %158 = load ptr, ptr %157, align 8, !tbaa !57, !noalias !150
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8, !noalias !150
  %161 = call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %157, i64 noundef 32), !noalias !150
  store ptr %161, ptr %110, align 8, !tbaa !53, !noalias !150
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %161, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !59, !noalias !150
  %163 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %161, i64 0, i32 1
  store ptr %161, ptr %163, align 8, !tbaa !63, !noalias !150
  br label %164

164:                                              ; preds = %150, %156
  %165 = load ptr, ptr %110, align 8, !tbaa !53, !noalias !150
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %166 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !63, !noalias !153
  store ptr %167, ptr %7, align 8, !tbaa !84, !alias.scope !153
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %168 = load i64, ptr %52, align 8, !tbaa !48
  %169 = add i64 %168, 1
  store i64 %169, ptr %52, align 8, !tbaa !48
  %170 = load ptr, ptr %110, align 8, !tbaa !53, !noalias !156
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load ptr, ptr %109, align 8, !tbaa !49, !noalias !156
  %174 = load ptr, ptr %173, align 8, !tbaa !57, !noalias !156
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8, !noalias !156
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %173, i64 noundef 32), !noalias !156
  store ptr %177, ptr %110, align 8, !tbaa !53, !noalias !156
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %177, i64 0, i32 2
  store ptr %177, ptr %178, align 8, !tbaa !59, !noalias !156
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %177, i64 0, i32 1
  store ptr %177, ptr %179, align 8, !tbaa !63, !noalias !156
  br label %180

180:                                              ; preds = %164, %172
  %181 = load ptr, ptr %110, align 8, !tbaa !53, !noalias !156
  %182 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !63, !noalias !159
  store ptr %183, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_mRKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !52
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !111
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !75
  %22 = load i64, ptr %6, align 8, !tbaa !52
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !52
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !52
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !162

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %36 = load ptr, ptr %0, align 8, !tbaa !50
  store ptr %36, ptr %5, align 8, !tbaa !50
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !52
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !111
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !57
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !75
  %45 = load i64, ptr %37, align 8, !tbaa !52
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !75
  %50 = load i64, ptr %37, align 8, !tbaa !52
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_mRKSL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !75
  %54 = load i64, ptr %37, align 8, !tbaa !52
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !75
  %57 = load i64, ptr %6, align 8, !tbaa !52
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !50
  %61 = load i64, ptr %6, align 8, !tbaa !52
  %62 = load i64, ptr %13, align 8, !tbaa !111
  %63 = load ptr, ptr %9, align 8, !tbaa !75
  %64 = load ptr, ptr %5, align 8, !tbaa !50
  store ptr %64, ptr %0, align 8, !tbaa !50
  %65 = load i64, ptr %37, align 8, !tbaa !52
  store i64 %65, ptr %6, align 8, !tbaa !52
  %66 = load i64, ptr %38, align 8, !tbaa !111
  store i64 %66, ptr %13, align 8, !tbaa !111
  %67 = load ptr, ptr %44, align 8, !tbaa !75
  store ptr %67, ptr %9, align 8, !tbaa !75
  store ptr %60, ptr %5, align 8, !tbaa !50
  store i64 %61, ptr %37, align 8, !tbaa !52
  store i64 %62, ptr %38, align 8, !tbaa !111
  store ptr %63, ptr %44, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %69

70:                                               ; preds = %33
  %71 = ptrtoint ptr %11 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 5
  %75 = icmp ugt i64 %74, %2
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = sub i64 %2, %74
  %78 = icmp eq i64 %74, %2
  br i1 %78, label %79, label %81

79:                                               ; preds = %81, %76
  %80 = icmp eq ptr %11, %1
  br i1 %80, label %85, label %87

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %83, %81 ], [ 0, %76 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !163

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !164

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !165

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !166

104:                                              ; preds = %100, %96
  %105 = ptrtoint ptr %98 to i64
  %106 = sub i64 %105, %72
  %107 = ashr exact i64 %106, 5
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %109
  %110 = phi i64 [ %116, %109 ], [ %107, %104 ]
  %111 = phi ptr [ %114, %109 ], [ %11, %104 ]
  %112 = phi ptr [ %113, %109 ], [ %98, %104 ]
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !167

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !165

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !48
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %11, ptr %3, align 8, !tbaa !119
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2EmRKSL_RNS4_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %79

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !117
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !118
  %20 = load ptr, ptr %3, align 8, !tbaa !119
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #11
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !53, !noalias !168
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !49, !noalias !168
  %34 = load ptr, ptr %33, align 8, !tbaa !57, !noalias !168
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !168
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %93

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !53, !noalias !168
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !59, !noalias !168
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !63, !noalias !168
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %75, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %75 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !80, !noalias !64
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !59, !noalias !64
  store ptr %47, ptr %4, align 8, !tbaa !84
  %48 = load ptr, ptr %29, align 8, !tbaa !53, !noalias !171
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !49, !noalias !171
  %52 = load ptr, ptr %51, align 8, !tbaa !57, !noalias !171
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !171
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %95

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !53, !noalias !171
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !59, !noalias !171
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !63, !noalias !171
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !53, !noalias !171
  %61 = load ptr, ptr %4, align 8, !tbaa !84
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !68
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %73, %65 ]
  %67 = phi i64 [ 0, %63 ], [ %72, %65 ]
  %68 = shl i64 %67, 1
  %69 = getelementptr inbounds i8, ptr %64, i64 %66
  %70 = load i8, ptr %69, align 1, !tbaa !125
  %71 = sext i8 %70 to i64
  %72 = xor i64 %68, %71
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %75, label %65, !llvm.loop !126

75:                                               ; preds = %65
  %76 = urem i64 %72, %9
  %77 = load ptr, ptr %42, align 8, !tbaa !75
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %77, i64 %76
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %97, !llvm.loop !174

79:                                               ; preds = %1
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i64, ptr %13, align 8, !tbaa !117
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %14, align 8, !tbaa !118
  %85 = load ptr, ptr %3, align 8, !tbaa !119
  %86 = load ptr, ptr %85, align 8, !tbaa !57
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %83
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #11
  unreachable

92:                                               ; preds = %79, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %117

93:                                               ; preds = %32
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %115

95:                                               ; preds = %50
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %115

97:                                               ; preds = %75
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %115

99:                                               ; preds = %59
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !50
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !52
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !111
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !75
  %108 = load ptr, ptr %2, align 8, !tbaa !50
  store ptr %108, ptr %100, align 8, !tbaa !50
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !52
  store i64 %110, ptr %102, align 8, !tbaa !52
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !111
  store i64 %112, ptr %104, align 8, !tbaa !111
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !75
  store ptr %114, ptr %106, align 8, !tbaa !75
  store ptr %101, ptr %2, align 8, !tbaa !50
  store i64 %103, ptr %109, align 8, !tbaa !52
  store i64 %105, ptr %111, align 8, !tbaa !111
  store ptr %107, ptr %113, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  ret void

115:                                              ; preds = %97, %95, %93
  %116 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  br label %117

117:                                              ; preds = %115, %92
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %80, %92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !49
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !53
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !49
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !53
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !59
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !53
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE9push_backERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !175
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !49, !noalias !175
  %8 = load ptr, ptr %7, align 8, !tbaa !57, !noalias !175
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !175
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !175
  store ptr %11, ptr %3, align 8, !tbaa !53, !noalias !175
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !59, !noalias !175
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !63, !noalias !175
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !175
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !49
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !103
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !178
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  store ptr %33, ptr %31, align 8, !tbaa !80
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !80
  %35 = load ptr, ptr %32, align 8, !tbaa !63
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xercesc_2_7::DOMNode *, xalanc_1_10::XalanNode *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !59
  store ptr %29, ptr %32, align 8, !tbaa !63
  store ptr %30, ptr %16, align 8, !tbaa !103
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !52
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !111
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !75
  %28 = load i64, ptr %12, align 8, !tbaa !52
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !52
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !52
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !180

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %42 = load ptr, ptr %0, align 8, !tbaa !50
  store ptr %42, ptr %5, align 8, !tbaa !50
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !52
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !111
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !75
  %51 = load i64, ptr %43, align 8, !tbaa !52
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !75
  %56 = load i64, ptr %43, align 8, !tbaa !52
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !75
  %60 = load i64, ptr %43, align 8, !tbaa !52
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !75
  %63 = load i64, ptr %12, align 8, !tbaa !52
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !50
  %67 = load i64, ptr %12, align 8, !tbaa !52
  %68 = load i64, ptr %19, align 8, !tbaa !111
  %69 = load ptr, ptr %15, align 8, !tbaa !75
  %70 = load ptr, ptr %5, align 8, !tbaa !50
  store ptr %70, ptr %0, align 8, !tbaa !50
  %71 = load i64, ptr %43, align 8, !tbaa !52
  store i64 %71, ptr %12, align 8, !tbaa !52
  %72 = load i64, ptr %44, align 8, !tbaa !111
  store i64 %72, ptr %19, align 8, !tbaa !111
  %73 = load ptr, ptr %50, align 8, !tbaa !75
  store ptr %73, ptr %15, align 8, !tbaa !75
  store ptr %66, ptr %5, align 8, !tbaa !50
  store i64 %67, ptr %43, align 8, !tbaa !52
  store i64 %68, ptr %44, align 8, !tbaa !111
  store ptr %69, ptr %50, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !181

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !182

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !183

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !184

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %78
  %117 = ashr exact i64 %116, 5
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %121, %114
  %120 = icmp sgt i64 %9, 0
  br i1 %120, label %130, label %139

121:                                              ; preds = %114, %121
  %122 = phi i64 [ %128, %121 ], [ %117, %114 ]
  %123 = phi ptr [ %126, %121 ], [ %17, %114 ]
  %124 = phi ptr [ %125, %121 ], [ %108, %114 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !167

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !183

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !52
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !52
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %22 = load ptr, ptr %0, align 8, !tbaa !50
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2ERKSO_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !50
  %25 = load i64, ptr %4, align 8, !tbaa !52
  %26 = load i64, ptr %6, align 8, !tbaa !111
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %29, ptr %0, align 8, !tbaa !50
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !52
  store i64 %31, ptr %4, align 8, !tbaa !52
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !111
  store i64 %33, ptr %6, align 8, !tbaa !111
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  store ptr %35, ptr %27, align 8, !tbaa !75
  store ptr %24, ptr %3, align 8, !tbaa !50
  store i64 %25, ptr %30, align 8, !tbaa !52
  store i64 %26, ptr %32, align 8, !tbaa !111
  store ptr %28, ptr %34, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2ERKSO_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %12, ptr %0, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !52
  store i64 %14, ptr %6, align 8, !tbaa !52
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !111
  store i64 %16, ptr %8, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  store ptr %18, ptr %10, align 8, !tbaa !75
  store ptr %5, ptr %3, align 8, !tbaa !50
  store i64 %7, ptr %13, align 8, !tbaa !52
  store i64 %9, ptr %15, align 8, !tbaa !111
  store ptr %11, ptr %17, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2ERKSO_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !52
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !50
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !111
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !75
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = load i64, ptr %9, align 8, !tbaa !52
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_PKSL_SR_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !50
  %28 = load i64, ptr %6, align 8, !tbaa !52
  %29 = load i64, ptr %7, align 8, !tbaa !111
  %30 = load ptr, ptr %8, align 8, !tbaa !75
  %31 = load ptr, ptr %5, align 8, !tbaa !50
  store ptr %31, ptr %0, align 8, !tbaa !50
  %32 = load i64, ptr %14, align 8, !tbaa !52
  store i64 %32, ptr %6, align 8, !tbaa !52
  %33 = load i64, ptr %15, align 8, !tbaa !111
  store i64 %33, ptr %7, align 8, !tbaa !111
  %34 = load ptr, ptr %21, align 8, !tbaa !75
  store ptr %34, ptr %8, align 8, !tbaa !75
  store ptr %27, ptr %5, align 8, !tbaa !50
  store i64 %28, ptr %14, align 8, !tbaa !52
  store i64 %29, ptr %15, align 8, !tbaa !111
  store ptr %30, ptr %21, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !57
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !75
  store i64 %3, ptr %7, align 8, !tbaa !111
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !119
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !76
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !119
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !76
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !117
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !118
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  %24 = load i64, ptr %9, align 8, !tbaa !76
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !119
  %28 = load i64, ptr %6, align 8, !tbaa !76
  %29 = load i64, ptr %7, align 8, !tbaa !117
  %30 = load ptr, ptr %8, align 8, !tbaa !118
  %31 = load ptr, ptr %5, align 8, !tbaa !119
  store ptr %31, ptr %0, align 8, !tbaa !119
  %32 = load i64, ptr %14, align 8, !tbaa !76
  store i64 %32, ptr %6, align 8, !tbaa !76
  %33 = load i64, ptr %15, align 8, !tbaa !117
  store i64 %33, ptr %7, align 8, !tbaa !117
  %34 = load ptr, ptr %21, align 8, !tbaa !118
  store ptr %34, ptr %8, align 8, !tbaa !118
  store ptr %27, ptr %5, align 8, !tbaa !119
  store i64 %28, ptr %14, align 8, !tbaa !76
  store i64 %29, ptr %15, align 8, !tbaa !117
  store ptr %30, ptr %21, align 8, !tbaa !118
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #11
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !117
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !118
  %50 = load ptr, ptr %5, align 8, !tbaa !119
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #11
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !57
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !118
  store i64 %3, ptr %7, align 8, !tbaa !117
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !76
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !117
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !118
  %28 = load i64, ptr %12, align 8, !tbaa !76
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !84
  store ptr %34, ptr %32, align 8, !tbaa !84
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !185

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %42 = load ptr, ptr %0, align 8, !tbaa !119
  store ptr %42, ptr %5, align 8, !tbaa !119
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !76
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !117
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !118
  %51 = load i64, ptr %43, align 8, !tbaa !76
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !118
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !118
  %56 = load i64, ptr %43, align 8, !tbaa !76
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !118
  %60 = load i64, ptr %43, align 8, !tbaa !76
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !118
  %63 = load i64, ptr %12, align 8, !tbaa !76
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !119
  %67 = load i64, ptr %12, align 8, !tbaa !76
  %68 = load i64, ptr %19, align 8, !tbaa !117
  %69 = load ptr, ptr %15, align 8, !tbaa !118
  %70 = load ptr, ptr %5, align 8, !tbaa !119
  store ptr %70, ptr %0, align 8, !tbaa !119
  %71 = load i64, ptr %43, align 8, !tbaa !76
  store i64 %71, ptr %12, align 8, !tbaa !76
  %72 = load i64, ptr %44, align 8, !tbaa !117
  store i64 %72, ptr %19, align 8, !tbaa !117
  %73 = load ptr, ptr %50, align 8, !tbaa !118
  store ptr %73, ptr %15, align 8, !tbaa !118
  store ptr %66, ptr %5, align 8, !tbaa !119
  store i64 %67, ptr %43, align 8, !tbaa !76
  store i64 %68, ptr %44, align 8, !tbaa !117
  store ptr %69, ptr %50, align 8, !tbaa !118
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !57
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #11
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !117
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !118
  %89 = load ptr, ptr %5, align 8, !tbaa !119
  %90 = load ptr, ptr %89, align 8, !tbaa !57
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #11
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !186

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !187

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !84
  store ptr %122, ptr %120, align 8, !tbaa !84
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !188

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !189

135:                                              ; preds = %131, %127
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %136, %99
  %138 = ashr exact i64 %137, 3
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %142, %135
  %141 = icmp sgt i64 %9, 0
  br i1 %141, label %151, label %161

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %149, %142 ], [ %138, %135 ]
  %144 = phi ptr [ %147, %142 ], [ %17, %135 ]
  %145 = phi ptr [ %146, %142 ], [ %129, %135 ]
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !84
  store ptr %148, ptr %147, align 8, !tbaa !84
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !190

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !84
  store ptr %155, ptr %153, align 8, !tbaa !84
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !188

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !76
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !117
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %13, ptr %12, align 8, !tbaa !84
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !76
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %21 = load ptr, ptr %0, align 8, !tbaa !119
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !119
  %24 = load i64, ptr %4, align 8, !tbaa !76
  %25 = load i64, ptr %6, align 8, !tbaa !117
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  %28 = load ptr, ptr %3, align 8, !tbaa !119
  store ptr %28, ptr %0, align 8, !tbaa !119
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !76
  store i64 %30, ptr %4, align 8, !tbaa !76
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !117
  store i64 %32, ptr %6, align 8, !tbaa !117
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  store ptr %34, ptr %26, align 8, !tbaa !118
  store ptr %23, ptr %3, align 8, !tbaa !119
  store i64 %24, ptr %29, align 8, !tbaa !76
  store i64 %25, ptr %31, align 8, !tbaa !117
  store ptr %27, ptr %33, align 8, !tbaa !118
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !57
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #11
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !117
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !118
  %52 = load ptr, ptr %3, align 8, !tbaa !119
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #11
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !119
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !119
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !117
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = load ptr, ptr %3, align 8, !tbaa !119
  store ptr %12, ptr %0, align 8, !tbaa !119
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !76
  store i64 %14, ptr %6, align 8, !tbaa !76
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !117
  store i64 %16, ptr %8, align 8, !tbaa !117
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  store ptr %18, ptr %10, align 8, !tbaa !118
  store ptr %5, ptr %3, align 8, !tbaa !119
  store i64 %7, ptr %13, align 8, !tbaa !76
  store i64 %9, ptr %15, align 8, !tbaa !117
  store ptr %11, ptr %17, align 8, !tbaa !118
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !57
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #11
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEaSERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !76
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %12 = load ptr, ptr %0, align 8, !tbaa !119
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEC2ERKSL_RNS4_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !119
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !76
  %16 = load i64, ptr %6, align 8, !tbaa !117
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = load ptr, ptr %3, align 8, !tbaa !119
  store ptr %19, ptr %0, align 8, !tbaa !119
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !76
  store i64 %21, ptr %14, align 8, !tbaa !76
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !117
  store i64 %23, ptr %6, align 8, !tbaa !117
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  store ptr %25, ptr %17, align 8, !tbaa !118
  store ptr %13, ptr %3, align 8, !tbaa !119
  store i64 %15, ptr %20, align 8, !tbaa !76
  store i64 %16, ptr %22, align 8, !tbaa !117
  store ptr %18, ptr %24, align 8, !tbaa !118
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !57
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #11
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !76
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !118
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !76
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !76
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !118
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !118
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !84
  store ptr %68, ptr %66, align 8, !tbaa !84
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !188

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEC2EmRKSL_RNS4_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  store ptr %3, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEE6insertEPSL_mRKSL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !50
  %14 = load i64, ptr %6, align 8, !tbaa !52
  %15 = load i64, ptr %12, align 8, !tbaa !111
  %16 = load ptr, ptr %11, align 8, !tbaa !75
  %17 = load ptr, ptr %5, align 8, !tbaa !50
  store ptr %17, ptr %0, align 8, !tbaa !50
  %18 = load i64, ptr %7, align 8, !tbaa !52
  store i64 %18, ptr %6, align 8, !tbaa !52
  %19 = load i64, ptr %10, align 8, !tbaa !111
  store i64 %19, ptr %12, align 8, !tbaa !111
  %20 = load ptr, ptr %9, align 8, !tbaa !75
  store ptr %20, ptr %11, align 8, !tbaa !75
  store ptr %13, ptr %5, align 8, !tbaa !50
  store i64 %14, ptr %7, align 8, !tbaa !52
  store i64 %15, ptr %10, align 8, !tbaa !111
  store ptr %16, ptr %9, align 8, !tbaa !75
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
!35 = !{!36, !39, i64 8}
!36 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEEE", !37, i64 0, !38, i64 1, !39, i64 8, !42, i64 16, !43, i64 24, !43, i64 32, !44, i64 40, !44, i64 64, !45, i64 88, !43, i64 120, !43, i64 128}
!37 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKN11xercesc_2_77DOMNodeEEE"}
!38 = !{!"_ZTSSt8equal_toIPKN11xercesc_2_77DOMNodeEE"}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"float", !40, i64 0}
!43 = !{!"long", !40, i64 0}
!44 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEEE", !39, i64 0, !39, i64 8, !39, i64 16}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !39, i64 0, !43, i64 8, !43, i64 16, !39, i64 24}
!46 = !{!36, !42, i64 16}
!47 = !{!36, !43, i64 24}
!48 = !{!36, !43, i64 32}
!49 = !{!44, !39, i64 0}
!50 = !{!45, !39, i64 0}
!51 = !{!36, !43, i64 128}
!52 = !{!45, !43, i64 8}
!53 = !{!44, !39, i64 8}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv: argument 0"}
!56 = distinct !{!56, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv"}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !41, i64 0}
!59 = !{!60, !39, i64 24}
!60 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE4NodeE", !61, i64 0, !39, i64 16, !39, i64 24}
!61 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE5EntryE", !39, i64 0, !62, i64 8}
!62 = !{!"bool", !40, i64 0}
!63 = !{!60, !39, i64 16}
!64 = !{}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!67 = distinct !{!67, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!68 = !{!61, !39, i64 0}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!73, !39, i64 0}
!73 = !{!"_ZTSSt4pairIKPKN11xercesc_2_77DOMNodeEPN11xalanc_1_109XalanNodeEE", !39, i64 0, !39, i64 8}
!74 = !{!73, !39, i64 8}
!75 = !{!45, !39, i64 24}
!76 = !{!77, !43, i64 8}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEE", !39, i64 0, !43, i64 8, !43, i64 16, !39, i64 24}
!78 = distinct !{!78, !70, !71}
!79 = !{!36, !43, i64 120}
!80 = !{!39, !39, i64 0}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE4findERKS4_: argument 0"}
!83 = distinct !{!83, !"_ZNK11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE4findERKS4_"}
!84 = !{!85, !39, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEE", !39, i64 0}
!86 = !{!87, !89, !91}
!87 = distinct !{!87, !88, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!88 = distinct !{!88, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!89 = distinct !{!89, !90, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv: argument 0"}
!90 = distinct !{!90, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv"}
!91 = distinct !{!91, !92, !"_ZNK11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv: argument 0"}
!92 = distinct !{!92, !"_ZNK11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv: argument 0"}
!95 = distinct !{!95, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEppEi: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEppEi"}
!102 = distinct !{!102, !70, !71}
!103 = !{!44, !39, i64 16}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE5beginEv: argument 0"}
!106 = distinct !{!106, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE5beginEv"}
!107 = !{!108, !105}
!108 = distinct !{!108, !109, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv: argument 0"}
!109 = distinct !{!109, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv"}
!110 = distinct !{!110, !70, !71}
!111 = !{!45, !43, i64 16}
!112 = distinct !{!112, !70, !71}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!115 = distinct !{!115, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!116 = !{!61, !62, i64 8}
!117 = !{!77, !43, i64 16}
!118 = !{!77, !39, i64 24}
!119 = !{!77, !39, i64 0}
!120 = !{!121, !123}
!121 = distinct !{!121, !122, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!122 = distinct !{!122, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!123 = distinct !{!123, !124, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv: argument 0"}
!124 = distinct !{!124, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv"}
!125 = !{!40, !40, i64 0}
!126 = distinct !{!126, !70, !71}
!127 = !{i8 0, i8 2}
!128 = distinct !{!128, !70, !71}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv: argument 0"}
!131 = distinct !{!131, !"_ZN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEE3endEv"}
!132 = !{!133, !130}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!137 = distinct !{!137, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv: argument 0"}
!140 = distinct !{!140, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!143 = distinct !{!143, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv: argument 0"}
!149 = distinct !{!149, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!152 = distinct !{!152, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv: argument 0"}
!155 = distinct !{!155, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!158 = distinct !{!158, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv: argument 0"}
!161 = distinct !{!161, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEmmEv"}
!162 = distinct !{!162, !70, !71}
!163 = distinct !{!163, !70, !71}
!164 = distinct !{!164, !70, !71}
!165 = distinct !{!165, !70, !71}
!166 = distinct !{!166, !70, !71}
!167 = distinct !{!167, !70, !71}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv: argument 0"}
!170 = distinct !{!170, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE5beginEv"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!173 = distinct !{!173, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!174 = distinct !{!174, !70, !71}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv: argument 0"}
!177 = distinct !{!177, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEE3endEv"}
!178 = !{i64 0, i64 8, !80, i64 8, i64 1, !179}
!179 = !{!62, !62, i64 0}
!180 = distinct !{!180, !70, !71}
!181 = distinct !{!181, !70, !71}
!182 = distinct !{!182, !70, !71}
!183 = distinct !{!183, !70, !71}
!184 = distinct !{!184, !70, !71}
!185 = distinct !{!185, !70, !71}
!186 = distinct !{!186, !70, !71}
!187 = distinct !{!187, !70, !71}
!188 = distinct !{!188, !70, !71}
!189 = distinct !{!189, !70, !71}
!190 = distinct !{!190, !70, !71}
