; ModuleID = 'NodeSorter.cpp'
source_filename = "NodeSorter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"struct.std::nothrow_t" = type { i8 }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeSorter" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeSortKey" = type { ptr, ptr, i8, i8, i32, ptr, ptr }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare" }
%"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare" = type { ptr, ptr, ptr, ptr }
%"struct.xalanc_1_10::NodeSorter::VectorEntry" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.6", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%struct.anon = type { i32, i32 }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager.11" = type { %"class.xalanc_1_10::XalanVector.8" }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"class.xalanc_1_10::XalanVector.7" }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager.12" = type { %"class.xalanc_1_10::XalanDOMString" }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare" }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare" }

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6resizeEmRKd = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZSt21__inplace_stable_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_ = comdat any

$_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_ = comdat any

$_ZSt16__insertion_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_ = comdat any

$_ZSt22__merge_without_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_ = comdat any

$_ZNSt3_V28__rotateIPN11xalanc_1_1010NodeSorter11VectorEntryEEET_S5_S5_S5_St26random_access_iterator_tag = comdat any

$_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_ = comdat any

$_ZSt16__merge_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_SA_T2_ = comdat any

$_ZSt17__merge_sort_loopIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_ = comdat any

$_ZSt17__rotate_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lET_S4_S4_S4_T1_S5_T0_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEmRKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE6insertEPS4_PKS4_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE10doPushBackERKS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_ = comdat any

@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

@_ZN11xalanc_1_1010NodeSorterC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1010NodeSorterC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1010NodeSorterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010NodeSorterD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1010NodeSorterC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr %1, ptr %0, align 8, !tbaa !97
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !105
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %1, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !110
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !111

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !114

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #17
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !114, !llvm.loop !115

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !112
  %18 = load ptr, ptr %0, align 8, !tbaa !105
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !120

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !121
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !111

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !123
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !114

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !114, !llvm.loop !124

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !122
  %18 = load ptr, ptr %0, align 8, !tbaa !103
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !120

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !126
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !114

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !114, !llvm.loop !130

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !128
  %18 = load ptr, ptr %0, align 8, !tbaa !97
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !131

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010NodeSorterD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !132
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !133

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !131

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %8, i64 %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %74, label %13, !prof !137

13:                                               ; preds = %2
  %14 = add nsw i64 %10, 1
  %15 = sdiv i64 %14, 2
  %16 = tail call i64 @llvm.smin.i64(i64 %15, i64 576460752303423487)
  br label %17

17:                                               ; preds = %31, %13
  %18 = phi i64 [ %16, %13 ], [ %32, %31 ]
  %19 = phi ptr [ undef, %13 ], [ %33, %31 ]
  %20 = phi i64 [ undef, %13 ], [ %34, %31 ]
  %21 = icmp sgt i64 %18, 0
  br i1 %21, label %22, label %35, !prof !138

22:                                               ; preds = %17
  %23 = shl i64 %18, 4
  %24 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31, !prof !137

26:                                               ; preds = %22
  %27 = icmp eq i64 %18, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %18, 1
  %30 = lshr i64 %29, 1
  br label %31

31:                                               ; preds = %28, %26, %22
  %32 = phi i64 [ %18, %22 ], [ %30, %28 ], [ 0, %26 ]
  %33 = phi ptr [ %24, %22 ], [ %19, %28 ], [ %19, %26 ]
  %34 = phi i64 [ %18, %22 ], [ %20, %28 ], [ %20, %26 ]
  br i1 %25, label %17, label %35, !prof !137, !llvm.loop !139

35:                                               ; preds = %31, %17
  %36 = phi ptr [ null, %17 ], [ %33, %31 ]
  %37 = phi i64 [ 0, %17 ], [ %34, %31 ]
  %38 = icmp eq ptr %36, null
  br i1 %38, label %54, label %39, !prof !137

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %36, i64 %37
  %41 = icmp eq i64 %37, 0
  br i1 %41, label %54, label %42, !prof !137

42:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !140
  %43 = icmp eq i64 %37, 1
  br i1 %43, label %52, label %44, !prof !144

44:                                               ; preds = %42
  %45 = getelementptr %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %36, i64 1
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %50, %46 ], [ %45, %44 ]
  %48 = phi ptr [ %49, %46 ], [ %36, %44 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa.struct !140
  %49 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %48, i64 1
  %50 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %47, i64 1
  %51 = icmp eq ptr %50, %40
  br i1 %51, label %52, label %46, !prof !145, !llvm.loop !146

52:                                               ; preds = %46, %42
  %53 = phi ptr [ %36, %42 ], [ %49, %46 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %53, i64 12, i1 false), !tbaa.struct !140
  br label %54

54:                                               ; preds = %35, %52, %39
  %55 = phi ptr [ null, %35 ], [ %36, %52 ], [ %36, %39 ]
  %56 = phi i64 [ 0, %35 ], [ %37, %52 ], [ %37, %39 ]
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %69, !prof !137

58:                                               ; preds = %54
  store ptr %1, ptr %3, align 8
  %59 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %0, ptr %59, align 8
  %60 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %5, ptr %60, align 8
  %61 = getelementptr inbounds i8, ptr %3, i64 24
  store ptr %6, ptr %61, align 8
  invoke void @_ZSt21__inplace_stable_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_(ptr noundef %8, ptr noundef nonnull %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
          to label %73 unwind label %62

62:                                               ; preds = %69, %58
  %63 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %55) #17
  %64 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !123
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %146, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1, i32 3
  br label %139

69:                                               ; preds = %54
  store ptr %1, ptr %4, align 8
  %70 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %0, ptr %70, align 8
  %71 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %5, ptr %71, align 8
  %72 = getelementptr inbounds i8, ptr %4, i64 24
  store ptr %6, ptr %72, align 8
  invoke void @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %8, ptr noundef nonnull %11, ptr noundef nonnull %55, i64 noundef %56, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
          to label %73 unwind label %62, !prof !138

73:                                               ; preds = %58, %69
  tail call void @_ZdlPv(ptr noundef %55) #17
  br label %74

74:                                               ; preds = %2, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %75 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !123
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %125, label %78, !prof !144

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 1, i32 3
  br label %80

80:                                               ; preds = %78, %122
  %81 = load i64, ptr %75, align 8, !tbaa !123
  %82 = add i64 %81, -1
  store i64 %82, ptr %75, align 8, !tbaa !123
  %83 = load ptr, ptr %79, align 8, !tbaa !122
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %83, i64 %82
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %83, i64 %82, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !147
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %122, label %88, !prof !149

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %83, i64 %82, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !150
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %83, i64 %82, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !151
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %90, i64 %92
  %94 = icmp eq i64 %92, 0
  br i1 %94, label %113, label %95, !prof !152

95:                                               ; preds = %88, %110
  %96 = phi ptr [ %111, %110 ], [ %90, %88 ]
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !153
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %110, label %100, !prof !155

100:                                              ; preds = %95
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %96, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !156
  %103 = load ptr, ptr %96, align 8, !tbaa !157
  %104 = load ptr, ptr %103, align 8, !tbaa !118
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %102)
          to label %110 unwind label %107, !prof !158

107:                                              ; preds = %100
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  tail call void @__clang_call_terminate(ptr %109) #18
  unreachable

110:                                              ; preds = %100, %95
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %96, i64 1
  %112 = icmp eq ptr %111, %93
  br i1 %112, label %113, label %95, !prof !159, !llvm.loop !160

113:                                              ; preds = %110, %88
  %114 = load ptr, ptr %89, align 8, !tbaa !150
  %115 = load ptr, ptr %84, align 8, !tbaa !161
  %116 = load ptr, ptr %115, align 8, !tbaa !118
  %117 = getelementptr inbounds ptr, ptr %116, i64 3
  %118 = load ptr, ptr %117, align 8
  invoke void %118(ptr noundef nonnull align 8 dereferenceable(8) %115, ptr noundef %114)
          to label %122 unwind label %119, !prof !162

119:                                              ; preds = %113
  %120 = landingpad { ptr, i32 }
          catch ptr null
  %121 = extractvalue { ptr, i32 } %120, 0
  tail call void @__clang_call_terminate(ptr %121) #18
  unreachable

122:                                              ; preds = %80, %113
  %123 = load i64, ptr %75, align 8, !tbaa !123
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %80, !prof !163, !llvm.loop !164

125:                                              ; preds = %122, %74
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !129
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %138, label %129, !prof !165

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  br label %131

131:                                              ; preds = %129, %131
  %132 = load i64, ptr %126, align 8, !tbaa !129
  %133 = add i64 %132, -1
  store i64 %133, ptr %126, align 8, !tbaa !129
  %134 = load ptr, ptr %130, align 8, !tbaa !128
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %134, i64 %133
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %135) #17
  %136 = load i64, ptr %126, align 8, !tbaa !129
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %131, !prof !114, !llvm.loop !166

138:                                              ; preds = %131, %125
  ret void

139:                                              ; preds = %67, %139
  %140 = load i64, ptr %64, align 8, !tbaa !123
  %141 = add i64 %140, -1
  store i64 %141, ptr %64, align 8, !tbaa !123
  %142 = load ptr, ptr %68, align 8, !tbaa !122
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %142, i64 %141
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %143) #17
  %144 = load i64, ptr %64, align 8, !tbaa !123
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %139, !llvm.loop !164

146:                                              ; preds = %139, %62
  %147 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !129
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  br label %152

152:                                              ; preds = %150, %152
  %153 = load i64, ptr %147, align 8, !tbaa !129
  %154 = add i64 %153, -1
  store i64 %154, ptr %147, align 8, !tbaa !129
  %155 = load ptr, ptr %151, align 8, !tbaa !128
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %155, i64 %154
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %156) #17
  %157 = load i64, ptr %147, align 8, !tbaa !129
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %152, !llvm.loop !166

159:                                              ; preds = %152, %146
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %4 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %68, label %8, !prof !137

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !118
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(40) %2), !prof !167
  %13 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !132
  %17 = icmp ult i64 %16, %14
  br i1 %17, label %18, label %19, !prof !168

18:                                               ; preds = %8
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %14)
          to label %19 unwind label %33, !prof !169

19:                                               ; preds = %18, %8
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %37, label %21, !prof !144

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %4, i64 0, i32 1
  br label %23

23:                                               ; preds = %21, %30
  %24 = phi i32 [ 0, %21 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %25 = load ptr, ptr %2, align 8, !tbaa !118
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %24)
          to label %29 unwind label %35, !prof !170

29:                                               ; preds = %23
  store ptr %28, ptr %4, align 8, !tbaa !171
  store i32 %24, ptr %22, align 8, !tbaa !173
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %30 unwind label %35, !prof !174

30:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %31 = add nuw i32 %24, 1
  %32 = icmp eq i32 %31, %12
  br i1 %32, label %37, label %23, !prof !175, !llvm.loop !176

33:                                               ; preds = %18
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %60

35:                                               ; preds = %29, %23
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %60

37:                                               ; preds = %30, %19
  invoke void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %38 unwind label %54, !prof !138

38:                                               ; preds = %37
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %2)
          to label %39 unwind label %54, !prof !138

39:                                               ; preds = %38
  %40 = icmp eq i32 %12, 0
  br i1 %40, label %56, label %41, !prof !144

41:                                               ; preds = %39
  %42 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 3
  %43 = zext i32 %12 to i64
  br label %44

44:                                               ; preds = %41, %49
  %45 = phi i64 [ 0, %41 ], [ %50, %49 ]
  %46 = load ptr, ptr %42, align 8, !tbaa !134
  %47 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %46, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !171
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef %48)
          to label %49 unwind label %52, !prof !174

49:                                               ; preds = %44
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, %43
  br i1 %51, label %56, label %44, !prof !175, !llvm.loop !177

52:                                               ; preds = %44
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %60

54:                                               ; preds = %37, %38
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %60

56:                                               ; preds = %49, %39
  %57 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !136
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %68, label %67, !prof !137

60:                                               ; preds = %52, %54, %33, %35
  %61 = phi { ptr, i32 } [ %34, %33 ], [ %36, %35 ], [ %53, %52 ], [ %55, %54 ]
  %62 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %0, i64 0, i32 3, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !136
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i64 0, ptr %62, align 8, !tbaa !136
  br label %66

66:                                               ; preds = %65, %60
  resume { ptr, i32 } %61

67:                                               ; preds = %56
  store i64 0, ptr %57, align 8, !tbaa !136
  br label %68

68:                                               ; preds = %67, %56, %3
  ret void
}

declare void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #5

declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !178 {
  br label %5

5:                                                ; preds = %75, %4
  %6 = phi i32 [ %3, %4 ], [ %76, %75 ]
  %7 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %11, i64 %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %11, i64 %9, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !181, !range !185, !noundef !186
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %36, !prof !187

16:                                               ; preds = %5
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %19 = load ptr, ptr %0, align 8, !tbaa !188
  %20 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %11, i64 %9, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !189
  %22 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %11, i64 %9, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !190
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !191
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %19, align 8, !tbaa !118
  br i1 %26, label %28, label %32, !prof !193

28:                                               ; preds = %16
  %29 = getelementptr inbounds ptr, ptr %27, i64 143
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %23), !prof !194
  br label %66

32:                                               ; preds = %16
  %33 = getelementptr inbounds ptr, ptr %27, i64 144
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %21, i32 noundef %23)
  br label %66

36:                                               ; preds = %5
  %37 = tail call noundef double @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %38 = tail call noundef double @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %39 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !195
  %40 = bitcast double %37 to i64
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %39, %41
  %43 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %44 = lshr i64 %40, 32
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %42, i1 %46, i1 false, !prof !196
  %48 = bitcast double %38 to i64
  %49 = trunc i64 %48 to i32
  %50 = lshr i64 %48, 32
  %51 = trunc i64 %50 to i32
  br i1 %47, label %52, label %57, !prof !196

52:                                               ; preds = %36
  %53 = icmp ne i32 %39, %49
  %54 = icmp ne i32 %43, %51
  %55 = select i1 %53, i1 true, i1 %54, !prof !197
  %56 = sext i1 %55 to i32
  br label %66

57:                                               ; preds = %36
  %58 = icmp eq i32 %39, %49
  %59 = icmp eq i32 %43, %51
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %37, double noundef %38)
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %37, double noundef %38)
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %32, %28, %63, %52, %57, %61
  %67 = phi i32 [ %56, %52 ], [ 1, %57 ], [ -1, %61 ], [ %65, %63 ], [ %31, %28 ], [ %35, %32 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69, !prof !198

69:                                               ; preds = %66
  %70 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %11, i64 %9, i32 3
  %71 = load i8, ptr %70, align 1, !tbaa !199, !range !185, !noundef !186
  %72 = icmp eq i8 %71, 0
  %73 = sub nsw i32 0, %67
  %74 = select i1 %72, i32 %67, i32 %73, !prof !200
  br label %82

75:                                               ; preds = %66
  %76 = add i32 %6, 1
  %77 = zext i32 %76 to i64
  %78 = load ptr, ptr %7, align 8, !tbaa !179
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %78, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !113
  %81 = icmp ugt i64 %80, %77
  br i1 %81, label %5, label %82, !prof !201

82:                                               ; preds = %69, %75
  %83 = phi i32 [ 0, %75 ], [ %74, %69 ]
  ret i32 %83
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1, i32 noundef %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager.11", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !203
  %8 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !123
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %100, !prof !205

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %19 = load ptr, ptr %14, align 8, !tbaa !103
  store ptr %19, ptr %5, align 8, !tbaa !161
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %21 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !123
  %23 = icmp ugt i64 %22, %18
  br i1 %23, label %24, label %33, !prof !206

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1, i32 3
  br label %26

26:                                               ; preds = %26, %24
  %27 = load i64, ptr %21, align 8, !tbaa !123
  %28 = add i64 %27, -1
  store i64 %28, ptr %21, align 8, !tbaa !123
  %29 = load ptr, ptr %25, align 8, !tbaa !122
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %29, i64 %28
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #17
  %31 = load i64, ptr %21, align 8, !tbaa !123
  %32 = icmp ugt i64 %31, %18
  br i1 %32, label %26, label %62, !llvm.loop !164

33:                                               ; preds = %13
  %34 = icmp ult i64 %22, %18
  br i1 %34, label %35, label %62, !prof !207

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !121
  %38 = icmp ult i64 %37, %18
  br i1 %38, label %39, label %40, !prof !208

39:                                               ; preds = %35
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %18)
          to label %40 unwind label %58

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !122
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %42, i64 %18
  %44 = load i64, ptr %21, align 8, !tbaa !123
  %45 = icmp eq i64 %44, %18
  br i1 %45, label %62, label %46, !prof !209

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %42, i64 %44
  br label %48

48:                                               ; preds = %51, %46
  %49 = phi ptr [ %52, %51 ], [ %47, %46 ]
  %50 = load ptr, ptr %14, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef 0)
          to label %51 unwind label %56

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %49, i64 1
  %53 = load i64, ptr %21, align 8, !tbaa !123
  %54 = add i64 %53, 1
  store i64 %54, ptr %21, align 8, !tbaa !123
  %55 = icmp eq ptr %52, %43
  br i1 %55, label %62, label %48, !prof !210, !llvm.loop !211

56:                                               ; preds = %48
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %60

58:                                               ; preds = %39
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %57, %56 ], [ %59, %58 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %61

62:                                               ; preds = %51, %26, %40, %33
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !147
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %99, label %66, !prof !149

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !150
  %69 = load i64, ptr %20, align 8, !tbaa !151
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %68, i64 %69
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %90, label %72, !prof !152

72:                                               ; preds = %66, %87
  %73 = phi ptr [ %88, %87 ], [ %68, %66 ]
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !153
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %87, label %77, !prof !155

77:                                               ; preds = %72
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %73, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !156
  %80 = load ptr, ptr %73, align 8, !tbaa !157
  %81 = load ptr, ptr %80, align 8, !tbaa !118
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84, !prof !158

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #18
  unreachable

87:                                               ; preds = %77, %72
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %73, i64 1
  %89 = icmp eq ptr %88, %70
  br i1 %89, label %90, label %72, !prof !159, !llvm.loop !160

90:                                               ; preds = %87, %66
  %91 = load ptr, ptr %67, align 8, !tbaa !150
  %92 = load ptr, ptr %5, align 8, !tbaa !161
  %93 = load ptr, ptr %92, align 8, !tbaa !118
  %94 = getelementptr inbounds ptr, ptr %93, i64 3
  %95 = load ptr, ptr %94, align 8
  invoke void %95(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef %91)
          to label %99 unwind label %96, !prof !162

96:                                               ; preds = %90
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  call void @__clang_call_terminate(ptr %98) #18
  unreachable

99:                                               ; preds = %62, %90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %100

100:                                              ; preds = %99, %4
  %101 = zext i32 %2 to i64
  %102 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %9, i64 0, i32 1, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !122
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %103, i64 %101, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !151
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %125, label %107, !prof !212

107:                                              ; preds = %100
  %108 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %3, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !173
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %103, i64 %101, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !150
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %112, i64 %110
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %112, i64 %110, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !191
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %145, !prof !213

117:                                              ; preds = %107
  %118 = load ptr, ptr %3, align 8, !tbaa !171
  %119 = icmp eq ptr %7, null
  br i1 %119, label %120, label %121, !prof !214

120:                                              ; preds = %117
  call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef nonnull align 8 dereferenceable(36) %113)
  br label %145

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 8, !tbaa !188
  %123 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !215
  call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %7, ptr noundef %118, ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(36) %113)
  br label %145

125:                                              ; preds = %100
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %103, i64 %101
  %127 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !216
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %128, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !136
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %126, i64 noundef %130)
  %131 = load ptr, ptr %3, align 8, !tbaa !171
  %132 = load ptr, ptr %102, align 8, !tbaa !122
  %133 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %3, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !173
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %132, i64 %101, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !150
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %137, i64 %135
  %139 = icmp eq ptr %7, null
  br i1 %139, label %140, label %141, !prof !217

140:                                              ; preds = %125
  call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull align 8 dereferenceable(36) %138)
  br label %145

141:                                              ; preds = %125
  %142 = load ptr, ptr %0, align 8, !tbaa !188
  %143 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %144 = load ptr, ptr %143, align 8, !tbaa !215
  call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %7, ptr noundef %131, ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef nonnull align 8 dereferenceable(24) %142, ptr noundef nonnull align 8 dereferenceable(36) %138)
  br label %145

145:                                              ; preds = %141, %140, %121, %120, %107
  %146 = load ptr, ptr %102, align 8, !tbaa !122
  %147 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %3, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !173
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %146, i64 %101, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !150
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %151, i64 %149
  ret ptr %152
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1, i32 noundef %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !129
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20, !prof !219

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !113
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %19)
  br label %20

20:                                               ; preds = %15, %4
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %23, i64 %21, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !220
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %72, label %27, !prof !219

27:                                               ; preds = %20
  %28 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %3, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !173
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %23, i64 %21, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !222
  %33 = getelementptr inbounds double, ptr %32, i64 %30
  %34 = load double, ptr %33, align 8, !tbaa !223
  %35 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %34, double noundef 0x41A0300EA8000000)
  br i1 %35, label %36, label %135, !prof !225

36:                                               ; preds = %27
  %37 = load ptr, ptr %3, align 8, !tbaa !171
  %38 = load ptr, ptr %0, align 8, !tbaa !188
  %39 = icmp eq ptr %9, null
  br i1 %39, label %40, label %68, !prof !226

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !118
  %42 = getelementptr inbounds ptr, ptr %41, i64 23
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef nonnull align 8 dereferenceable(36) ptr %43(ptr noundef nonnull align 8 dereferenceable(24) %38)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(36) %44)
          to label %45 unwind label %57

45:                                               ; preds = %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %38, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !227
  %48 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %49 unwind label %57

49:                                               ; preds = %45
  %50 = load ptr, ptr %38, align 8, !tbaa !118
  %51 = getelementptr inbounds ptr, ptr %50, i64 24
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(36) %44)
          to label %126 unwind label %54

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %45, %40
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %38, align 8, !tbaa !118
  %60 = getelementptr inbounds ptr, ptr %59, i64 24
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(36) %44)
          to label %66 unwind label %63

63:                                               ; preds = %57
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  tail call void @__clang_call_terminate(ptr %65) #18
  unreachable

66:                                               ; preds = %57, %110
  %67 = phi { ptr, i32 } [ %111, %110 ], [ %58, %57 ]
  resume { ptr, i32 } %67

68:                                               ; preds = %36
  %69 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %9, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %71 = load double, ptr %6, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %126

72:                                               ; preds = %20
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %23, i64 %21
  %74 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !216
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store double 0.000000e+00, ptr %7, align 8, !tbaa !223
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(32) %73, i64 noundef %77, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %78 = load ptr, ptr %22, align 8, !tbaa !128
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %78, i64 %21, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !222
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %78, i64 %21, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !220
  %83 = getelementptr inbounds double, ptr %80, i64 %82
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %89, label %85, !prof !229

85:                                               ; preds = %72, %85
  %86 = phi ptr [ %87, %85 ], [ %80, %72 ]
  store double 0x41A0300EA8000000, ptr %86, align 8, !tbaa !223
  %87 = getelementptr inbounds double, ptr %86, i64 1
  %88 = icmp eq ptr %87, %83
  br i1 %88, label %89, label %85, !prof !230, !llvm.loop !231

89:                                               ; preds = %85, %72
  %90 = load ptr, ptr %3, align 8, !tbaa !171
  %91 = load ptr, ptr %0, align 8, !tbaa !188
  %92 = icmp eq ptr %9, null
  br i1 %92, label %93, label %119, !prof !133

93:                                               ; preds = %89
  %94 = load ptr, ptr %91, align 8, !tbaa !118
  %95 = getelementptr inbounds ptr, ptr %94, i64 23
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef nonnull align 8 dereferenceable(36) ptr %96(ptr noundef nonnull align 8 dereferenceable(24) %91)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull align 8 dereferenceable(36) %97)
          to label %98 unwind label %110

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %91, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !227
  %101 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %97, ptr noundef nonnull align 8 dereferenceable(8) %100)
          to label %102 unwind label %110

102:                                              ; preds = %98
  %103 = load ptr, ptr %91, align 8, !tbaa !118
  %104 = getelementptr inbounds ptr, ptr %103, i64 24
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef zeroext i1 %105(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(36) %97)
          to label %123 unwind label %107

107:                                              ; preds = %102
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  call void @__clang_call_terminate(ptr %109) #18
  unreachable

110:                                              ; preds = %98, %93
  %111 = landingpad { ptr, i32 }
          cleanup
  %112 = load ptr, ptr %91, align 8, !tbaa !118
  %113 = getelementptr inbounds ptr, ptr %112, i64 24
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef zeroext i1 %114(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(36) %97)
          to label %66 unwind label %116

116:                                              ; preds = %110
  %117 = landingpad { ptr, i32 }
          catch ptr null
  %118 = extractvalue { ptr, i32 } %117, 0
  call void @__clang_call_terminate(ptr %118) #18
  unreachable

119:                                              ; preds = %89
  %120 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %9, ptr noundef %90, ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %122 = load double, ptr %5, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %123

123:                                              ; preds = %102, %119
  %124 = phi double [ %122, %119 ], [ %101, %102 ]
  %125 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %3, i64 0, i32 1
  br label %126

126:                                              ; preds = %68, %49, %123
  %127 = phi ptr [ %125, %123 ], [ %28, %49 ], [ %28, %68 ]
  %128 = phi double [ %124, %123 ], [ %71, %68 ], [ %48, %49 ]
  %129 = load ptr, ptr %22, align 8, !tbaa !128
  %130 = load i32, ptr %127, align 8, !tbaa !173
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %129, i64 %21, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !222
  %134 = getelementptr inbounds double, ptr %133, i64 %131
  store double %128, ptr %134, align 8, !tbaa !223
  br label %135

135:                                              ; preds = %126, %27
  %136 = load ptr, ptr %22, align 8, !tbaa !128
  %137 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %3, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !173
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %136, i64 %21, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !222
  %142 = getelementptr inbounds double, ptr %141, i64 %139
  %143 = load double, ptr %142, align 8, !tbaa !223
  ret double %143
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef, double noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !97
  store ptr %4, ptr %3, align 8, !tbaa !232
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %8 unwind label %21, !prof !114

8:                                                ; preds = %2
  %9 = load i64, ptr %6, align 8, !tbaa !233
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %20, label %11, !prof !114

11:                                               ; preds = %8
  %12 = load ptr, ptr %7, align 8, !tbaa !222
  %13 = load ptr, ptr %3, align 8, !tbaa !232
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %12)
          to label %20 unwind label %17

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #18
  unreachable

20:                                               ; preds = %8, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load i64, ptr %6, align 8, !tbaa !233
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8, !tbaa !222
  %27 = load ptr, ptr %3, align 8, !tbaa !232
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %22
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !220
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !133

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !114

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !233
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !114

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !222
  %17 = getelementptr inbounds double, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !220
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !229

20:                                               ; preds = %14
  %21 = getelementptr inbounds double, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load double, ptr %2, align 8, !tbaa !223
  store double %25, ptr %23, align 8, !tbaa !223
  %26 = getelementptr inbounds double, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !230, !llvm.loop !234

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !220
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !220
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !235 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager.12", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !161
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %5 unwind label %20, !prof !236

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !153
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9, !prof !236

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = load ptr, ptr %3, align 8, !tbaa !157
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %11)
          to label %19 unwind label %16

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %5, %9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !153
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !156
  %28 = load ptr, ptr %3, align 8, !tbaa !157
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %25
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #18
  unreachable

35:                                               ; preds = %20, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %21
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !237 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !238 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !233
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !239

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = load ptr, ptr %0, align 8, !tbaa !232
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !240

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !241 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !147
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %36, label %5, !prof !149

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !151
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %30, label %12, !prof !152

12:                                               ; preds = %5, %27
  %13 = phi ptr [ %28, %27 ], [ %7, %5 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !153
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %27, label %17, !prof !155

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !156
  %20 = load ptr, ptr %13, align 8, !tbaa !157
  %21 = load ptr, ptr %20, align 8, !tbaa !118
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24, !prof !158

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %12, %17
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 1
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %30, label %12, !prof !159, !llvm.loop !160

30:                                               ; preds = %27, %5
  %31 = load ptr, ptr %6, align 8, !tbaa !150
  %32 = load ptr, ptr %0, align 8, !tbaa !161
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %36 unwind label %37, !prof !162

36:                                               ; preds = %30, %1
  ret void

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #18
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !242 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !153
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !155

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = load ptr, ptr %0, align 8, !tbaa !157
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !158

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #6 comdat !prof !237 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp slt i64 %7, 15
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  tail call void @_ZSt16__insertion_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  br label %10

10:                                               ; preds = %9, %11
  ret void

11:                                               ; preds = %3
  %12 = lshr i64 %7, 1
  %13 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %0, i64 %12
  tail call void @_ZSt21__inplace_stable_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %13, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  tail call void @_ZSt21__inplace_stable_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_(ptr noundef %13, ptr noundef %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %4, %14
  %16 = ashr exact i64 %15, 4
  tail call void @_ZSt22__merge_without_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %0, ptr noundef %13, ptr noundef %1, i64 noundef %12, i64 noundef %16, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  br label %10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4) local_unnamed_addr #2 comdat !prof !135 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = add nsw i64 %9, 1
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %0, i64 %11
  %13 = icmp sgt i64 %11, %3
  br i1 %13, label %14, label %15, !prof !137

14:                                               ; preds = %5
  tail call void @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %12, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  tail call void @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %12, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  br label %16

15:                                               ; preds = %5
  tail call void @_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %12, ptr noundef %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  tail call void @_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_(ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  br label %16

16:                                               ; preds = %15, %14
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %6, %17
  %19 = ashr exact i64 %18, 4
  tail call void @_ZSt16__merge_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %0, ptr noundef %12, ptr noundef %1, i64 noundef %11, i64 noundef %19, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  ret void
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPN11xalanc_1_1010NodeSorter11VectorEntryEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #2 comdat !prof !237 {
  %4 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %7 = icmp eq ptr %0, %1
  %8 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %0, i64 1
  %9 = icmp eq ptr %8, %1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %39, label %11, !prof !243

11:                                               ; preds = %3, %36
  %12 = phi ptr [ %37, %36 ], [ %8, %3 ]
  %13 = phi ptr [ %12, %36 ], [ %0, %3 ]
  %14 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24, !prof !244

16:                                               ; preds = %11
  %17 = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !140
  %18 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %13, i64 2
  %19 = ptrtoint ptr %12 to i64
  %20 = sub i64 %19, %17
  %21 = ashr exact i64 %20, 4
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %18, i64 %22
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %20, i1 false), !prof !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  br label %36

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !140
  %25 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %12, i64 -1
  %26 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %25, i32 noundef 0)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34, !prof !246

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %25, %24 ]
  %30 = phi ptr [ %29, %28 ], [ %12, %24 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %30, ptr noundef nonnull align 8 dereferenceable(12) %29, i64 12, i1 false), !tbaa.struct !140
  %31 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %29, i64 -1
  %32 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %31, i32 noundef 0)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %28, label %34, !prof !247, !llvm.loop !248

34:                                               ; preds = %28, %24
  %35 = phi ptr [ %12, %24 ], [ %29, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %35, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  br label %36

36:                                               ; preds = %16, %34
  %37 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %12, i64 1
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %11, !prof !249, !llvm.loop !250

39:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) local_unnamed_addr #6 comdat !prof !237 {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %10 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  br label %11

11:                                               ; preds = %80, %6
  %12 = phi ptr [ %0, %6 ], [ %85, %80 ]
  %13 = phi ptr [ %1, %6 ], [ %82, %80 ]
  %14 = phi i64 [ %3, %6 ], [ %86, %80 ]
  %15 = phi i64 [ %4, %6 ], [ %87, %80 ]
  %16 = icmp eq i64 %14, 0
  %17 = icmp eq i64 %15, 0
  %18 = or i1 %16, %17
  br i1 %18, label %88, label %19

19:                                               ; preds = %11
  %20 = add nsw i64 %15, %14
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 0)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %88

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  br label %88

26:                                               ; preds = %19
  %27 = icmp sgt i64 %14, %15
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = sdiv i64 %14, 2
  %30 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %12, i64 %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %31 = ptrtoint ptr %2 to i64
  %32 = ptrtoint ptr %13 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 4
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28, %36
  %37 = phi ptr [ %47, %36 ], [ %13, %28 ]
  %38 = phi i64 [ %46, %36 ], [ %34, %28 ]
  %39 = lshr i64 %38, 1
  %40 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %37, i64 %39
  %41 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(12) %40, ptr noundef nonnull align 8 dereferenceable(12) %30, i32 noundef 0)
  %42 = icmp slt i32 %41, 0
  %43 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %40, i64 1
  %44 = xor i64 %39, -1
  %45 = add nsw i64 %38, %44
  %46 = select i1 %42, i64 %45, i64 %39
  %47 = select i1 %42, ptr %43, ptr %37
  %48 = icmp sgt i64 %46, 0
  br i1 %48, label %36, label %49, !llvm.loop !251

49:                                               ; preds = %36, %28
  %50 = phi ptr [ %13, %28 ], [ %47, %36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9)
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %51, %32
  %53 = ashr exact i64 %52, 4
  br label %80

54:                                               ; preds = %26
  %55 = sdiv i64 %15, 2
  %56 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %13, i64 %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %57 = ptrtoint ptr %13 to i64
  %58 = ptrtoint ptr %12 to i64
  %59 = sub i64 %57, %58
  %60 = ashr exact i64 %59, 4
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %54, %62
  %63 = phi ptr [ %73, %62 ], [ %12, %54 ]
  %64 = phi i64 [ %72, %62 ], [ %60, %54 ]
  %65 = lshr i64 %64, 1
  %66 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %63, i64 %65
  %67 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(12) %56, ptr noundef nonnull align 8 dereferenceable(12) %66, i32 noundef 0)
  %68 = icmp slt i32 %67, 0
  %69 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %66, i64 1
  %70 = xor i64 %65, -1
  %71 = add nsw i64 %64, %70
  %72 = select i1 %68, i64 %65, i64 %71
  %73 = select i1 %68, ptr %63, ptr %69
  %74 = icmp sgt i64 %72, 0
  br i1 %74, label %62, label %75, !llvm.loop !252

75:                                               ; preds = %62, %54
  %76 = phi ptr [ %12, %54 ], [ %73, %62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8)
  %77 = ptrtoint ptr %76 to i64
  %78 = sub i64 %77, %58
  %79 = ashr exact i64 %78, 4
  br label %80

80:                                               ; preds = %75, %49
  %81 = phi ptr [ %30, %49 ], [ %76, %75 ]
  %82 = phi ptr [ %50, %49 ], [ %56, %75 ]
  %83 = phi i64 [ %53, %49 ], [ %55, %75 ]
  %84 = phi i64 [ %29, %49 ], [ %79, %75 ]
  %85 = tail call noundef ptr @_ZNSt3_V28__rotateIPN11xalanc_1_1010NodeSorter11VectorEntryEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %81, ptr noundef %13, ptr noundef %82)
  tail call void @_ZSt22__merge_without_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %12, ptr noundef %81, ptr noundef %85, i64 noundef %84, i64 noundef %83, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %86 = sub nsw i64 %14, %84
  %87 = sub nsw i64 %15, %83
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %7, i64 32, i1 false)
  br label %11

88:                                               ; preds = %22, %25, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPN11xalanc_1_1010NodeSorter11VectorEntryEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !237 {
  %4 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %5 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %6 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %82, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, %1
  br i1 %9, label %82, label %10

10:                                               ; preds = %8
  %11 = ptrtoint ptr %2 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 4
  %15 = ptrtoint ptr %1 to i64
  %16 = sub i64 %15, %12
  %17 = ashr exact i64 %16, 4
  %18 = sub nsw i64 %14, %17
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = icmp eq ptr %0, %1
  br i1 %21, label %82, label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %1, %20 ]
  %24 = phi ptr [ %25, %22 ], [ %0, %20 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %25 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %24, i64 1
  %26 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %23, i64 1
  %27 = icmp eq ptr %25, %1
  br i1 %27, label %82, label %22, !llvm.loop !253

28:                                               ; preds = %10
  %29 = sub i64 %11, %15
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  br label %31

31:                                               ; preds = %69, %28
  %32 = phi i64 [ %14, %28 ], [ %70, %69 ]
  %33 = phi i64 [ %17, %28 ], [ %71, %69 ]
  %34 = phi ptr [ %0, %28 ], [ %72, %69 ]
  %35 = phi ptr [ undef, %28 ], [ %73, %69 ]
  %36 = sub nsw i64 %32, %33
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = icmp sgt i64 %36, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %34, i64 %33
  br label %49

42:                                               ; preds = %49, %38
  %43 = phi ptr [ %34, %38 ], [ %53, %49 ]
  %44 = srem i64 %32, %33
  %45 = icmp eq i64 %44, 0
  %46 = sub nsw i64 %33, %44
  %47 = select i1 %45, i64 0, i64 %33
  %48 = select i1 %45, ptr %30, ptr %35
  br i1 %45, label %82, label %69

49:                                               ; preds = %40, %49
  %50 = phi i64 [ %55, %49 ], [ 0, %40 ]
  %51 = phi ptr [ %54, %49 ], [ %41, %40 ]
  %52 = phi ptr [ %53, %49 ], [ %34, %40 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false), !tbaa.struct !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %52, ptr noundef nonnull align 8 dereferenceable(12) %51, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %51, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %53 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %52, i64 1
  %54 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %51, i64 1
  %55 = add nuw nsw i64 %50, 1
  %56 = icmp eq i64 %55, %36
  br i1 %56, label %42, label %49, !llvm.loop !254

57:                                               ; preds = %31
  %58 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %34, i64 %32
  %59 = sub i64 0, %36
  %60 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %58, i64 %59
  %61 = icmp sgt i64 %33, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %74, %57
  %63 = phi ptr [ %60, %57 ], [ %34, %74 ]
  %64 = srem i64 %32, %36
  %65 = icmp eq i64 %64, 0
  %66 = select i1 %65, i64 0, i64 %36
  %67 = select i1 %65, i64 %36, i64 %64
  %68 = select i1 %65, ptr %30, ptr %35
  br i1 %65, label %82, label %69

69:                                               ; preds = %62, %42
  %70 = phi i64 [ %47, %42 ], [ %66, %62 ]
  %71 = phi i64 [ %46, %42 ], [ %67, %62 ]
  %72 = phi ptr [ %43, %42 ], [ %63, %62 ]
  %73 = phi ptr [ %48, %42 ], [ %68, %62 ]
  br label %31, !llvm.loop !255

74:                                               ; preds = %57, %74
  %75 = phi i64 [ %80, %74 ], [ 0, %57 ]
  %76 = phi ptr [ %79, %74 ], [ %58, %57 ]
  %77 = phi ptr [ %78, %74 ], [ %60, %57 ]
  %78 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %77, i64 -1
  %79 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %76, i64 -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %78, i64 16, i1 false), !tbaa.struct !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %78, ptr noundef nonnull align 8 dereferenceable(12) %79, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %33
  br i1 %81, label %62, label %74, !llvm.loop !256

82:                                               ; preds = %62, %42, %22, %20, %8, %3
  %83 = phi ptr [ %2, %3 ], [ %0, %8 ], [ %1, %20 ], [ %1, %22 ], [ %48, %42 ], [ %68, %62 ]
  ret ptr %83
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3) local_unnamed_addr #2 comdat !prof !257 {
  %5 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %7 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %8 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %10 = alloca %"struct.xalanc_1_10::NodeSorter::VectorEntry", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca %"struct.xalanc_1_10::NodeSorter::NodeSortKeyCompare", align 8
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = ashr exact i64 %15, 4
  %17 = getelementptr inbounds i8, ptr %2, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %13, %18
  %20 = icmp slt i64 %19, 112
  br i1 %20, label %57, label %21, !prof !258

21:                                               ; preds = %4, %52
  %22 = phi i64 [ %54, %52 ], [ %18, %4 ]
  %23 = phi ptr [ %53, %52 ], [ %0, %4 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  br label %24

24:                                               ; preds = %49, %21
  %25 = phi i64 [ 16, %21 ], [ %50, %49 ]
  %26 = phi ptr [ %23, %21 ], [ %27, %49 ]
  %27 = getelementptr inbounds i8, ptr %23, i64 %25
  %28 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull align 8 dereferenceable(12) %23, i32 noundef 0)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37, !prof !244

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !140
  %31 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %26, i64 2
  %32 = ptrtoint ptr %27 to i64
  %33 = sub i64 %32, %22
  %34 = ashr exact i64 %33, 4
  %35 = sub nsw i64 0, %34
  %36 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %31, i64 %35
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %23, i64 %33, i1 false), !prof !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  br label %49

37:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !140
  %38 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %27, i64 -1
  %39 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %38, i32 noundef 0)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47, !prof !246

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %44, %41 ], [ %38, %37 ]
  %43 = phi ptr [ %42, %41 ], [ %27, %37 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %43, ptr noundef nonnull align 8 dereferenceable(12) %42, i64 12, i1 false), !tbaa.struct !140
  %44 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %42, i64 -1
  %45 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %44, i32 noundef 0)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %41, label %47, !prof !247, !llvm.loop !248

47:                                               ; preds = %41, %37
  %48 = phi ptr [ %27, %37 ], [ %42, %41 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %48, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9)
  br label %49

49:                                               ; preds = %47, %30
  %50 = add nuw nsw i64 %25, 16
  %51 = icmp eq i64 %50, 112
  br i1 %51, label %52, label %24, !prof !249, !llvm.loop !250

52:                                               ; preds = %49
  %53 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %23, i64 7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11)
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %13, %54
  %56 = icmp slt i64 %55, 112
  br i1 %56, label %57, label %21, !prof !260, !llvm.loop !261

57:                                               ; preds = %52, %4
  %58 = phi ptr [ %0, %4 ], [ %53, %52 ]
  %59 = phi i64 [ %18, %4 ], [ %54, %52 ]
  %60 = icmp eq ptr %58, %1
  %61 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %58, i64 1
  %62 = icmp eq ptr %61, %1
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %91, label %64, !prof !243

64:                                               ; preds = %57, %88
  %65 = phi ptr [ %89, %88 ], [ %61, %57 ]
  %66 = phi ptr [ %65, %88 ], [ %58, %57 ]
  %67 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(12) %65, ptr noundef nonnull align 8 dereferenceable(12) %58, i32 noundef 0)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76, !prof !244

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %65, i64 16, i1 false), !tbaa.struct !140
  %70 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %66, i64 2
  %71 = ptrtoint ptr %65 to i64
  %72 = sub i64 %71, %59
  %73 = ashr exact i64 %72, 4
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %70, i64 %74
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %75, ptr noundef nonnull align 8 dereferenceable(1) %58, i64 %72, i1 false), !prof !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %58, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  br label %88

76:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %65, i64 16, i1 false), !tbaa.struct !140
  %77 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %65, i64 -1
  %78 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %77, i32 noundef 0)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86, !prof !246

80:                                               ; preds = %76, %80
  %81 = phi ptr [ %83, %80 ], [ %77, %76 ]
  %82 = phi ptr [ %81, %80 ], [ %65, %76 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %82, ptr noundef nonnull align 8 dereferenceable(12) %81, i64 12, i1 false), !tbaa.struct !140
  %83 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %81, i64 -1
  %84 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %83, i32 noundef 0)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %80, label %86, !prof !247, !llvm.loop !248

86:                                               ; preds = %80, %76
  %87 = phi ptr [ %65, %76 ], [ %81, %80 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %87, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6)
  br label %88

88:                                               ; preds = %86, %69
  %89 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %65, i64 1
  %90 = icmp eq ptr %89, %1
  br i1 %90, label %91, label %64, !prof !249, !llvm.loop !250

91:                                               ; preds = %88, %57
  %92 = icmp sgt i64 %16, 7
  br i1 %92, label %93, label %98, !prof !263

93:                                               ; preds = %91, %93
  %94 = phi i64 [ %96, %93 ], [ 7, %91 ]
  tail call void @_ZSt17__merge_sort_loopIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %94, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %95 = shl nuw nsw i64 %94, 1
  tail call void @_ZSt17__merge_sort_loopIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %2, ptr noundef %17, ptr noundef %0, i64 noundef %95, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %96 = shl nsw i64 %94, 2
  %97 = icmp slt i64 %96, %16
  br i1 %97, label %93, label %98, !prof !264, !llvm.loop !265

98:                                               ; preds = %93, %91
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7) local_unnamed_addr #2 comdat !prof !135 {
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  br label %14

14:                                               ; preds = %160, %8
  %15 = phi ptr [ %0, %8 ], [ %166, %160 ]
  %16 = phi ptr [ %1, %8 ], [ %162, %160 ]
  %17 = phi i64 [ %3, %8 ], [ %165, %160 ]
  %18 = phi i64 [ %4, %8 ], [ %167, %160 ]
  %19 = icmp sgt i64 %17, %18
  %20 = icmp sgt i64 %17, %6
  %21 = or i1 %19, %20
  br i1 %21, label %59, label %22, !prof !266

22:                                               ; preds = %14
  %23 = ptrtoint ptr %16 to i64
  %24 = ptrtoint ptr %15 to i64
  %25 = sub i64 %23, %24
  %26 = icmp eq ptr %16, %15
  br i1 %26, label %28, label %27, !prof !267

27:                                               ; preds = %22
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %15, i64 %25, i1 false), !prof !268
  br label %28

28:                                               ; preds = %22, %27
  %29 = getelementptr inbounds i8, ptr %5, i64 %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %30 = icmp ne ptr %16, %15
  %31 = icmp ne ptr %16, %2
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %50, !prof !269

33:                                               ; preds = %28, %43
  %34 = phi ptr [ %46, %43 ], [ %15, %28 ]
  %35 = phi ptr [ %45, %43 ], [ %5, %28 ]
  %36 = phi ptr [ %44, %43 ], [ %16, %28 ]
  %37 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(12) %36, ptr noundef nonnull align 8 dereferenceable(12) %35, i32 noundef 0)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41, !prof !270

39:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %36, i64 12, i1 false), !tbaa.struct !140
  %40 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %36, i64 1
  br label %43

41:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %35, i64 12, i1 false), !tbaa.struct !140
  %42 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %35, i64 1
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %36, %41 ]
  %45 = phi ptr [ %35, %39 ], [ %42, %41 ]
  %46 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %34, i64 1
  %47 = icmp ne ptr %45, %29
  %48 = icmp ne ptr %44, %2
  %49 = select i1 %47, i1 %48, i1 false, !prof !271
  br i1 %49, label %33, label %50, !prof !272, !llvm.loop !273

50:                                               ; preds = %43, %28
  %51 = phi ptr [ %5, %28 ], [ %45, %43 ]
  %52 = phi ptr [ %15, %28 ], [ %46, %43 ]
  %53 = phi i1 [ %30, %28 ], [ %47, %43 ]
  br i1 %53, label %54, label %58, !prof !274

54:                                               ; preds = %50
  %55 = ptrtoint ptr %29 to i64
  %56 = ptrtoint ptr %51 to i64
  %57 = sub i64 %55, %56
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %52, ptr align 8 %51, i64 %57, i1 false), !prof !275
  br label %58

58:                                               ; preds = %50, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13)
  br label %168

59:                                               ; preds = %14
  %60 = icmp sgt i64 %18, %6
  br i1 %60, label %107, label %61, !prof !276

61:                                               ; preds = %59
  %62 = ptrtoint ptr %2 to i64
  %63 = ptrtoint ptr %16 to i64
  %64 = sub i64 %62, %63
  %65 = icmp eq ptr %2, %16
  br i1 %65, label %67, label %66, !prof !276

66:                                               ; preds = %61
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %16, i64 %64, i1 false), !prof !277
  br label %67

67:                                               ; preds = %61, %66
  %68 = getelementptr inbounds i8, ptr %5, i64 %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %69 = icmp eq ptr %15, %16
  %70 = icmp eq ptr %2, %16
  br i1 %69, label %71, label %76, !prof !276

71:                                               ; preds = %67
  br i1 %70, label %106, label %72

72:                                               ; preds = %71
  %73 = ashr exact i64 %64, 4
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %2, i64 %74
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %75, ptr align 8 %5, i64 %64, i1 false)
  br label %106

76:                                               ; preds = %67
  br i1 %70, label %106, label %77, !prof !276

77:                                               ; preds = %76
  %78 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %68, i64 -1
  br label %79

79:                                               ; preds = %90, %77
  %80 = phi ptr [ %16, %77 ], [ %83, %90 ]
  %81 = phi ptr [ %78, %77 ], [ %85, %90 ]
  %82 = phi ptr [ %2, %77 ], [ %89, %90 ]
  %83 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %80, i64 -1
  br label %84

84:                                               ; preds = %79, %104
  %85 = phi ptr [ %105, %104 ], [ %81, %79 ]
  %86 = phi ptr [ %89, %104 ], [ %82, %79 ]
  %87 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(12) %83, i32 noundef 0)
  %88 = icmp slt i32 %87, 0
  %89 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %86, i64 -1
  br i1 %88, label %90, label %102, !prof !278

90:                                               ; preds = %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %89, ptr noundef nonnull align 8 dereferenceable(12) %83, i64 12, i1 false), !tbaa.struct !140
  %91 = icmp eq ptr %83, %15
  br i1 %91, label %92, label %79, !prof !279, !llvm.loop !280

92:                                               ; preds = %90
  %93 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %85, i64 1
  %94 = icmp eq ptr %93, %5
  br i1 %94, label %106, label %95, !prof !281

95:                                               ; preds = %92
  %96 = ptrtoint ptr %93 to i64
  %97 = ptrtoint ptr %5 to i64
  %98 = sub i64 %96, %97
  %99 = ashr exact i64 %98, 4
  %100 = sub nsw i64 0, %99
  %101 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %89, i64 %100
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %101, ptr align 8 %5, i64 %98, i1 false), !prof !282
  br label %106

102:                                              ; preds = %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %89, ptr noundef nonnull align 8 dereferenceable(12) %85, i64 12, i1 false), !tbaa.struct !140
  %103 = icmp eq ptr %85, %5
  br i1 %103, label %106, label %104, !prof !283

104:                                              ; preds = %102
  %105 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %85, i64 -1
  br label %84, !llvm.loop !280

106:                                              ; preds = %102, %71, %72, %76, %92, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10)
  br label %168

107:                                              ; preds = %59
  br i1 %19, label %108, label %134

108:                                              ; preds = %107
  %109 = sdiv i64 %17, 2
  %110 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %15, i64 %109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %111 = ptrtoint ptr %2 to i64
  %112 = ptrtoint ptr %16 to i64
  %113 = sub i64 %111, %112
  %114 = ashr exact i64 %113, 4
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %108, %116
  %117 = phi ptr [ %127, %116 ], [ %16, %108 ]
  %118 = phi i64 [ %126, %116 ], [ %114, %108 ]
  %119 = lshr i64 %118, 1
  %120 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %117, i64 %119
  %121 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(12) %120, ptr noundef nonnull align 8 dereferenceable(12) %110, i32 noundef 0)
  %122 = icmp slt i32 %121, 0
  %123 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %120, i64 1
  %124 = xor i64 %119, -1
  %125 = add nsw i64 %118, %124
  %126 = select i1 %122, i64 %125, i64 %119
  %127 = select i1 %122, ptr %123, ptr %117
  %128 = icmp sgt i64 %126, 0
  br i1 %128, label %116, label %129, !llvm.loop !251

129:                                              ; preds = %116, %108
  %130 = phi ptr [ %16, %108 ], [ %127, %116 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12)
  %131 = ptrtoint ptr %130 to i64
  %132 = sub i64 %131, %112
  %133 = ashr exact i64 %132, 4
  br label %160

134:                                              ; preds = %107
  %135 = sdiv i64 %18, 2
  %136 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %16, i64 %135
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %137 = ptrtoint ptr %16 to i64
  %138 = ptrtoint ptr %15 to i64
  %139 = sub i64 %137, %138
  %140 = ashr exact i64 %139, 4
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %134, %142
  %143 = phi ptr [ %153, %142 ], [ %15, %134 ]
  %144 = phi i64 [ %152, %142 ], [ %140, %134 ]
  %145 = lshr i64 %144, 1
  %146 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %143, i64 %145
  %147 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(12) %136, ptr noundef nonnull align 8 dereferenceable(12) %146, i32 noundef 0)
  %148 = icmp slt i32 %147, 0
  %149 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %146, i64 1
  %150 = xor i64 %145, -1
  %151 = add nsw i64 %144, %150
  %152 = select i1 %148, i64 %145, i64 %151
  %153 = select i1 %148, ptr %143, ptr %149
  %154 = icmp sgt i64 %152, 0
  br i1 %154, label %142, label %155, !llvm.loop !252

155:                                              ; preds = %142, %134
  %156 = phi ptr [ %15, %134 ], [ %153, %142 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11)
  %157 = ptrtoint ptr %156 to i64
  %158 = sub i64 %157, %138
  %159 = ashr exact i64 %158, 4
  br label %160

160:                                              ; preds = %155, %129
  %161 = phi ptr [ %110, %129 ], [ %156, %155 ]
  %162 = phi ptr [ %130, %129 ], [ %136, %155 ]
  %163 = phi i64 [ %133, %129 ], [ %135, %155 ]
  %164 = phi i64 [ %109, %129 ], [ %159, %155 ]
  %165 = sub nsw i64 %17, %164
  %166 = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lET_S4_S4_S4_T1_S5_T0_S5_(ptr noundef %161, ptr noundef %16, ptr noundef %162, i64 noundef %165, i64 noundef %163, ptr noundef %5, i64 noundef %6)
  tail call void @_ZSt16__merge_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %15, ptr noundef %161, ptr noundef %166, i64 noundef %164, i64 noundef %163, ptr noundef %5, i64 noundef %6, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  %167 = sub nsw i64 %18, %163
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %7, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 32, i1 false)
  br label %14

168:                                              ; preds = %106, %58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4) local_unnamed_addr #2 comdat !prof !284 {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = shl nsw i64 %3, 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = icmp slt i64 %12, %8
  br i1 %13, label %60, label %14, !prof !285

14:                                               ; preds = %5
  %15 = icmp eq i64 %3, 0
  br label %16

16:                                               ; preds = %14, %54
  %17 = phi ptr [ %20, %54 ], [ %0, %14 ]
  %18 = phi ptr [ %55, %54 ], [ %2, %14 ]
  %19 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %17, i64 %3
  %20 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %17, i64 %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  br i1 %15, label %38, label %21, !prof !286

21:                                               ; preds = %16, %31
  %22 = phi ptr [ %34, %31 ], [ %18, %16 ]
  %23 = phi ptr [ %33, %31 ], [ %17, %16 ]
  %24 = phi ptr [ %32, %31 ], [ %19, %16 ]
  %25 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(12) %23, i32 noundef 0)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29, !prof !287

27:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %24, i64 12, i1 false), !tbaa.struct !140
  %28 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %24, i64 1
  br label %31

29:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !140
  %30 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %23, i64 1
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %24, %29 ]
  %33 = phi ptr [ %23, %27 ], [ %30, %29 ]
  %34 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %22, i64 1
  %35 = icmp ne ptr %33, %19
  %36 = icmp ne ptr %32, %20
  %37 = select i1 %35, i1 %36, i1 false, !prof !288
  br i1 %37, label %21, label %38, !prof !289, !llvm.loop !290

38:                                               ; preds = %31, %16
  %39 = phi ptr [ %19, %16 ], [ %32, %31 ]
  %40 = phi ptr [ %17, %16 ], [ %33, %31 ]
  %41 = phi ptr [ %18, %16 ], [ %34, %31 ]
  %42 = ptrtoint ptr %19 to i64
  %43 = ptrtoint ptr %40 to i64
  %44 = sub i64 %42, %43
  %45 = icmp eq ptr %40, %19
  br i1 %45, label %47, label %46, !prof !291

46:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %41, ptr align 8 %40, i64 %44, i1 false), !prof !292
  br label %47

47:                                               ; preds = %46, %38
  %48 = getelementptr inbounds i8, ptr %41, i64 %44
  %49 = ptrtoint ptr %20 to i64
  %50 = ptrtoint ptr %39 to i64
  %51 = sub i64 %49, %50
  %52 = icmp eq ptr %39, %20
  br i1 %52, label %54, label %53, !prof !293

53:                                               ; preds = %47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %48, ptr align 8 %39, i64 %51, i1 false), !prof !294
  br label %54

54:                                               ; preds = %47, %53
  %55 = getelementptr inbounds i8, ptr %48, i64 %51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7)
  %56 = ptrtoint ptr %20 to i64
  %57 = sub i64 %9, %56
  %58 = ashr exact i64 %57, 4
  %59 = icmp slt i64 %58, %8
  br i1 %59, label %60, label %16, !prof !295, !llvm.loop !296

60:                                               ; preds = %54, %5
  %61 = phi ptr [ %2, %5 ], [ %55, %54 ]
  %62 = phi ptr [ %0, %5 ], [ %20, %54 ]
  %63 = phi i64 [ %12, %5 ], [ %58, %54 ]
  %64 = tail call i64 @llvm.smin.i64(i64 %63, i64 %3)
  %65 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %62, i64 %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %66 = icmp ne i64 %64, 0
  %67 = icmp ne ptr %65, %1
  %68 = select i1 %66, i1 %67, i1 false, !prof !297
  br i1 %68, label %69, label %86, !prof !298

69:                                               ; preds = %60, %79
  %70 = phi ptr [ %82, %79 ], [ %61, %60 ]
  %71 = phi ptr [ %81, %79 ], [ %62, %60 ]
  %72 = phi ptr [ %80, %79 ], [ %65, %60 ]
  %73 = call noundef i32 @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(12) %72, ptr noundef nonnull align 8 dereferenceable(12) %71, i32 noundef 0)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77, !prof !299

75:                                               ; preds = %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %70, ptr noundef nonnull align 8 dereferenceable(12) %72, i64 12, i1 false), !tbaa.struct !140
  %76 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %72, i64 1
  br label %79

77:                                               ; preds = %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %70, ptr noundef nonnull align 8 dereferenceable(12) %71, i64 12, i1 false), !tbaa.struct !140
  %78 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %71, i64 1
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %76, %75 ], [ %72, %77 ]
  %81 = phi ptr [ %71, %75 ], [ %78, %77 ]
  %82 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %70, i64 1
  %83 = icmp ne ptr %81, %65
  %84 = icmp ne ptr %80, %1
  %85 = select i1 %83, i1 %84, i1 false, !prof !297
  br i1 %85, label %69, label %86, !prof !300, !llvm.loop !290

86:                                               ; preds = %79, %60
  %87 = phi ptr [ %65, %60 ], [ %80, %79 ]
  %88 = phi ptr [ %62, %60 ], [ %81, %79 ]
  %89 = phi ptr [ %61, %60 ], [ %82, %79 ]
  %90 = ptrtoint ptr %65 to i64
  %91 = ptrtoint ptr %88 to i64
  %92 = sub i64 %90, %91
  %93 = icmp eq ptr %88, %65
  br i1 %93, label %95, label %94, !prof !301

94:                                               ; preds = %86
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %89, ptr align 8 %88, i64 %92, i1 false), !prof !302
  br label %95

95:                                               ; preds = %94, %86
  %96 = icmp eq ptr %87, %1
  br i1 %96, label %101, label %97, !prof !303

97:                                               ; preds = %95
  %98 = ptrtoint ptr %87 to i64
  %99 = sub i64 %9, %98
  %100 = getelementptr inbounds i8, ptr %89, i64 %92
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %100, ptr align 8 %87, i64 %99, i1 false), !prof !304
  br label %101

101:                                              ; preds = %95, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt17__rotate_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lET_S4_S4_S4_T1_S5_T0_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #6 comdat !prof !237 {
  %8 = icmp sle i64 %3, %4
  %9 = icmp sgt i64 %4, %6
  %10 = or i1 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %11
  %14 = ptrtoint ptr %2 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = sub i64 %14, %15
  %17 = icmp eq ptr %2, %1
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %16, i1 false)
  br label %19

19:                                               ; preds = %13, %18
  %20 = icmp eq ptr %1, %0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %15, %22
  %24 = ashr exact i64 %23, 4
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %2, i64 %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %0, i64 %23, i1 false)
  br label %27

27:                                               ; preds = %19, %21
  br i1 %17, label %29, label %28

28:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %16, i1 false)
  br label %29

29:                                               ; preds = %27, %28
  %30 = getelementptr inbounds i8, ptr %0, i64 %16
  br label %56

31:                                               ; preds = %7
  %32 = icmp sgt i64 %3, %6
  br i1 %32, label %54, label %33

33:                                               ; preds = %31
  %34 = icmp eq i64 %3, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %33
  %36 = ptrtoint ptr %1 to i64
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %36, %37
  %39 = icmp eq ptr %1, %0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %38, i1 false)
  br label %41

41:                                               ; preds = %35, %40
  %42 = icmp eq ptr %2, %1
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = ptrtoint ptr %2 to i64
  %45 = sub i64 %44, %36
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %45, i1 false)
  br label %46

46:                                               ; preds = %41, %43
  %47 = ashr exact i64 %38, 4
  br i1 %39, label %51, label %48

48:                                               ; preds = %46
  %49 = sub nsw i64 0, %47
  %50 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %2, i64 %49
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %50, ptr align 8 %5, i64 %38, i1 false)
  br label %51

51:                                               ; preds = %46, %48
  %52 = sub nsw i64 0, %47
  %53 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %2, i64 %52
  br label %56

54:                                               ; preds = %31
  %55 = tail call noundef ptr @_ZNSt3_V28__rotateIPN11xalanc_1_1010NodeSorter11VectorEntryEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %56

56:                                               ; preds = %33, %11, %54, %51, %29
  %57 = phi ptr [ %30, %29 ], [ %53, %51 ], [ %55, %54 ], [ %0, %11 ], [ %2, %33 ]
  ret ptr %57
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !305 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !107
  call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %12, ptr %0, align 8, !tbaa !107
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !136
  store i64 %14, ptr %6, align 8, !tbaa !136
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !132
  store i64 %16, ptr %8, align 8, !tbaa !132
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  store ptr %18, ptr %10, align 8, !tbaa !134
  store ptr %5, ptr %3, align 8, !tbaa !107
  store i64 %7, ptr %13, align 8, !tbaa !136
  store i64 %9, ptr %15, align 8, !tbaa !132
  store ptr %11, ptr %17, align 8, !tbaa !134
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !306

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !118
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !307

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !305 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !136
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !169

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !107
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !136
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !132
  %16 = shl i64 %13, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !134
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = load i64, ptr %9, align 8, !tbaa !136
  %25 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !107
  %28 = load i64, ptr %6, align 8, !tbaa !136
  %29 = load i64, ptr %7, align 8, !tbaa !132
  %30 = load ptr, ptr %8, align 8, !tbaa !134
  %31 = load ptr, ptr %5, align 8, !tbaa !107
  store ptr %31, ptr %0, align 8, !tbaa !107
  %32 = load i64, ptr %14, align 8, !tbaa !136
  store i64 %32, ptr %6, align 8, !tbaa !136
  %33 = load i64, ptr %15, align 8, !tbaa !132
  store i64 %33, ptr %7, align 8, !tbaa !132
  %34 = load ptr, ptr %21, align 8, !tbaa !134
  store ptr %34, ptr %8, align 8, !tbaa !134
  store ptr %27, ptr %5, align 8, !tbaa !107
  store i64 %28, ptr %14, align 8, !tbaa !136
  store i64 %29, ptr %15, align 8, !tbaa !132
  store ptr %30, ptr %21, align 8, !tbaa !134
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !132
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !134
  %50 = load ptr, ptr %5, align 8, !tbaa !107
  %51 = load ptr, ptr %50, align 8, !tbaa !118
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !308

60:                                               ; preds = %58
  %61 = shl i64 %3, 4
  %62 = load ptr, ptr %2, align 8, !tbaa !118
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !309
  store ptr %65, ptr %8, align 8, !tbaa !134
  store i64 %3, ptr %7, align 8, !tbaa !132
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %132, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !136
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !132
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %132, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !134
  %28 = load i64, ptr %12, align 8, !tbaa !136
  %29 = getelementptr %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !140
  %33 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !136
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !136
  %36 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %132, label %30, !llvm.loop !310

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %41 = load ptr, ptr %0, align 8, !tbaa !107
  store ptr %41, ptr %5, align 8, !tbaa !107
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !136
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !132
  %44 = shl i64 %14, 4
  %45 = load ptr, ptr %41, align 8, !tbaa !118
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !134
  %50 = load i64, ptr %42, align 8, !tbaa !136
  %51 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !134
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !134
  %55 = load i64, ptr %42, align 8, !tbaa !136
  %56 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !134
  %59 = load i64, ptr %42, align 8, !tbaa !136
  %60 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !134
  %62 = load i64, ptr %12, align 8, !tbaa !136
  %63 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !107
  %66 = load i64, ptr %12, align 8, !tbaa !136
  %67 = load i64, ptr %19, align 8, !tbaa !132
  %68 = load ptr, ptr %15, align 8, !tbaa !134
  %69 = load ptr, ptr %5, align 8, !tbaa !107
  store ptr %69, ptr %0, align 8, !tbaa !107
  %70 = load i64, ptr %42, align 8, !tbaa !136
  store i64 %70, ptr %12, align 8, !tbaa !136
  %71 = load i64, ptr %43, align 8, !tbaa !132
  store i64 %71, ptr %19, align 8, !tbaa !132
  %72 = load ptr, ptr %49, align 8, !tbaa !134
  store ptr %72, ptr %15, align 8, !tbaa !134
  store ptr %65, ptr %5, align 8, !tbaa !107
  store i64 %66, ptr %42, align 8, !tbaa !136
  store i64 %67, ptr %43, align 8, !tbaa !132
  store ptr %68, ptr %49, align 8, !tbaa !134
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !118
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #18
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %132

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !132
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !134
  %88 = load ptr, ptr %5, align 8, !tbaa !107
  %89 = load ptr, ptr %88, align 8, !tbaa !118
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #18
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %83

96:                                               ; preds = %38
  %97 = ptrtoint ptr %17 to i64
  %98 = ptrtoint ptr %1 to i64
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %99, %8
  br i1 %100, label %115, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, ptr %2, i64 %99
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %106

104:                                              ; preds = %106, %101
  %105 = icmp eq ptr %17, %1
  br i1 %105, label %114, label %110

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %108, %106 ], [ %102, %101 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %107)
  %108 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !311

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %111)
  %112 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !312

114:                                              ; preds = %110, %104
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %99, i1 false)
  br label %132

115:                                              ; preds = %96
  %116 = sub nsw i64 0, %9
  %117 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %17, i64 %116
  %118 = icmp eq ptr %3, %2
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %120)
  %121 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %120, i64 1
  %122 = icmp eq ptr %121, %17
  br i1 %122, label %123, label %119, !llvm.loop !313

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %98
  %128 = ashr exact i64 %127, 4
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %17, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %130, ptr align 8 %1, i64 %127, i1 false)
  br label %131

131:                                              ; preds = %125, %123
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %132

132:                                              ; preds = %30, %24, %81, %114, %131, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !314 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !136
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !132
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !174

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %"struct.xalanc_1_10::NodeSorter::VectorEntry", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !140
  %13 = load i64, ptr %4, align 8, !tbaa !136
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !136
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !107
  call void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(12) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !107
  %24 = load i64, ptr %4, align 8, !tbaa !136
  %25 = load i64, ptr %6, align 8, !tbaa !132
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !134
  %28 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %28, ptr %0, align 8, !tbaa !107
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !136
  store i64 %30, ptr %4, align 8, !tbaa !136
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !132
  store i64 %32, ptr %6, align 8, !tbaa !132
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  store ptr %34, ptr %26, align 8, !tbaa !134
  store ptr %23, ptr %3, align 8, !tbaa !107
  store i64 %24, ptr %29, align 8, !tbaa !136
  store i64 %25, ptr %31, align 8, !tbaa !132
  store ptr %27, ptr %33, align 8, !tbaa !134
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !132
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !134
  %52 = load ptr, ptr %3, align 8, !tbaa !107
  %53 = load ptr, ptr %52, align 8, !tbaa !118
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !129
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %16, !prof !133

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = load i64, ptr %4, align 8, !tbaa !129
  %11 = add i64 %10, -1
  store i64 %11, ptr %4, align 8, !tbaa !129
  %12 = load ptr, ptr %8, align 8, !tbaa !128
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %12, i64 %11
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  %14 = load i64, ptr %4, align 8, !tbaa !129
  %15 = icmp ugt i64 %14, %1
  br i1 %15, label %9, label %38, !llvm.loop !166

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %1
  br i1 %17, label %18, label %38, !prof !114

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !126
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %23, !prof !114

22:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %25, i64 %1
  %27 = load i64, ptr %4, align 8, !tbaa !129
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %38, label %29, !prof !229

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %25, i64 %27
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %34, %31 ], [ %30, %29 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %32, i64 1
  %35 = load i64, ptr %4, align 8, !tbaa !129
  %36 = add i64 %35, 1
  store i64 %36, ptr %4, align 8, !tbaa !129
  %37 = icmp eq ptr %34, %26
  br i1 %37, label %38, label %31, !prof !315, !llvm.loop !316

38:                                               ; preds = %31, %9, %23, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !129
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !126
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = load ptr, ptr %3, align 8, !tbaa !97
  store ptr %12, ptr %0, align 8, !tbaa !97
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !129
  store i64 %14, ptr %6, align 8, !tbaa !129
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !126
  store i64 %16, ptr %8, align 8, !tbaa !126
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  store ptr %18, ptr %10, align 8, !tbaa !128
  store ptr %5, ptr %3, align 8, !tbaa !97
  store i64 %7, ptr %13, align 8, !tbaa !129
  store i64 %9, ptr %15, align 8, !tbaa !126
  store ptr %11, ptr %17, align 8, !tbaa !128
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !129
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !114

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !97
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !129
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !126
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = load i64, ptr %9, align 8, !tbaa !129
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !97
  %28 = load i64, ptr %6, align 8, !tbaa !129
  %29 = load i64, ptr %7, align 8, !tbaa !126
  %30 = load ptr, ptr %8, align 8, !tbaa !128
  %31 = load ptr, ptr %5, align 8, !tbaa !97
  store ptr %31, ptr %0, align 8, !tbaa !97
  %32 = load i64, ptr %14, align 8, !tbaa !129
  store i64 %32, ptr %6, align 8, !tbaa !129
  %33 = load i64, ptr %15, align 8, !tbaa !126
  store i64 %33, ptr %7, align 8, !tbaa !126
  %34 = load ptr, ptr %21, align 8, !tbaa !128
  store ptr %34, ptr %8, align 8, !tbaa !128
  store ptr %27, ptr %5, align 8, !tbaa !97
  store i64 %28, ptr %14, align 8, !tbaa !129
  store i64 %29, ptr %15, align 8, !tbaa !126
  store ptr %30, ptr %21, align 8, !tbaa !128
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !133

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !118
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !317
  store ptr %44, ptr %8, align 8, !tbaa !128
  store i64 %3, ptr %7, align 8, !tbaa !126
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !129
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !126
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !128
  %28 = load i64, ptr %12, align 8, !tbaa !129
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !129
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !129
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !318

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !97
  store ptr %42, ptr %5, align 8, !tbaa !97
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !129
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !126
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !118
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !128
  %51 = load i64, ptr %43, align 8, !tbaa !129
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !128
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !128
  %56 = load i64, ptr %43, align 8, !tbaa !129
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !128
  %60 = load i64, ptr %43, align 8, !tbaa !129
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !128
  %63 = load i64, ptr %12, align 8, !tbaa !129
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6insertEPS3_PKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !97
  %67 = load i64, ptr %12, align 8, !tbaa !129
  %68 = load i64, ptr %19, align 8, !tbaa !126
  %69 = load ptr, ptr %15, align 8, !tbaa !128
  %70 = load ptr, ptr %5, align 8, !tbaa !97
  store ptr %70, ptr %0, align 8, !tbaa !97
  %71 = load i64, ptr %43, align 8, !tbaa !129
  store i64 %71, ptr %12, align 8, !tbaa !129
  %72 = load i64, ptr %44, align 8, !tbaa !126
  store i64 %72, ptr %19, align 8, !tbaa !126
  %73 = load ptr, ptr %50, align 8, !tbaa !128
  store ptr %73, ptr %15, align 8, !tbaa !128
  store ptr %66, ptr %5, align 8, !tbaa !97
  store i64 %67, ptr %43, align 8, !tbaa !129
  store i64 %68, ptr %44, align 8, !tbaa !126
  store ptr %69, ptr %50, align 8, !tbaa !128
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !319

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !320

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !321

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !322

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !323

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !321

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !129
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !126
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !129
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !129
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %22 = load ptr, ptr %0, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !97
  %25 = load i64, ptr %4, align 8, !tbaa !129
  %26 = load i64, ptr %6, align 8, !tbaa !126
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = load ptr, ptr %3, align 8, !tbaa !97
  store ptr %29, ptr %0, align 8, !tbaa !97
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !129
  store i64 %31, ptr %4, align 8, !tbaa !129
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !126
  store i64 %33, ptr %6, align 8, !tbaa !126
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !128
  store ptr %35, ptr %27, align 8, !tbaa !128
  store ptr %24, ptr %3, align 8, !tbaa !97
  store i64 %25, ptr %30, align 8, !tbaa !129
  store i64 %26, ptr %32, align 8, !tbaa !126
  store ptr %28, ptr %34, align 8, !tbaa !128
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !233
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !220
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !232
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !232
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !220
  %16 = load i64, ptr %6, align 8, !tbaa !233
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  %19 = load ptr, ptr %3, align 8, !tbaa !232
  store ptr %19, ptr %0, align 8, !tbaa !232
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !220
  store i64 %21, ptr %14, align 8, !tbaa !220
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !233
  store i64 %23, ptr %6, align 8, !tbaa !233
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !222
  store ptr %25, ptr %17, align 8, !tbaa !222
  store ptr %13, ptr %3, align 8, !tbaa !232
  store i64 %15, ptr %20, align 8, !tbaa !220
  store i64 %16, ptr %22, align 8, !tbaa !233
  store ptr %18, ptr %24, align 8, !tbaa !222
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !118
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !222
  %38 = getelementptr inbounds double, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !220
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds double, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !222
  %48 = getelementptr inbounds double, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !220
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !220
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !222
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !222
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  store ptr %2, ptr %0, align 8, !tbaa !232
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !220
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !325

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !232
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !220
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !233
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !326
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !222
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = load i64, ptr %9, align 8, !tbaa !220
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !327

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !232
  %28 = load i64, ptr %6, align 8, !tbaa !220
  %29 = load i64, ptr %7, align 8, !tbaa !233
  %30 = load ptr, ptr %8, align 8, !tbaa !222
  %31 = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %31, ptr %0, align 8, !tbaa !232
  %32 = load i64, ptr %14, align 8, !tbaa !220
  store i64 %32, ptr %6, align 8, !tbaa !220
  %33 = load i64, ptr %15, align 8, !tbaa !233
  store i64 %33, ptr %7, align 8, !tbaa !233
  %34 = load ptr, ptr %21, align 8, !tbaa !222
  store ptr %34, ptr %8, align 8, !tbaa !222
  store ptr %27, ptr %5, align 8, !tbaa !232
  store i64 %28, ptr %14, align 8, !tbaa !220
  store i64 %29, ptr %15, align 8, !tbaa !233
  store ptr %30, ptr %21, align 8, !tbaa !222
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !327

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !233
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !222
  %50 = load ptr, ptr %5, align 8, !tbaa !232
  %51 = load ptr, ptr %50, align 8, !tbaa !118
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !328

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !118
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !329
  store ptr %65, ptr %8, align 8, !tbaa !222
  store i64 %3, ptr %7, align 8, !tbaa !233
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !330 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !331

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !220
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !222
  %17 = getelementptr inbounds double, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !233
  br i1 %18, label %21, label %39, !prof !327

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !331

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !332

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !222
  %28 = load i64, ptr %12, align 8, !tbaa !220
  %29 = getelementptr double, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load double, ptr %31, align 8, !tbaa !223
  store double %34, ptr %32, align 8, !tbaa !223
  %35 = getelementptr inbounds double, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds double, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !333, !llvm.loop !334

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !232
  store ptr %42, ptr %5, align 8, !tbaa !232
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !220
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !233
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !118
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !222
  %51 = load i64, ptr %43, align 8, !tbaa !220
  %52 = getelementptr inbounds double, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !222
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !222
  %56 = load i64, ptr %43, align 8, !tbaa !220
  %57 = getelementptr inbounds double, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !222
  %60 = load i64, ptr %43, align 8, !tbaa !220
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !222
  %63 = load i64, ptr %12, align 8, !tbaa !220
  %64 = getelementptr inbounds double, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !232
  %67 = load i64, ptr %12, align 8, !tbaa !220
  %68 = load i64, ptr %19, align 8, !tbaa !233
  %69 = load ptr, ptr %15, align 8, !tbaa !222
  %70 = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %70, ptr %0, align 8, !tbaa !232
  %71 = load i64, ptr %43, align 8, !tbaa !220
  store i64 %71, ptr %12, align 8, !tbaa !220
  %72 = load i64, ptr %44, align 8, !tbaa !233
  store i64 %72, ptr %19, align 8, !tbaa !233
  %73 = load ptr, ptr %50, align 8, !tbaa !222
  store ptr %73, ptr %15, align 8, !tbaa !222
  store ptr %66, ptr %5, align 8, !tbaa !232
  store i64 %67, ptr %43, align 8, !tbaa !220
  store i64 %68, ptr %44, align 8, !tbaa !233
  store ptr %69, ptr %50, align 8, !tbaa !222
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !118
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !233
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !222
  %89 = load ptr, ptr %5, align 8, !tbaa !232
  %90 = load ptr, ptr %89, align 8, !tbaa !118
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds double, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !335

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds double, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !336

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds double, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds double, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !337

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds double, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !220
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !220
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !233
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !339

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = getelementptr inbounds double, ptr %11, i64 %5
  %13 = load double, ptr %1, align 8, !tbaa !223
  store double %13, ptr %12, align 8, !tbaa !223
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !220
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !340
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !232
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !341

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !232
  %24 = load i64, ptr %4, align 8, !tbaa !220
  %25 = load i64, ptr %6, align 8, !tbaa !233
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !222
  %28 = load ptr, ptr %3, align 8, !tbaa !232
  store ptr %28, ptr %0, align 8, !tbaa !232
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !220
  store i64 %30, ptr %4, align 8, !tbaa !220
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !233
  store i64 %32, ptr %6, align 8, !tbaa !233
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !222
  store ptr %34, ptr %26, align 8, !tbaa !222
  store ptr %23, ptr %3, align 8, !tbaa !232
  store i64 %24, ptr %29, align 8, !tbaa !220
  store i64 %25, ptr %31, align 8, !tbaa !233
  store ptr %27, ptr %33, align 8, !tbaa !222
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !340

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !342

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !233
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !222
  %52 = load ptr, ptr %3, align 8, !tbaa !232
  %53 = load ptr, ptr %52, align 8, !tbaa !118
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !232
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !232
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !220
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !233
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = load ptr, ptr %3, align 8, !tbaa !232
  store ptr %12, ptr %0, align 8, !tbaa !232
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !220
  store i64 %14, ptr %6, align 8, !tbaa !220
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !233
  store i64 %16, ptr %8, align 8, !tbaa !233
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  store ptr %18, ptr %10, align 8, !tbaa !222
  store ptr %5, ptr %3, align 8, !tbaa !232
  store i64 %7, ptr %13, align 8, !tbaa !220
  store i64 %9, ptr %15, align 8, !tbaa !233
  store ptr %11, ptr %17, align 8, !tbaa !222
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !114

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !118
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !123
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %12, ptr %0, align 8, !tbaa !103
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !123
  store i64 %14, ptr %6, align 8, !tbaa !123
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !121
  store i64 %16, ptr %8, align 8, !tbaa !121
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  store ptr %18, ptr %10, align 8, !tbaa !122
  store ptr %5, ptr %3, align 8, !tbaa !103
  store i64 %7, ptr %13, align 8, !tbaa !123
  store i64 %9, ptr %15, align 8, !tbaa !121
  store ptr %11, ptr %17, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !123
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !343

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !123
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !121
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !122
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = load i64, ptr %9, align 8, !tbaa !123
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE6insertEPS4_PKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !103
  %28 = load i64, ptr %6, align 8, !tbaa !123
  %29 = load i64, ptr %7, align 8, !tbaa !121
  %30 = load ptr, ptr %8, align 8, !tbaa !122
  %31 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %31, ptr %0, align 8, !tbaa !103
  %32 = load i64, ptr %14, align 8, !tbaa !123
  store i64 %32, ptr %6, align 8, !tbaa !123
  %33 = load i64, ptr %15, align 8, !tbaa !121
  store i64 %33, ptr %7, align 8, !tbaa !121
  %34 = load ptr, ptr %21, align 8, !tbaa !122
  store ptr %34, ptr %8, align 8, !tbaa !122
  store ptr %27, ptr %5, align 8, !tbaa !103
  store i64 %28, ptr %14, align 8, !tbaa !123
  store i64 %29, ptr %15, align 8, !tbaa !121
  store ptr %30, ptr %21, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !344

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !118
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !345
  store ptr %44, ptr %8, align 8, !tbaa !122
  store i64 %3, ptr %7, align 8, !tbaa !121
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE6insertEPS4_PKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !123
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !121
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !122
  %28 = load i64, ptr %12, align 8, !tbaa !123
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !123
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !123
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !346

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !103
  store ptr %42, ptr %5, align 8, !tbaa !103
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !123
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !121
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !118
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !122
  %51 = load i64, ptr %43, align 8, !tbaa !123
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !122
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE6insertEPS4_PKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !122
  %56 = load i64, ptr %43, align 8, !tbaa !123
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE6insertEPS4_PKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !122
  %60 = load i64, ptr %43, align 8, !tbaa !123
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !122
  %63 = load i64, ptr %12, align 8, !tbaa !123
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE6insertEPS4_PKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !103
  %67 = load i64, ptr %12, align 8, !tbaa !123
  %68 = load i64, ptr %19, align 8, !tbaa !121
  %69 = load ptr, ptr %15, align 8, !tbaa !122
  %70 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %70, ptr %0, align 8, !tbaa !103
  %71 = load i64, ptr %43, align 8, !tbaa !123
  store i64 %71, ptr %12, align 8, !tbaa !123
  %72 = load i64, ptr %44, align 8, !tbaa !121
  store i64 %72, ptr %19, align 8, !tbaa !121
  %73 = load ptr, ptr %50, align 8, !tbaa !122
  store ptr %73, ptr %15, align 8, !tbaa !122
  store ptr %66, ptr %5, align 8, !tbaa !103
  store i64 %67, ptr %43, align 8, !tbaa !123
  store i64 %68, ptr %44, align 8, !tbaa !121
  store ptr %69, ptr %50, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !347

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !348

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !349

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !350

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !351

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !349

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !121
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !123
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !123
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %22 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !103
  %25 = load i64, ptr %4, align 8, !tbaa !123
  %26 = load i64, ptr %6, align 8, !tbaa !121
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %29, ptr %0, align 8, !tbaa !103
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !123
  store i64 %31, ptr %4, align 8, !tbaa !123
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !121
  store i64 %33, ptr %6, align 8, !tbaa !121
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  store ptr %35, ptr %27, align 8, !tbaa !122
  store ptr %24, ptr %3, align 8, !tbaa !103
  store i64 %25, ptr %30, align 8, !tbaa !123
  store i64 %26, ptr %32, align 8, !tbaa !121
  store ptr %28, ptr %34, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %75, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !147
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !151
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !161
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !161
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !151
  %16 = load i64, ptr %6, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = load ptr, ptr %3, align 8, !tbaa !161
  store ptr %19, ptr %0, align 8, !tbaa !161
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !151
  store i64 %21, ptr %14, align 8, !tbaa !151
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !147
  store i64 %23, ptr %6, align 8, !tbaa !147
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  store ptr %25, ptr %17, align 8, !tbaa !150
  store ptr %13, ptr %3, align 8, !tbaa !161
  store i64 %15, ptr %20, align 8, !tbaa !151
  store i64 %16, ptr %22, align 8, !tbaa !147
  store ptr %18, ptr %24, align 8, !tbaa !150
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %75

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 %9
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !151
  %32 = icmp ugt i64 %31, %9
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  br label %35

35:                                               ; preds = %33, %35
  %36 = load i64, ptr %30, align 8, !tbaa !151
  %37 = add i64 %36, -1
  store i64 %37, ptr %30, align 8, !tbaa !151
  %38 = load ptr, ptr %34, align 8, !tbaa !150
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %38, i64 %37
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %39) #17
  %40 = load i64, ptr %30, align 8, !tbaa !151
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %35, label %49, !llvm.loop !352

42:                                               ; preds = %26
  %43 = icmp ult i64 %31, %9
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 %31
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %47, i64 %31
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %29)
  br label %49

49:                                               ; preds = %35, %42, %44
  %50 = phi ptr [ %45, %44 ], [ %29, %42 ], [ %29, %35 ]
  %51 = load ptr, ptr %27, align 8, !tbaa !150
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = udiv exact i64 %54, 40
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !150
  br label %60

60:                                               ; preds = %56, %70
  %61 = phi i64 [ %73, %70 ], [ %57, %56 ]
  %62 = phi ptr [ %72, %70 ], [ %59, %56 ]
  %63 = phi ptr [ %71, %70 ], [ %51, %56 ]
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %63)
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %63, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !191
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %62, i64 0, i32 1
  store i32 %68, ptr %69, align 8, !tbaa !191
  br label %70

70:                                               ; preds = %65, %60
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %63, i64 1
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %62, i64 1
  %73 = add nsw i64 %61, -1
  %74 = icmp sgt i64 %61, 1
  br i1 %74, label %60, label %75, !llvm.loop !353

75:                                               ; preds = %70, %49, %11, %2
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !354 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  store ptr %2, ptr %0, align 8, !tbaa !161
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !151
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !355

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !161
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !151
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !147
  %16 = mul i64 %13, 40
  %17 = load ptr, ptr %2, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !150
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = load i64, ptr %9, align 8, !tbaa !151
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !161
  %28 = load i64, ptr %6, align 8, !tbaa !151
  %29 = load i64, ptr %7, align 8, !tbaa !147
  %30 = load ptr, ptr %8, align 8, !tbaa !150
  %31 = load ptr, ptr %5, align 8, !tbaa !161
  store ptr %31, ptr %0, align 8, !tbaa !161
  %32 = load i64, ptr %14, align 8, !tbaa !151
  store i64 %32, ptr %6, align 8, !tbaa !151
  %33 = load i64, ptr %15, align 8, !tbaa !147
  store i64 %33, ptr %7, align 8, !tbaa !147
  %34 = load ptr, ptr %21, align 8, !tbaa !150
  store ptr %34, ptr %8, align 8, !tbaa !150
  store ptr %27, ptr %5, align 8, !tbaa !161
  store i64 %28, ptr %14, align 8, !tbaa !151
  store i64 %29, ptr %15, align 8, !tbaa !147
  store ptr %30, ptr %21, align 8, !tbaa !150
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !356

39:                                               ; preds = %37
  %40 = mul i64 %3, 40
  %41 = load ptr, ptr %2, align 8, !tbaa !118
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !357
  store ptr %44, ptr %8, align 8, !tbaa !150
  store i64 %3, ptr %7, align 8, !tbaa !147
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %159, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !151
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !147
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %159, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !150
  %28 = load i64, ptr %12, align 8, !tbaa !151
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 0, i32 noundef -1)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !151
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !151
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %159, label %30, !llvm.loop !358

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !161
  store ptr %42, ptr %5, align 8, !tbaa !161
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !151
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !147
  %45 = mul i64 %14, 40
  %46 = load ptr, ptr %42, align 8, !tbaa !118
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !150
  %51 = load i64, ptr %43, align 8, !tbaa !151
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !150
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !150
  %56 = load i64, ptr %43, align 8, !tbaa !151
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !150
  %60 = load i64, ptr %43, align 8, !tbaa !151
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !150
  %63 = load i64, ptr %12, align 8, !tbaa !151
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !161
  %67 = load i64, ptr %12, align 8, !tbaa !151
  %68 = load i64, ptr %19, align 8, !tbaa !147
  %69 = load ptr, ptr %15, align 8, !tbaa !150
  %70 = load ptr, ptr %5, align 8, !tbaa !161
  store ptr %70, ptr %0, align 8, !tbaa !161
  %71 = load i64, ptr %43, align 8, !tbaa !151
  store i64 %71, ptr %12, align 8, !tbaa !151
  %72 = load i64, ptr %44, align 8, !tbaa !147
  store i64 %72, ptr %19, align 8, !tbaa !147
  %73 = load ptr, ptr %50, align 8, !tbaa !150
  store ptr %73, ptr %15, align 8, !tbaa !150
  store ptr %66, ptr %5, align 8, !tbaa !161
  store i64 %67, ptr %43, align 8, !tbaa !151
  store i64 %68, ptr %44, align 8, !tbaa !147
  store ptr %69, ptr %50, align 8, !tbaa !150
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %159

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %113, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !359

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !360

94:                                               ; preds = %90, %84
  %95 = icmp sgt i64 %79, 0
  br i1 %95, label %96, label %159

96:                                               ; preds = %94
  %97 = udiv exact i64 %79, 40
  br label %98

98:                                               ; preds = %96, %108
  %99 = phi i64 [ %111, %108 ], [ %97, %96 ]
  %100 = phi ptr [ %110, %108 ], [ %1, %96 ]
  %101 = phi ptr [ %109, %108 ], [ %2, %96 ]
  %102 = icmp eq ptr %101, %100
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %101, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !191
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %100, i64 0, i32 1
  store i32 %106, ptr %107, align 8, !tbaa !191
  br label %108

108:                                              ; preds = %103, %98
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %101, i64 1
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %100, i64 1
  %111 = add nsw i64 %99, -1
  %112 = icmp sgt i64 %99, 1
  br i1 %112, label %98, label %159, !llvm.loop !353

113:                                              ; preds = %76
  %114 = sub nsw i64 0, %9
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 %114
  %116 = icmp eq ptr %3, %2
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %118)
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %118, i64 1
  %120 = icmp eq ptr %119, %17
  br i1 %120, label %121, label %117, !llvm.loop !361

121:                                              ; preds = %117, %113
  %122 = ptrtoint ptr %115 to i64
  %123 = sub i64 %122, %78
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = udiv exact i64 %123, 40
  br label %129

127:                                              ; preds = %141, %121
  %128 = icmp sgt i64 %8, 0
  br i1 %128, label %144, label %159

129:                                              ; preds = %125, %141
  %130 = phi i64 [ %142, %141 ], [ %126, %125 ]
  %131 = phi ptr [ %134, %141 ], [ %17, %125 ]
  %132 = phi ptr [ %133, %141 ], [ %115, %125 ]
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %132, i64 -1
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %131, i64 -1
  %135 = icmp eq ptr %132, %131
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %138 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %132, i64 -1, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !191
  %140 = getelementptr %"class.xalanc_1_10::XalanDOMString", ptr %131, i64 -1, i32 1
  store i32 %139, ptr %140, align 8, !tbaa !191
  br label %141

141:                                              ; preds = %136, %129
  %142 = add nsw i64 %130, -1
  %143 = icmp sgt i64 %130, 1
  br i1 %143, label %129, label %127, !llvm.loop !362

144:                                              ; preds = %127, %154
  %145 = phi i64 [ %157, %154 ], [ %9, %127 ]
  %146 = phi ptr [ %156, %154 ], [ %1, %127 ]
  %147 = phi ptr [ %155, %154 ], [ %2, %127 ]
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %146, ptr noundef nonnull align 8 dereferenceable(32) %147)
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %147, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !191
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %146, i64 0, i32 1
  store i32 %152, ptr %153, align 8, !tbaa !191
  br label %154

154:                                              ; preds = %149, %144
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %147, i64 1
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %146, i64 1
  %157 = add nsw i64 %145, -1
  %158 = icmp sgt i64 %145, 1
  br i1 %158, label %144, label %159, !llvm.loop !353

159:                                              ; preds = %108, %154, %30, %94, %127, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !363 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !151
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !147
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !364

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
  %14 = load i64, ptr %4, align 8, !tbaa !151
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !151
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20, !prof !343
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %22 = load ptr, ptr %0, align 8, !tbaa !161
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %23 unwind label %36, !prof !343

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !161
  %25 = load i64, ptr %4, align 8, !tbaa !151
  %26 = load i64, ptr %6, align 8, !tbaa !147
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = load ptr, ptr %3, align 8, !tbaa !161
  store ptr %29, ptr %0, align 8, !tbaa !161
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !151
  store i64 %31, ptr %4, align 8, !tbaa !151
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !147
  store i64 %33, ptr %6, align 8, !tbaa !147
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  store ptr %35, ptr %27, align 8, !tbaa !150
  store ptr %24, ptr %3, align 8, !tbaa !161
  store i64 %25, ptr %30, align 8, !tbaa !151
  store i64 %26, ptr %32, align 8, !tbaa !147
  store ptr %28, ptr %34, align 8, !tbaa !150
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !235 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !161
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !161
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !147
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = load ptr, ptr %3, align 8, !tbaa !161
  store ptr %12, ptr %0, align 8, !tbaa !161
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !151
  store i64 %14, ptr %6, align 8, !tbaa !151
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !147
  store i64 %16, ptr %8, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  store ptr %18, ptr %10, align 8, !tbaa !150
  store ptr %5, ptr %3, align 8, !tbaa !161
  store i64 %7, ptr %13, align 8, !tbaa !151
  store i64 %9, ptr %15, align 8, !tbaa !147
  store ptr %11, ptr %17, align 8, !tbaa !150
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %50, label %20, !prof !149

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 %7
  %22 = icmp eq i64 %7, 0
  br i1 %22, label %41, label %23, !prof !152

23:                                               ; preds = %20, %38
  %24 = phi ptr [ %39, %38 ], [ %11, %20 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !153
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28, !prof !155

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !156
  %31 = load ptr, ptr %24, align 8, !tbaa !157
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35, !prof !158

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #18
  unreachable

38:                                               ; preds = %28, %23
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %24, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %41, label %23, !prof !159, !llvm.loop !160

41:                                               ; preds = %38, %20
  %42 = load ptr, ptr %17, align 8, !tbaa !150
  %43 = load ptr, ptr %3, align 8, !tbaa !161
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47, !prof !162

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #18
  unreachable

50:                                               ; preds = %2, %41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !365 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !366

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !153
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !367
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !368

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !157
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !157
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !367
  %16 = load i64, ptr %6, align 8, !tbaa !153
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = load ptr, ptr %3, align 8, !tbaa !157
  store ptr %19, ptr %0, align 8, !tbaa !157
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !367
  store i64 %21, ptr %14, align 8, !tbaa !367
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !153
  store i64 %23, ptr %6, align 8, !tbaa !153
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  store ptr %25, ptr %17, align 8, !tbaa !156
  store ptr %13, ptr %3, align 8, !tbaa !157
  store i64 %15, ptr %20, align 8, !tbaa !367
  store i64 %16, ptr %22, align 8, !tbaa !153
  store ptr %18, ptr %24, align 8, !tbaa !156
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !369

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !118
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !370

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !156
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !367
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !371

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !372

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !156
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !367
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !367
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !156
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !373

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !156
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !374
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !375 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  store ptr %2, ptr %0, align 8, !tbaa !157
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !367
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !376

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !157
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !367
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !153
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !377
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !156
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = load i64, ptr %9, align 8, !tbaa !367
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !378

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !157
  %28 = load i64, ptr %6, align 8, !tbaa !367
  %29 = load i64, ptr %7, align 8, !tbaa !153
  %30 = load ptr, ptr %8, align 8, !tbaa !156
  %31 = load ptr, ptr %5, align 8, !tbaa !157
  store ptr %31, ptr %0, align 8, !tbaa !157
  %32 = load i64, ptr %14, align 8, !tbaa !367
  store i64 %32, ptr %6, align 8, !tbaa !367
  %33 = load i64, ptr %15, align 8, !tbaa !153
  store i64 %33, ptr %7, align 8, !tbaa !153
  %34 = load ptr, ptr %21, align 8, !tbaa !156
  store ptr %34, ptr %8, align 8, !tbaa !156
  store ptr %27, ptr %5, align 8, !tbaa !157
  store i64 %28, ptr %14, align 8, !tbaa !367
  store i64 %29, ptr %15, align 8, !tbaa !153
  store ptr %30, ptr %21, align 8, !tbaa !156
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !378

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !153
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !156
  %50 = load ptr, ptr %5, align 8, !tbaa !157
  %51 = load ptr, ptr %50, align 8, !tbaa !118
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !379

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !118
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !380
  store ptr %65, ptr %8, align 8, !tbaa !156
  store i64 %3, ptr %7, align 8, !tbaa !153
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !381 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !382

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !367
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !153
  br i1 %18, label %21, label %39, !prof !383

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !384

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !385

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !156
  %28 = load i64, ptr %12, align 8, !tbaa !367
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !386
  store i16 %34, ptr %32, align 2, !tbaa !386
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !388, !llvm.loop !389

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !390

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !157
  store ptr %42, ptr %5, align 8, !tbaa !157
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !367
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !153
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !118
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !391
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !156
  %51 = load i64, ptr %43, align 8, !tbaa !367
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !156
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !392

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !156
  %56 = load i64, ptr %43, align 8, !tbaa !367
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !392

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !156
  %60 = load i64, ptr %43, align 8, !tbaa !367
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !156
  %63 = load i64, ptr %12, align 8, !tbaa !367
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !392

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !157
  %67 = load i64, ptr %12, align 8, !tbaa !367
  %68 = load i64, ptr %19, align 8, !tbaa !153
  %69 = load ptr, ptr %15, align 8, !tbaa !156
  %70 = load ptr, ptr %5, align 8, !tbaa !157
  store ptr %70, ptr %0, align 8, !tbaa !157
  %71 = load i64, ptr %43, align 8, !tbaa !367
  store i64 %71, ptr %12, align 8, !tbaa !367
  %72 = load i64, ptr %44, align 8, !tbaa !153
  store i64 %72, ptr %19, align 8, !tbaa !153
  %73 = load ptr, ptr %50, align 8, !tbaa !156
  store ptr %73, ptr %15, align 8, !tbaa !156
  store ptr %66, ptr %5, align 8, !tbaa !157
  store i64 %67, ptr %43, align 8, !tbaa !367
  store i64 %68, ptr %44, align 8, !tbaa !153
  store ptr %69, ptr %50, align 8, !tbaa !156
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !393

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !118
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !394

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !153
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !156
  %89 = load ptr, ptr %5, align 8, !tbaa !157
  %90 = load ptr, ptr %89, align 8, !tbaa !118
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !395

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !396

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !396

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !397, !llvm.loop !398

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !399, !llvm.loop !400

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !401
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !402

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !367
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !403 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !367
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !153
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !404

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !386
  store i16 %13, ptr %12, align 2, !tbaa !386
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !367
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !157
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !157
  %24 = load i64, ptr %4, align 8, !tbaa !367
  %25 = load i64, ptr %6, align 8, !tbaa !153
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !156
  %28 = load ptr, ptr %3, align 8, !tbaa !157
  store ptr %28, ptr %0, align 8, !tbaa !157
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !367
  store i64 %30, ptr %4, align 8, !tbaa !367
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !153
  store i64 %32, ptr %6, align 8, !tbaa !153
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !156
  store ptr %34, ptr %26, align 8, !tbaa !156
  store ptr %23, ptr %3, align 8, !tbaa !157
  store i64 %24, ptr %29, align 8, !tbaa !367
  store i64 %25, ptr %31, align 8, !tbaa !153
  store ptr %27, ptr %33, align 8, !tbaa !156
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !118
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !153
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !156
  %52 = load ptr, ptr %3, align 8, !tbaa !157
  %53 = load ptr, ptr %52, align 8, !tbaa !118
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.6", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !157
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !367
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !376

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !157
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !367
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !153
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !118
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !406
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !156
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !156
  %20 = load i64, ptr %5, align 8, !tbaa !367
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !378

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !157
  %24 = load i64, ptr %10, align 8, !tbaa !367
  %25 = load i64, ptr %11, align 8, !tbaa !153
  %26 = load ptr, ptr %17, align 8, !tbaa !156
  store ptr %4, ptr %3, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !153
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !156
  %33 = load ptr, ptr %3, align 8, !tbaa !157
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !379

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !118
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !407
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !157
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !153
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.6", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !156
  store ptr %53, ptr %0, align 8, !tbaa !157
  store i64 %52, ptr %5, align 8, !tbaa !367
  store i64 %51, ptr %55, align 8, !tbaa !153
  store ptr %50, ptr %57, align 8, !tbaa !156
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !408

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !118
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !409

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 comdat align 2 !prof !235 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !151
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %16, !prof !410

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = load i64, ptr %4, align 8, !tbaa !151
  %11 = add i64 %10, -1
  store i64 %11, ptr %4, align 8, !tbaa !151
  %12 = load ptr, ptr %8, align 8, !tbaa !150
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %12, i64 %11
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  %14 = load i64, ptr %4, align 8, !tbaa !151
  %15 = icmp ugt i64 %14, %1
  br i1 %15, label %9, label %38, !llvm.loop !352

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %1
  br i1 %17, label %18, label %38, !prof !236

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !147
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %23, !prof !236

22:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 %1
  %27 = load i64, ptr %4, align 8, !tbaa !151
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %38, label %29, !prof !411

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 %27
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %34, %31 ], [ %30, %29 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 0, i32 noundef -1)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %32, i64 1
  %35 = load i64, ptr %4, align 8, !tbaa !151
  %36 = add i64 %35, 1
  store i64 %36, ptr %4, align 8, !tbaa !151
  %37 = icmp eq ptr %34, %26
  br i1 %37, label %38, label %31, !prof !412, !llvm.loop !413

38:                                               ; preds = %31, %9, %23, %16
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!95}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!35 = !{ptr @_ZN11xalanc_1_1010NodeSorterD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1010NodeSorterD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1010NodeSorterD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1010NodeSorterD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE, ptr @_ZnwmRKSt9nothrow_t, i64 6851}
!40 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE, ptr @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_, i64 6851}
!41 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE, ptr @_ZdlPv, i64 6851}
!42 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 6}
!44 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 110855}
!45 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextE, i64 6851}
!46 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList5clearEv, i64 6851}
!47 = !{ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 110855}
!48 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j, ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, i64 2307410}
!49 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j, ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, i64 91366}
!50 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm, i64 2}
!51 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 20522}
!52 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 144968}
!53 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getStringResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, i64 12769}
!54 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEm, i64 1}
!55 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZN11xalanc_1_1013DoubleSupport5equalEdd, i64 82455}
!56 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, i64 6000}
!57 = !{ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare15getNumberResultERKNS_11NodeSortKeyEjRKNS0_11VectorEntryE, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6resizeEmRKd, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEmRKS3_, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6resizeEmRKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 93739}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_, i64 93739}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!63 = !{ptr @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_, ptr @_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_, i64 13702}
!64 = !{ptr @_ZSt22__stable_sort_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_, ptr @_ZSt16__merge_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_SA_T2_, i64 6851}
!65 = !{ptr @_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_, ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j, i64 215137}
!66 = !{ptr @_ZSt24__merge_sort_with_bufferIPN11xalanc_1_1010NodeSorter11VectorEntryES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_, ptr @_ZSt17__merge_sort_loopIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_, i64 1400}
!67 = !{ptr @_ZSt16__merge_adaptiveIPN11xalanc_1_1010NodeSorter11VectorEntryElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_S9_T0_SA_T1_SA_T2_, ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j, i64 98822}
!68 = !{ptr @_ZSt17__merge_sort_loopIPN11xalanc_1_1010NodeSorter11VectorEntryES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS1_18NodeSortKeyCompareEEEEvT_S9_T0_T1_T2_, ptr @_ZNK11xalanc_1_1010NodeSorter18NodeSortKeyCompare7compareERKNS0_11VectorEntryES4_j, i64 664064}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 6}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEmRKS3_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE6resizeEmRKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEED2Ev, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, i64 25}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 43}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, i64 43}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 2}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEED2Ev, i64 2}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 2}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 2}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 2}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 2}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 93739}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 93739}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 402524}
!95 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!96 = !{!"function_entry_count", i64 1}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C++ TBAA"}
!102 = !{!"long", !100, i64 0}
!103 = !{!104, !99, i64 0}
!104 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!105 = !{!106, !99, i64 0}
!106 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!107 = !{!108, !99, i64 0}
!108 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!109 = !{!"function_entry_count", i64 3}
!110 = !{!106, !102, i64 16}
!111 = !{!"branch_weights", i32 1, i32 2}
!112 = !{!106, !99, i64 24}
!113 = !{!106, !102, i64 8}
!114 = !{!"branch_weights", i32 1, i32 0}
!115 = distinct !{!115, !116, !117}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!119, !119, i64 0}
!119 = !{!"vtable pointer", !101, i64 0}
!120 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!121 = !{!104, !102, i64 16}
!122 = !{!104, !99, i64 24}
!123 = !{!104, !102, i64 8}
!124 = distinct !{!124, !116, !117}
!125 = !{!"function_entry_count", i64 2}
!126 = !{!98, !102, i64 16}
!127 = !{!"branch_weights", i32 1, i32 1}
!128 = !{!98, !99, i64 24}
!129 = !{!98, !102, i64 8}
!130 = distinct !{!130, !116, !117}
!131 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!132 = !{!108, !102, i64 16}
!133 = !{!"branch_weights", i32 0, i32 1}
!134 = !{!108, !99, i64 24}
!135 = !{!"function_entry_count", i64 6851}
!136 = !{!108, !102, i64 8}
!137 = !{!"branch_weights", i32 0, i32 6851}
!138 = !{!"branch_weights", i32 6851, i32 0}
!139 = distinct !{!139, !116, !117}
!140 = !{i64 0, i64 8, !141, i64 8, i64 4, !142}
!141 = !{!99, !99, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"int", !100, i64 0}
!144 = !{!"branch_weights", i32 1, i32 6850}
!145 = !{!"branch_weights", i32 6850, i32 43034}
!146 = distinct !{!146, !116, !117}
!147 = !{!148, !102, i64 16}
!148 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!149 = !{!"branch_weights", i32 108344, i32 93741}
!150 = !{!148, !99, i64 24}
!151 = !{!148, !102, i64 8}
!152 = !{!"branch_weights", i32 1, i32 93740}
!153 = !{!154, !102, i64 16}
!154 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!155 = !{!"branch_weights", i32 52000, i32 42418003}
!156 = !{!154, !99, i64 24}
!157 = !{!154, !99, i64 0}
!158 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!159 = !{!"branch_weights", i32 93740, i32 308786}
!160 = distinct !{!160, !116, !117}
!161 = !{!148, !99, i64 0}
!162 = !{!"VP", i32 0, i64 93741, i64 -7405368087501025645, i64 93741}
!163 = !{!"branch_weights", i32 6850, i32 13672}
!164 = distinct !{!164, !116, !117}
!165 = !{!"branch_weights", i32 6850, i32 1}
!166 = distinct !{!166, !116, !117}
!167 = !{!"VP", i32 0, i64 6851, i64 -587917090741629528, i64 6851}
!168 = !{!"branch_weights", i32 6, i32 6845}
!169 = !{!"branch_weights", i32 6, i32 0}
!170 = !{!"VP", i32 0, i64 110857, i64 -1438070377793093859, i64 110857}
!171 = !{!172, !99, i64 0}
!172 = !{!"_ZTSN11xalanc_1_1010NodeSorter11VectorEntryE", !99, i64 0, !143, i64 8}
!173 = !{!172, !143, i64 8}
!174 = !{!"branch_weights", i32 110857, i32 0}
!175 = !{!"branch_weights", i32 6850, i32 104007}
!176 = distinct !{!176, !116, !117}
!177 = distinct !{!177, !116, !117}
!178 = !{!"function_entry_count", i64 1082417}
!179 = !{!180, !99, i64 24}
!180 = !{!"_ZTSN11xalanc_1_1010NodeSorter18NodeSortKeyCompareE", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24}
!181 = !{!182, !183, i64 16}
!182 = !{!"_ZTSN11xalanc_1_1011NodeSortKeyE", !99, i64 0, !99, i64 8, !183, i64 16, !183, i64 17, !184, i64 20, !99, i64 24, !99, i64 32}
!183 = !{!"bool", !100, i64 0}
!184 = !{!"_ZTSN11xalanc_1_1022XalanCollationServices10eCaseOrderE", !100, i64 0}
!185 = !{i8 0, i8 2}
!186 = !{}
!187 = !{!"branch_weights", i32 1041189, i32 41228}
!188 = !{!180, !99, i64 0}
!189 = !{!182, !99, i64 32}
!190 = !{!182, !184, i64 20}
!191 = !{!192, !143, i64 32}
!192 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !154, i64 0, !143, i64 32}
!193 = !{!"branch_weights", i32 1041189, i32 0}
!194 = !{!"VP", i32 0, i64 1041189, i64 6033445508164423162, i64 1041189}
!195 = !{!100, !100, i64 0}
!196 = !{!"branch_weights", i32 41228, i32 0}
!197 = !{!"branch_weights", i32 0, i32 41228}
!198 = !{!"branch_weights", i32 310250, i32 772167}
!199 = !{!182, !183, i64 17}
!200 = !{!"branch_weights", i32 297731, i32 474436}
!201 = !{!"branch_weights", i32 105564, i32 204686}
!202 = !{!"function_entry_count", i64 2082378}
!203 = !{!182, !99, i64 8}
!204 = !{!180, !99, i64 8}
!205 = !{!"branch_weights", i32 6850, i32 2075528}
!206 = !{!"branch_weights", i32 0, i32 6850}
!207 = !{!"branch_weights", i32 6850, i32 0}
!208 = !{!"branch_weights", i32 2, i32 6848}
!209 = !{!"branch_weights", i32 1, i32 6849}
!210 = !{!"branch_weights", i32 6849, i32 13673}
!211 = distinct !{!211, !116, !117}
!212 = !{!"branch_weights", i32 12769, i32 2069609}
!213 = !{!"branch_weights", i32 132199, i32 1937410}
!214 = !{!"branch_weights", i32 0, i32 132199}
!215 = !{!182, !99, i64 24}
!216 = !{!180, !99, i64 16}
!217 = !{!"branch_weights", i32 0, i32 12769}
!218 = !{!"function_entry_count", i64 82456}
!219 = !{!"branch_weights", i32 1, i32 82455}
!220 = !{!221, !102, i64 8}
!221 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !99, i64 0, !102, i64 8, !102, i64 16, !99, i64 24}
!222 = !{!221, !99, i64 24}
!223 = !{!224, !224, i64 0}
!224 = !{!"double", !100, i64 0}
!225 = !{!"branch_weights", i32 5999, i32 76456}
!226 = !{!"branch_weights", i32 0, i32 5999}
!227 = !{!228, !99, i64 8}
!228 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !99, i64 8}
!229 = !{!"branch_weights", i32 1, i32 127}
!230 = !{!"branch_weights", i32 127, i32 767873}
!231 = distinct !{!231, !116, !117}
!232 = !{!221, !99, i64 0}
!233 = !{!221, !102, i64 16}
!234 = distinct !{!234, !116, !117}
!235 = !{!"function_entry_count", i64 93739}
!236 = !{!"branch_weights", i32 93739, i32 0}
!237 = !{!"function_entry_count", i64 0}
!238 = !{!"function_entry_count", i64 165}
!239 = !{!"branch_weights", i32 146, i32 19}
!240 = !{!"VP", i32 0, i64 19, i64 -7405368087501025645, i64 19}
!241 = !{!"function_entry_count", i64 80974}
!242 = !{!"function_entry_count", i64 42067477}
!243 = !{!"branch_weights", i32 7490826, i32 631843632}
!244 = !{!"branch_weights", i32 22153, i32 63567}
!245 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 32, i64 0, i64 65, i64 0, i64 33, i64 0}
!246 = !{!"branch_weights", i32 63566, i32 1}
!247 = !{!"branch_weights", i32 1114, i32 63566}
!248 = distinct !{!248, !116, !117}
!249 = !{!"branch_weights", i32 25136, i32 60584}
!250 = distinct !{!250, !116, !117}
!251 = distinct !{!251, !116, !117}
!252 = distinct !{!252, !116, !117}
!253 = distinct !{!253, !116, !117}
!254 = distinct !{!254, !116, !117}
!255 = distinct !{!255, !116, !117}
!256 = distinct !{!256, !116, !117}
!257 = !{!"function_entry_count", i64 13702}
!258 = !{!"branch_weights", i32 1970, i32 11732}
!259 = !{!"VP", i32 1, i64 10218, i64 16, i64 3993, i64 32, i64 2159, i64 65, i64 1568, i64 33, i64 1441}
!260 = !{!"branch_weights", i32 11732, i32 0}
!261 = distinct !{!261, !116, !117}
!262 = !{!"VP", i32 1, i64 11934, i64 16, i64 4663, i64 32, i64 2521, i64 65, i64 1831, i64 33, i64 1683}
!263 = !{!"branch_weights", i32 700, i32 13002}
!264 = !{!"branch_weights", i32 0, i32 700}
!265 = distinct !{!265, !116, !117}
!266 = !{!"branch_weights", i32 2613, i32 4238}
!267 = !{!"branch_weights", i32 0, i32 4238}
!268 = !{!"VP", i32 1, i64 4238, i64 16, i64 2368, i64 32, i64 740, i64 33, i64 393, i64 65, i64 354}
!269 = !{!"branch_weights", i32 4237, i32 1}
!270 = !{!"branch_weights", i32 23604, i32 26572}
!271 = !{!"branch_weights", i32 52281, i32 2133}
!272 = !{!"branch_weights", i32 45939, i32 4237}
!273 = distinct !{!273, !116, !117}
!274 = !{!"branch_weights", i32 2105, i32 2133}
!275 = !{!"VP", i32 1, i64 2105, i64 16, i64 1741, i64 32, i64 274, i64 33, i64 63, i64 64, i64 18}
!276 = !{!"branch_weights", i32 0, i32 2613}
!277 = !{!"VP", i32 1, i64 2613, i64 16, i64 1191, i64 32, i64 496, i64 33, i64 294, i64 65, i64 281}
!278 = !{!"branch_weights", i32 24960, i32 23686}
!279 = !{!"branch_weights", i32 1014, i32 23946}
!280 = distinct !{!280, !116, !117}
!281 = !{!"branch_weights", i32 0, i32 1014}
!282 = !{!"VP", i32 1, i64 1014, i64 16, i64 810, i64 32, i64 164, i64 33, i64 29, i64 64, i64 11}
!283 = !{!"branch_weights", i32 1599, i32 22087}
!284 = !{!"function_entry_count", i64 1400}
!285 = !{!"branch_weights", i32 1, i32 1399}
!286 = !{!"branch_weights", i32 1, i32 10754}
!287 = !{!"branch_weights", i32 262319, i32 296589}
!288 = !{!"branch_weights", i32 563418, i32 6245}
!289 = !{!"branch_weights", i32 548154, i32 10754}
!290 = distinct !{!290, !116, !117}
!291 = !{!"branch_weights", i32 6245, i32 4510}
!292 = !{!"VP", i32 1, i64 4510, i64 16, i64 2450, i64 32, i64 1151, i64 33, i64 534, i64 64, i64 236}
!293 = !{!"branch_weights", i32 4510, i32 6245}
!294 = !{!"VP", i32 1, i64 6245, i64 16, i64 2136, i64 32, i64 1152, i64 65, i64 1147, i64 33, i64 578}
!295 = !{!"branch_weights", i32 1399, i32 9356}
!296 = distinct !{!296, !116, !117}
!297 = !{!"branch_weights", i32 106342, i32 214}
!298 = !{!"branch_weights", i32 1399, i32 1}
!299 = !{!"branch_weights", i32 27280, i32 77876}
!300 = !{!"branch_weights", i32 103757, i32 1399}
!301 = !{!"branch_weights", i32 214, i32 1186}
!302 = !{!"VP", i32 1, i64 1186, i64 129, i64 390, i64 128, i64 160, i64 16, i64 141, i64 32, i64 126}
!303 = !{!"branch_weights", i32 1206, i32 194}
!304 = !{!"VP", i32 1, i64 194, i64 16, i64 113, i64 32, i64 38, i64 33, i64 13, i64 129, i64 7}
!305 = !{!"function_entry_count", i64 6}
!306 = !{!"branch_weights", i32 1, i32 5}
!307 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!308 = !{!"branch_weights", i32 0, i32 6}
!309 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!310 = distinct !{!310, !116, !117}
!311 = distinct !{!311, !116, !117}
!312 = distinct !{!312, !116, !117}
!313 = distinct !{!313, !116, !117}
!314 = !{!"function_entry_count", i64 110857}
!315 = !{!"branch_weights", i32 127, i32 1}
!316 = distinct !{!316, !116, !117}
!317 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!318 = distinct !{!318, !116, !117}
!319 = distinct !{!319, !116, !117}
!320 = distinct !{!320, !116, !117}
!321 = distinct !{!321, !116, !117}
!322 = distinct !{!322, !116, !117}
!323 = distinct !{!323, !116, !117}
!324 = !{!"function_entry_count", i64 45}
!325 = !{!"branch_weights", i32 20, i32 25}
!326 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!327 = !{!"branch_weights", i32 25, i32 0}
!328 = !{!"branch_weights", i32 1, i32 19}
!329 = !{!"VP", i32 0, i64 19, i64 8345045103670217670, i64 19}
!330 = !{!"function_entry_count", i64 25}
!331 = !{!"branch_weights", i32 0, i32 25}
!332 = !{!"branch_weights", i32 1, i32 199}
!333 = !{!"branch_weights", i32 199, i32 105}
!334 = distinct !{!334, !116, !117}
!335 = distinct !{!335, !116, !117}
!336 = distinct !{!336, !116, !117}
!337 = distinct !{!337, !116, !117}
!338 = !{!"function_entry_count", i64 86}
!339 = !{!"branch_weights", i32 43, i32 43}
!340 = !{!"branch_weights", i32 18, i32 25}
!341 = !{!"branch_weights", i32 43, i32 0}
!342 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!343 = !{!"branch_weights", i32 2, i32 0}
!344 = !{!"branch_weights", i32 0, i32 2}
!345 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!346 = distinct !{!346, !116, !117}
!347 = distinct !{!347, !116, !117}
!348 = distinct !{!348, !116, !117}
!349 = distinct !{!349, !116, !117}
!350 = distinct !{!350, !116, !117}
!351 = distinct !{!351, !116, !117}
!352 = distinct !{!352, !116, !117}
!353 = distinct !{!353, !116, !117}
!354 = !{!"function_entry_count", i64 114263}
!355 = !{!"branch_weights", i32 114263, i32 0}
!356 = !{!"branch_weights", i32 20522, i32 93741}
!357 = !{!"VP", i32 0, i64 93741, i64 8345045103670217670, i64 93741}
!358 = distinct !{!358, !116, !117}
!359 = distinct !{!359, !116, !117}
!360 = distinct !{!360, !116, !117}
!361 = distinct !{!361, !116, !117}
!362 = distinct !{!362, !116, !117}
!363 = !{!"function_entry_count", i64 4}
!364 = !{!"branch_weights", i32 2, i32 2}
!365 = !{!"function_entry_count", i64 41614}
!366 = !{!"branch_weights", i32 0, i32 41614}
!367 = !{!154, !102, i64 8}
!368 = !{!"branch_weights", i32 12, i32 41602}
!369 = !{!"branch_weights", i32 5, i32 7}
!370 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!371 = !{!"branch_weights", i32 354, i32 41248}
!372 = !{!"branch_weights", i32 40889, i32 359}
!373 = !{!"branch_weights", i32 40581, i32 1021}
!374 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!375 = !{!"function_entry_count", i64 22}
!376 = !{!"branch_weights", i32 64551590, i32 18}
!377 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!378 = !{!"branch_weights", i32 18, i32 0}
!379 = !{!"branch_weights", i32 4, i32 64551586}
!380 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!381 = !{!"function_entry_count", i64 155828046}
!382 = !{!"branch_weights", i32 0, i32 155828046}
!383 = !{!"branch_weights", i32 133170777, i32 22657269}
!384 = !{!"branch_weights", i32 20, i32 133170757}
!385 = !{!"branch_weights", i32 1, i32 19024395}
!386 = !{!387, !387, i64 0}
!387 = !{!"short", !100, i64 0}
!388 = !{!"branch_weights", i32 19024395, i32 -26420601}
!389 = distinct !{!389, !116, !117}
!390 = !{!"branch_weights", i32 20748786, i32 1908483}
!391 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!392 = !{!"branch_weights", i32 20748786, i32 0}
!393 = !{!"branch_weights", i32 0, i32 20748786}
!394 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!395 = !{!"branch_weights", i32 0, i32 1908483}
!396 = !{!"branch_weights", i32 1, i32 1908482}
!397 = !{!"branch_weights", i32 1908482, i32 49797853}
!398 = distinct !{!398, !116, !117}
!399 = !{!"branch_weights", i32 1908482, i32 1}
!400 = distinct !{!400, !116, !117}
!401 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!402 = distinct !{!402, !116, !117}
!403 = !{!"function_entry_count", i64 124150652}
!404 = !{!"branch_weights", i32 124150652, i32 0}
!405 = !{!"function_entry_count", i64 64551586}
!406 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!407 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!408 = !{!"branch_weights", i32 42418193, i32 22133393}
!409 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!410 = !{!"branch_weights", i32 0, i32 93739}
!411 = !{!"branch_weights", i32 1, i32 93738}
!412 = !{!"branch_weights", i32 93738, i32 308786}
!413 = distinct !{!413, !116, !117}
