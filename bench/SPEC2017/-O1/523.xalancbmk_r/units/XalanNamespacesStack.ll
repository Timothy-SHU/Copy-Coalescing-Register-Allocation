; ModuleID = 'XalanNamespacesStack.cpp'
source_filename = "XalanNamespacesStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanNamespacesStack::PrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanNamespacesStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", %"struct.xalanc_1_10::XalanDequeIterator", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry" = type { %"class.xalanc_1_10::XalanDeque.2", %"struct.xalanc_1_10::XalanDequeIterator.4" }
%"class.xalanc_1_10::XalanDeque.2" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.3" }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator.4" = type { ptr, i64 }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanNamespace" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"class.xalanc_1_10::XalanNamespace" }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager.9" = type { %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry" }

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm = comdat any

$_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry21getNamespaceForPrefixERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE11getNewBlockEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE6insertEPS5_PKS5_SA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanNamespaceC2ERKS0_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014XalanNamespaceEPS4_EET0_T_S9_S8_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014XalanNamespaceES5_EET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb = comdat any

@_ZTVN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE, ptr @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyD2Ev, ptr @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyD0Ev, ptr @_ZNK11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxy21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxy6getURIEv] }, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE = dso_local constant [59 x i8] c"N11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8

@_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyC1ERKS0_RKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyC2ERKS0_RKNS_14XalanDOMStringE
@_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyD2Ev
@_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryC1ERKS1_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryC2ERKS1_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryD2Ev
@_ZN11xalanc_1_1020XalanNamespacesStackC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStackC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1020XalanNamespacesStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XalanNamespacesStackD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyC2ERKS0_RKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::PrefixResolverProxy", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::PrefixResolverProxy", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !103
  ret void
}

declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxy21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !99 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::PrefixResolverProxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 align 2 !prof !109 {
  %3 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
  br i1 %4, label %5, label %7, !prof !110

5:                                                ; preds = %2
  %6 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !103
  br label %79

7:                                                ; preds = %2
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !103
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
  br i1 %9, label %10, label %12, !prof !110

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !103
  br label %79

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = load ptr, ptr %13, align 8, !tbaa !111
  %17 = icmp eq ptr %15, %16
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %19, %21
  %23 = select i1 %17, i1 %22, i1 false, !prof !114
  br i1 %23, label %79, label %24, !prof !115

24:                                               ; preds = %12
  %25 = add i64 %21, 1
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %16, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %16, i64 0, i32 2, i32 3
  %28 = icmp ne ptr %15, %16
  br label %29

29:                                               ; preds = %73, %24
  %30 = phi i64 [ %25, %24 ], [ %31, %73 ]
  %31 = add i64 %30, -1
  %32 = load i64, ptr %26, align 8, !tbaa !116
  %33 = udiv i64 %31, %32
  %34 = load ptr, ptr %27, align 8, !tbaa !119
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !103
  %37 = urem i64 %31, %32
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !120
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %39, i64 %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %40, i64 0, i32 2, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !122
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %72, label %44, !prof !124

44:                                               ; preds = %29
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %39, i64 %37, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !125
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %39, i64 %37, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !127
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %46, i64 0, i32 1
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %46, i64 0, i32 2, i32 3
  br label %51

51:                                               ; preds = %67, %44
  %52 = phi i64 [ %48, %44 ], [ %54, %67 ]
  %53 = phi ptr [ undef, %44 ], [ %66, %67 ]
  %54 = add i64 %52, -1
  %55 = load i64, ptr %49, align 8, !tbaa !128
  %56 = udiv i64 %54, %55
  %57 = load ptr, ptr %50, align 8, !tbaa !130
  %58 = getelementptr inbounds ptr, ptr %57, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !103
  %60 = urem i64 %54, %55
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %59, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !131
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %62, i64 %60
  %64 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %63)
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %62, i64 %60, i32 1
  %66 = select i1 %64, ptr %65, ptr %53, !prof !133
  br i1 %64, label %73, label %67, !prof !133

67:                                               ; preds = %51
  %68 = icmp ne ptr %46, %40
  %69 = icmp ne i64 %54, 0
  %70 = or i1 %68, %69
  br i1 %70, label %51, label %71, !prof !134, !llvm.loop !135

71:                                               ; preds = %67
  br i1 %64, label %73, label %72, !prof !134

72:                                               ; preds = %71, %29
  br label %73

73:                                               ; preds = %51, %71, %72
  %74 = phi ptr [ %66, %71 ], [ null, %72 ], [ %66, %51 ]
  %75 = icmp eq ptr %74, null
  %76 = icmp ne i64 %19, %31
  %77 = select i1 %28, i1 true, i1 %76
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %29, label %79, !prof !138, !llvm.loop !139

79:                                               ; preds = %73, %12, %10, %5
  %80 = phi ptr [ %6, %5 ], [ %11, %10 ], [ null, %12 ], [ %74, %73 ]
  ret ptr %80
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxy6getURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::PrefixResolverProxy", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0, i64 noundef 10)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !125, !alias.scope !141
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %4, align 8, !tbaa !127, !alias.scope !141
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  store ptr %1, ptr %0, align 8, !tbaa !145
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !128
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2
  %8 = udiv i64 %2, %3
  %9 = urem i64 %2, %3
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = add i64 %8, %11
  store ptr %1, ptr %7, align 8, !tbaa !146
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %13, align 8, !tbaa !122
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 2
  store i64 %12, ptr %14, align 8, !tbaa !147
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %22, label %16, !prof !148

16:                                               ; preds = %4
  %17 = shl i64 %12, 3
  %18 = load ptr, ptr %1, align 8, !tbaa !100
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %17)
  br label %22

22:                                               ; preds = %4, %16
  %23 = phi ptr [ %21, %16 ], [ null, %4 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !130
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  store ptr %1, ptr %25, align 8, !tbaa !146
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #16
  %27 = load ptr, ptr %0, align 8, !tbaa !145
  invoke void @_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %28 unwind label %65, !prof !148

28:                                               ; preds = %22
  %29 = icmp eq i64 %2, 0
  br i1 %29, label %35, label %30, !prof !149

30:                                               ; preds = %28, %32
  %31 = phi i64 [ %33, %32 ], [ %2, %28 ]
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %32 unwind label %67

32:                                               ; preds = %30
  %33 = add i64 %31, -1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %30, !prof !149, !llvm.loop !150

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %5, i64 0, i32 1, i32 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !151
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %50, label %39, !prof !148

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %5, i64 0, i32 1
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %5, i64 0, i32 1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !153
  %43 = load ptr, ptr %40, align 8, !tbaa !154
  %44 = load ptr, ptr %43, align 8, !tbaa !100
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47

47:                                               ; preds = %39
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #18
  unreachable

50:                                               ; preds = %35, %39
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !151
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %64, label %54, !prof !148

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  %57 = load ptr, ptr %5, align 8, !tbaa !154
  %58 = load ptr, ptr %57, align 8, !tbaa !100
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #18
  unreachable

64:                                               ; preds = %50, %54
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #16
  ret void

65:                                               ; preds = %22
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %97

67:                                               ; preds = %30
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %5, i64 0, i32 1, i32 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !151
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %5, i64 0, i32 1
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %5, i64 0, i32 1, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !153
  %76 = load ptr, ptr %73, align 8, !tbaa !154
  %77 = load ptr, ptr %76, align 8, !tbaa !100
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %75)
          to label %83 unwind label %80

80:                                               ; preds = %72
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  call void @__clang_call_terminate(ptr %82) #18
  unreachable

83:                                               ; preds = %67, %72
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !151
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !153
  %90 = load ptr, ptr %5, align 8, !tbaa !154
  %91 = load ptr, ptr %90, align 8, !tbaa !100
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %89)
          to label %97 unwind label %94

94:                                               ; preds = %87
  %95 = landingpad { ptr, i32 }
          catch ptr null
  %96 = extractvalue { ptr, i32 } %95, 0
  call void @__clang_call_terminate(ptr %96) #18
  unreachable

97:                                               ; preds = %87, %83, %65
  %98 = phi { ptr, i32 } [ %66, %65 ], [ %68, %83 ], [ %68, %87 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  resume { ptr, i32 } %98
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %2 unwind label %28, !prof !156

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !122
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %23, label %7, !prof !157

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !130
  br label %9

9:                                                ; preds = %7, %17
  %10 = phi ptr [ %18, %17 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  %12 = load ptr, ptr %10, align 8, !tbaa !103
  %13 = load ptr, ptr %0, align 8, !tbaa !145
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %12)
          to label %17 unwind label %26, !prof !158

17:                                               ; preds = %9
  %18 = getelementptr inbounds ptr, ptr %10, i64 1
  %19 = load ptr, ptr %3, align 8, !tbaa !130
  %20 = load i64, ptr %4, align 8, !tbaa !122
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %9, !prof !149, !llvm.loop !159

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #16
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  ret void

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %1
  %29 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryC2ERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %1, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !127
  store ptr %0, ptr %4, align 8, !tbaa !125, !alias.scope !160
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  store i64 %6, ptr %7, align 8, !tbaa !127, !alias.scope !160
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  store ptr %2, ptr %0, align 8, !tbaa !145
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !128
  store i64 %6, ptr %4, align 8, !tbaa !128
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %1, align 8, !tbaa !145
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !122
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12, !prof !148

12:                                               ; preds = %3
  %13 = add i64 %10, -1
  %14 = load i64, ptr %5, align 8, !tbaa !128
  %15 = mul i64 %14, %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = getelementptr ptr, ptr %17, i64 %10
  %19 = getelementptr ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !163
  %23 = add i64 %22, %15
  br label %24

24:                                               ; preds = %3, %12
  %25 = phi i64 [ %23, %12 ], [ 0, %3 ]
  %26 = load i64, ptr %5, align 8, !tbaa !128
  %27 = udiv i64 %25, %26
  br i1 %11, label %39, label %28, !prof !148

28:                                               ; preds = %24
  %29 = add i64 %10, -1
  %30 = mul i64 %26, %29
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = getelementptr ptr, ptr %32, i64 %10
  %34 = getelementptr ptr, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !163
  %38 = add i64 %37, %30
  br label %39

39:                                               ; preds = %24, %28
  %40 = phi i64 [ %38, %28 ], [ 0, %24 ]
  %41 = urem i64 %40, %26
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = add i64 %27, %43
  store ptr %8, ptr %7, align 8, !tbaa !146
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %45, align 8, !tbaa !122
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 2
  store i64 %44, ptr %46, align 8, !tbaa !147
  %47 = icmp eq i64 %44, 0
  br i1 %47, label %54, label %48, !prof !148

48:                                               ; preds = %39
  %49 = shl i64 %44, 3
  %50 = load ptr, ptr %8, align 8, !tbaa !100
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %49)
  br label %54

54:                                               ; preds = %39, %48
  %55 = phi ptr [ %53, %48 ], [ null, %39 ]
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  store ptr %55, ptr %56, align 8, !tbaa !130
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  store ptr %2, ptr %57, align 8, !tbaa !146
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  %59 = load i64, ptr %9, align 8, !tbaa !122
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %73, label %61, !prof !148

61:                                               ; preds = %54
  %62 = add i64 %59, -1
  %63 = load i64, ptr %5, align 8, !tbaa !128
  %64 = mul i64 %63, %62
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !130
  %67 = getelementptr ptr, ptr %66, i64 %59
  %68 = getelementptr ptr, ptr %67, i64 -1
  %69 = load ptr, ptr %68, align 8, !tbaa !103
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !163
  %72 = add i64 %71, %64
  br label %73

73:                                               ; preds = %54, %61
  %74 = phi i64 [ %72, %61 ], [ 0, %54 ]
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %91, !prof !164

76:                                               ; preds = %73, %88
  %77 = phi i64 [ %89, %88 ], [ 0, %73 ]
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  %79 = load i64, ptr %5, align 8, !tbaa !128
  %80 = udiv i64 %77, %79
  %81 = load ptr, ptr %78, align 8, !tbaa !130
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !103
  %84 = urem i64 %77, %79
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %83, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !131
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %86, i64 %84
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %87)
          to label %88 unwind label %92

88:                                               ; preds = %76
  %89 = add nuw nsw i64 %77, 1
  %90 = icmp eq i64 %89, %74
  br i1 %90, label %91, label %76, !prof !149, !llvm.loop !165

91:                                               ; preds = %88, %73
  ret void

92:                                               ; preds = %76
  %93 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %57) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  resume { ptr, i32 } %93
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry3setERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %4 = alloca %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %1, i64 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !127
  store ptr %4, ptr %7, align 8, !tbaa !125, !alias.scope !166
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %4, i64 0, i32 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !127, !alias.scope !166
  %11 = load ptr, ptr %0, align 8, !tbaa !145
  %12 = load ptr, ptr %4, align 8, !tbaa !145
  store ptr %12, ptr %0, align 8, !tbaa !145
  store ptr %11, ptr %4, align 8, !tbaa !145
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %13, align 8, !tbaa !146
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 2, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !122
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 2, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !147
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = load ptr, ptr %14, align 8, !tbaa !146
  store ptr %22, ptr %13, align 8, !tbaa !146
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !122
  store i64 %24, ptr %16, align 8, !tbaa !122
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !147
  store i64 %26, ptr %18, align 8, !tbaa !147
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  store ptr %28, ptr %20, align 8, !tbaa !130
  store ptr %15, ptr %14, align 8, !tbaa !146
  store i64 %17, ptr %23, align 8, !tbaa !122
  store i64 %19, ptr %25, align 8, !tbaa !147
  store ptr %21, ptr %27, align 8, !tbaa !130
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 3
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %29, align 8, !tbaa !146
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 3, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !122
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 3, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !147
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %4, i64 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = load ptr, ptr %30, align 8, !tbaa !146
  store ptr %38, ptr %29, align 8, !tbaa !146
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !122
  store i64 %40, ptr %32, align 8, !tbaa !122
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !147
  store i64 %42, ptr %34, align 8, !tbaa !147
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !130
  store ptr %44, ptr %36, align 8, !tbaa !130
  store ptr %31, ptr %30, align 8, !tbaa !146
  store i64 %33, ptr %39, align 8, !tbaa !122
  store i64 %35, ptr %41, align 8, !tbaa !147
  store ptr %37, ptr %43, align 8, !tbaa !130
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !125
  store ptr %46, ptr %7, align 8, !tbaa !125
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !127
  store i64 %48, ptr %10, align 8, !tbaa !127
  store ptr %4, ptr %45, align 8, !tbaa !125
  store i64 %9, ptr %47, align 8, !tbaa !127
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  br label %49

49:                                               ; preds = %6, %3
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry4swapERS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #3 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %1, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !127
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  store ptr %8, ptr %3, align 8, !tbaa !125
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !127
  store i64 %10, ptr %5, align 8, !tbaa !127
  store ptr %4, ptr %7, align 8, !tbaa !125
  store i64 %6, ptr %9, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #3 comdat align 2 !prof !99 {
  %3 = load ptr, ptr %0, align 8, !tbaa !145
  %4 = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %4, ptr %0, align 8, !tbaa !145
  store ptr %3, ptr %1, align 8, !tbaa !145
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %5, align 8, !tbaa !146
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !147
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = load ptr, ptr %6, align 8, !tbaa !146
  store ptr %14, ptr %5, align 8, !tbaa !146
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !122
  store i64 %16, ptr %8, align 8, !tbaa !122
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !147
  store i64 %18, ptr %10, align 8, !tbaa !147
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  store ptr %20, ptr %12, align 8, !tbaa !130
  store ptr %7, ptr %6, align 8, !tbaa !146
  store i64 %9, ptr %15, align 8, !tbaa !122
  store i64 %11, ptr %17, align 8, !tbaa !147
  store ptr %13, ptr %19, align 8, !tbaa !130
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 3
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %21, align 8, !tbaa !146
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 3, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !122
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 3, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !147
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !130
  %30 = load ptr, ptr %22, align 8, !tbaa !146
  store ptr %30, ptr %21, align 8, !tbaa !146
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !122
  store i64 %32, ptr %24, align 8, !tbaa !122
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !147
  store i64 %34, ptr %26, align 8, !tbaa !147
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !130
  store ptr %36, ptr %28, align 8, !tbaa !130
  store ptr %23, ptr %22, align 8, !tbaa !146
  store i64 %25, ptr %31, align 8, !tbaa !122
  store i64 %27, ptr %33, align 8, !tbaa !147
  store ptr %29, ptr %35, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !169 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !122
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9, !prof !149

9:                                                ; preds = %4
  %10 = add i64 %7, -1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !128, !noalias !170
  %13 = mul i64 %12, %10
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !130, !noalias !170
  %16 = getelementptr ptr, ptr %15, i64 %7
  %17 = getelementptr ptr, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !103, !noalias !170
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !163, !noalias !170
  %21 = add i64 %20, %13
  br label %22

22:                                               ; preds = %4, %9
  %23 = phi i64 [ %21, %9 ], [ 0, %4 ]
  %24 = load ptr, ptr %5, align 8, !tbaa !125
  %25 = icmp eq ptr %24, %0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %23, %27
  %29 = select i1 %25, i1 %28, i1 false, !prof !149
  br i1 %29, label %30, label %65, !prof !149

30:                                               ; preds = %22
  br i1 %8, label %45, label %31, !prof !149

31:                                               ; preds = %30
  %32 = add i64 %7, -1
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !128
  %35 = mul i64 %34, %32
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = getelementptr ptr, ptr %37, i64 %7
  %39 = getelementptr ptr, ptr %38, i64 -1
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %40, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !163
  %43 = add i64 %35, 1
  %44 = add i64 %43, %42
  br label %45

45:                                               ; preds = %30, %31
  %46 = phi i64 [ %44, %31 ], [ 1, %30 ]
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %46)
  %47 = load i64, ptr %6, align 8, !tbaa !122, !noalias !173
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %63, label %49, !prof !164

49:                                               ; preds = %45
  %50 = add i64 %47, -1
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !128, !noalias !173
  %53 = mul i64 %52, %50
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !130, !noalias !173
  %56 = getelementptr ptr, ptr %55, i64 %47
  %57 = getelementptr ptr, ptr %56, i64 -1
  %58 = load ptr, ptr %57, align 8, !tbaa !103, !noalias !173
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !163, !noalias !173
  %61 = add i64 %53, -1
  %62 = add i64 %61, %60
  br label %63

63:                                               ; preds = %45, %49
  %64 = phi i64 [ %62, %49 ], [ -1, %45 ]
  store ptr %0, ptr %5, align 8, !tbaa !125
  store i64 %64, ptr %26, align 8, !tbaa !127
  br label %65

65:                                               ; preds = %63, %22
  %66 = load ptr, ptr %5, align 8, !tbaa !125
  %67 = load i64, ptr %26, align 8, !tbaa !127
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %66, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !128
  %70 = udiv i64 %67, %69
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %66, i64 0, i32 2, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !130
  %73 = getelementptr inbounds ptr, ptr %72, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !103
  %75 = urem i64 %67, %69
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %74, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !131
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %77, i64 %75
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %85, label %80, !prof !164

80:                                               ; preds = %65
  %81 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !176
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %78, i64 0, i32 1
  store i32 %83, ptr %84, align 8, !tbaa !176
  br label %85

85:                                               ; preds = %65, %80
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %77, i64 %75, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %86, i32 noundef 0, i32 noundef -1)
  %87 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %86, ptr noundef %2, i32 noundef %3)
  %88 = load i64, ptr %26, align 8, !tbaa !127
  %89 = add i64 %88, 1
  store i64 %89, ptr %26, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !145
  call void @_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !122
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %21, label %8, !prof !149

8:                                                ; preds = %2
  %9 = add i64 %6, -1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !128
  %12 = mul i64 %11, %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = getelementptr ptr, ptr %14, i64 %6
  %16 = getelementptr ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !163
  %20 = add i64 %19, %12
  br label %21

21:                                               ; preds = %8, %2
  %22 = phi i64 [ %20, %8 ], [ 0, %2 ]
  %23 = icmp ult i64 %22, %1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  br i1 %23, label %26, label %50, !prof !149

26:                                               ; preds = %21, %48
  %27 = phi i64 [ %49, %48 ], [ 0, %21 ]
  %28 = load i64, ptr %5, align 8, !tbaa !122
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %41, label %30, !prof !179

30:                                               ; preds = %26
  %31 = add i64 %28, -1
  %32 = load i64, ptr %24, align 8, !tbaa !128
  %33 = mul i64 %32, %31
  %34 = load ptr, ptr %25, align 8, !tbaa !130
  %35 = getelementptr ptr, ptr %34, i64 %28
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !163
  %40 = add i64 %39, %33
  br label %41

41:                                               ; preds = %30, %26
  %42 = phi i64 [ %40, %30 ], [ 0, %26 ]
  %43 = sub i64 %1, %42
  %44 = icmp ult i64 %27, %43
  br i1 %44, label %47, label %74, !prof !179

45:                                               ; preds = %47
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %104

47:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %48 unwind label %45, !prof !149

48:                                               ; preds = %47
  %49 = add nuw i64 %27, 1
  br label %26, !llvm.loop !180

50:                                               ; preds = %21, %72
  %51 = phi i64 [ %73, %72 ], [ 0, %21 ]
  %52 = load i64, ptr %5, align 8, !tbaa !122
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = add i64 %52, -1
  %56 = load i64, ptr %24, align 8, !tbaa !128
  %57 = mul i64 %56, %55
  %58 = load ptr, ptr %25, align 8, !tbaa !130
  %59 = getelementptr ptr, ptr %58, i64 %52
  %60 = getelementptr ptr, ptr %59, i64 -1
  %61 = load ptr, ptr %60, align 8, !tbaa !103
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %61, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !163
  %64 = add i64 %63, %57
  br label %65

65:                                               ; preds = %54, %50
  %66 = phi i64 [ %64, %54 ], [ 0, %50 ]
  %67 = sub i64 %66, %1
  %68 = icmp ult i64 %51, %67
  br i1 %68, label %71, label %74

69:                                               ; preds = %71
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %104

71:                                               ; preds = %65
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %72 unwind label %69

72:                                               ; preds = %71
  %73 = add nuw i64 %51, 1
  br label %50, !llvm.loop !181

74:                                               ; preds = %65, %41
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %3, i64 0, i32 1, i32 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !151
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %89, label %78, !prof !149

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %3, i64 0, i32 1
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %3, i64 0, i32 1, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !153
  %82 = load ptr, ptr %79, align 8, !tbaa !154
  %83 = load ptr, ptr %82, align 8, !tbaa !100
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %81)
          to label %89 unwind label %86

86:                                               ; preds = %78
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #18
  unreachable

89:                                               ; preds = %74, %78
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !151
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %103, label %93, !prof !149

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !153
  %96 = load ptr, ptr %3, align 8, !tbaa !154
  %97 = load ptr, ptr %96, align 8, !tbaa !100
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %95)
          to label %103 unwind label %100

100:                                              ; preds = %93
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #18
  unreachable

103:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #16
  ret void

104:                                              ; preds = %69, %45
  %105 = phi { ptr, i32 } [ %46, %45 ], [ %70, %69 ]
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %3, i64 0, i32 1, i32 0, i32 2
  %107 = load i64, ptr %106, align 8, !tbaa !151
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %3, i64 0, i32 1
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %3, i64 0, i32 1, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !153
  %113 = load ptr, ptr %110, align 8, !tbaa !154
  %114 = load ptr, ptr %113, align 8, !tbaa !100
  %115 = getelementptr inbounds ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef %112)
          to label %120 unwind label %117

117:                                              ; preds = %109
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  call void @__clang_call_terminate(ptr %119) #18
  unreachable

120:                                              ; preds = %104, %109
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !151
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !153
  %127 = load ptr, ptr %3, align 8, !tbaa !154
  %128 = load ptr, ptr %127, align 8, !tbaa !100
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef %126)
          to label %134 unwind label %131

131:                                              ; preds = %124
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #18
  unreachable

134:                                              ; preds = %120, %124
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #16
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry9findEntryERKNS_14XalanDOMStringEMNS_14XalanNamespaceEKFS4_vES7_(ptr noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 !prof !99 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !122
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !127
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %12, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %12, i64 0, i32 2, i32 3
  %17 = and i64 %2, 1
  %18 = icmp eq i64 %17, 0
  %19 = inttoptr i64 %2 to ptr
  %20 = and i64 %4, 1
  %21 = icmp eq i64 %20, 0
  %22 = inttoptr i64 %4 to ptr
  %23 = icmp ne ptr %12, %0
  br label %24

24:                                               ; preds = %59, %10
  %25 = phi i64 [ %14, %10 ], [ %27, %59 ]
  %26 = phi ptr [ undef, %10 ], [ %58, %59 ]
  %27 = add i64 %25, -1
  %28 = load i64, ptr %15, align 8, !tbaa !128
  %29 = udiv i64 %27, %28
  %30 = load ptr, ptr %16, align 8, !tbaa !130
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  %33 = urem i64 %27, %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !131
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %35, i64 %33
  %37 = getelementptr inbounds i8, ptr %36, i64 %3
  br i1 %18, label %43, label %38

38:                                               ; preds = %24
  %39 = load ptr, ptr %37, align 8, !tbaa !100
  %40 = getelementptr i8, ptr %39, i64 %2
  %41 = getelementptr i8, ptr %40, i64 -1
  %42 = load ptr, ptr %41, align 8, !nosanitize !182
  br label %43

43:                                               ; preds = %24, %38
  %44 = phi ptr [ %42, %38 ], [ %19, %24 ]
  %45 = tail call noundef nonnull align 8 dereferenceable(36) ptr %44(ptr noundef nonnull align 8 dereferenceable(80) %37)
  %46 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %45)
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %36, i64 %5
  br i1 %21, label %54, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %48, align 8, !tbaa !100
  %51 = getelementptr i8, ptr %50, i64 %4
  %52 = getelementptr i8, ptr %51, i64 -1
  %53 = load ptr, ptr %52, align 8, !nosanitize !182
  br label %54

54:                                               ; preds = %47, %49
  %55 = phi ptr [ %53, %49 ], [ %22, %47 ]
  %56 = tail call noundef nonnull align 8 dereferenceable(36) ptr %55(ptr noundef nonnull align 8 dereferenceable(80) %48)
  br label %57

57:                                               ; preds = %43, %54
  %58 = phi ptr [ %56, %54 ], [ %26, %43 ]
  br i1 %46, label %64, label %59

59:                                               ; preds = %57
  %60 = icmp ne i64 %27, 0
  %61 = or i1 %23, %60
  br i1 %61, label %24, label %62, !llvm.loop !135

62:                                               ; preds = %59
  br i1 %46, label %64, label %63

63:                                               ; preds = %62, %6
  br label %64

64:                                               ; preds = %57, %62, %63
  %65 = phi ptr [ %58, %62 ], [ null, %63 ], [ %58, %57 ]
  ret ptr %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry5clearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  store ptr %0, ptr %2, align 8, !tbaa !125
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %3, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !122
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !122
  %9 = add i64 %8, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !147
  %12 = icmp ult i64 %11, %9
  br i1 %12, label %13, label %14, !prof !183

13:                                               ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %9)
  br label %14

14:                                               ; preds = %1, %13
  %15 = load ptr, ptr %2, align 8, !tbaa !130
  %16 = load i64, ptr %7, align 8, !tbaa !122
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = icmp eq ptr %3, %17
  br i1 %18, label %32, label %19, !prof !157

19:                                               ; preds = %14, %26
  %20 = phi ptr [ %27, %26 ], [ %3, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !163
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25, !prof !164

25:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0)
  br label %26

26:                                               ; preds = %19, %25
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %27 = getelementptr inbounds ptr, ptr %20, i64 1
  %28 = load ptr, ptr %2, align 8, !tbaa !130
  %29 = load i64, ptr %7, align 8, !tbaa !122
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %32, label %19, !prof !149, !llvm.loop !184

32:                                               ; preds = %26, %14
  %33 = phi i64 [ %16, %14 ], [ %29, %26 ]
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %36, label %35, !prof !157

35:                                               ; preds = %32
  store i64 0, ptr %7, align 8, !tbaa !122
  br label %36

36:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1, i64 noundef 10)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !111, !alias.scope !185
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %4, align 8, !tbaa !188, !alias.scope !185
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %6, align 8, !tbaa !188
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !189
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager.9", align 8
  store ptr %1, ptr %0, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %8 = udiv i64 %2, %3
  %9 = urem i64 %2, %3
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = add i64 %8, %11
  store ptr %1, ptr %7, align 8, !tbaa !193
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %13, align 8, !tbaa !194
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 2
  store i64 %12, ptr %14, align 8, !tbaa !195
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %22, label %16, !prof !196

16:                                               ; preds = %4
  %17 = shl i64 %12, 3
  %18 = load ptr, ptr %1, align 8, !tbaa !100
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %17), !prof !197
  br label %22

22:                                               ; preds = %4, %16
  %23 = phi ptr [ %21, %16 ], [ null, %4 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !119
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  store ptr %1, ptr %25, align 8, !tbaa !193
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #16
  %27 = load ptr, ptr %0, align 8, !tbaa !192
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0, i64 noundef 10)
          to label %28 unwind label %38, !prof !198

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %5, i64 0, i32 1
  store ptr %5, ptr %29, align 8, !tbaa !125, !alias.scope !199
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %5, i64 0, i32 1, i32 1
  store i64 0, ptr %30, align 8, !tbaa !127, !alias.scope !199
  %31 = icmp eq i64 %2, 0
  br i1 %31, label %37, label %32, !prof !202

32:                                               ; preds = %28, %34
  %33 = phi i64 [ %35, %34 ], [ %2, %28 ]
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %34 unwind label %40, !prof !198

34:                                               ; preds = %32
  %35 = add i64 %33, -1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %32, !prof !203, !llvm.loop !204

37:                                               ; preds = %34, %28
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  ret void

38:                                               ; preds = %22
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #16
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  resume { ptr, i32 } %43
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %2 unwind label %28, !prof !198

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !194
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %23, label %7, !prof !202

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !119
  br label %9

9:                                                ; preds = %7, %17
  %10 = phi ptr [ %18, %17 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  %12 = load ptr, ptr %10, align 8, !tbaa !103
  %13 = load ptr, ptr %0, align 8, !tbaa !192
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %12)
          to label %17 unwind label %26, !prof !205

17:                                               ; preds = %9
  %18 = getelementptr inbounds ptr, ptr %10, i64 1
  %19 = load ptr, ptr %3, align 8, !tbaa !119
  %20 = load i64, ptr %4, align 8, !tbaa !194
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %9, !prof !203, !llvm.loop !206

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #16
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  ret void

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %1
  %29 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStackD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 !prof !169 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !208
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !209

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = load ptr, ptr %0, align 8, !tbaa !189
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !211

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !169 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !210
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !212
  %9 = getelementptr i8, ptr %6, i64 %8
  %10 = getelementptr i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !213, !range !215, !noundef !182
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %82, label %13, !prof !164

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !188
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !188
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !194
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %34, label %21, !prof !164

21:                                               ; preds = %13
  %22 = add i64 %19, -1
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !116, !noalias !216
  %25 = mul i64 %24, %22
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !119, !noalias !216
  %28 = getelementptr ptr, ptr %27, i64 %19
  %29 = getelementptr ptr, ptr %28, i64 -1
  %30 = load ptr, ptr %29, align 8, !tbaa !103, !noalias !216
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !219, !noalias !216
  %33 = add i64 %32, %25
  br label %34

34:                                               ; preds = %13, %21
  %35 = phi i64 [ %33, %21 ], [ 0, %13 ]
  %36 = load ptr, ptr %14, align 8, !tbaa !111
  %37 = icmp eq ptr %36, %0
  %38 = icmp eq i64 %35, %17
  %39 = select i1 %37, i1 %38, i1 false, !prof !149
  br i1 %39, label %40, label %77, !prof !149

40:                                               ; preds = %34
  br i1 %20, label %55, label %41, !prof !164

41:                                               ; preds = %40
  %42 = add i64 %19, -1
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = mul i64 %44, %42
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  %48 = getelementptr ptr, ptr %47, i64 %19
  %49 = getelementptr ptr, ptr %48, i64 -1
  %50 = load ptr, ptr %49, align 8, !tbaa !103
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !219
  %53 = add i64 %45, 1
  %54 = add i64 %53, %52
  br label %55

55:                                               ; preds = %40, %41
  %56 = phi i64 [ %54, %41 ], [ 1, %40 ]
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %56)
  %57 = load i64, ptr %18, align 8, !tbaa !194, !noalias !220
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %73, label %59, !prof !164

59:                                               ; preds = %55
  %60 = add i64 %57, -1
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !116, !noalias !220
  %63 = mul i64 %62, %60
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !119, !noalias !220
  %66 = getelementptr ptr, ptr %65, i64 %57
  %67 = getelementptr ptr, ptr %66, i64 -1
  %68 = load ptr, ptr %67, align 8, !tbaa !103, !noalias !220
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %68, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !219, !noalias !220
  %71 = add i64 %63, -1
  %72 = add i64 %71, %70
  br label %73

73:                                               ; preds = %55, %59
  %74 = phi i64 [ %72, %59 ], [ -1, %55 ]
  store ptr %0, ptr %14, align 8, !tbaa !111
  store i64 %74, ptr %15, align 8, !tbaa !188
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1
  store ptr %0, ptr %75, align 8, !tbaa !111
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %76, align 8, !tbaa !188
  br label %77

77:                                               ; preds = %73, %34
  %78 = load ptr, ptr %5, align 8, !tbaa !210
  %79 = load i64, ptr %7, align 8, !tbaa !212
  %80 = getelementptr i8, ptr %78, i64 %79
  %81 = getelementptr i8, ptr %80, i64 -1
  store i8 0, ptr %81, align 1, !tbaa !213
  br label %82

82:                                               ; preds = %77, %4
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !111
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !188
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %84, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !116
  %89 = udiv i64 %86, %88
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %84, i64 0, i32 2, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !119
  %92 = getelementptr inbounds ptr, ptr %91, i64 %89
  %93 = load ptr, ptr %92, align 8, !tbaa !103
  %94 = urem i64 %86, %88
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %93, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !120
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %96, i64 %94
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(96) %97, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager.9", align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !192
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0, i64 noundef 10)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %3, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !125, !alias.scope !223
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %3, i64 0, i32 1, i32 1
  store i64 0, ptr %6, align 8, !tbaa !127, !alias.scope !223
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !194
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %23, label %10, !prof !164

10:                                               ; preds = %2
  %11 = add i64 %8, -1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !116
  %14 = mul i64 %13, %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr ptr, ptr %16, i64 %8
  %18 = getelementptr ptr, ptr %17, i64 -1
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !219
  %22 = add i64 %21, %14
  br label %23

23:                                               ; preds = %10, %2
  %24 = phi i64 [ %22, %10 ], [ 0, %2 ]
  %25 = icmp ult i64 %24, %1
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  br i1 %25, label %28, label %52, !prof !149

28:                                               ; preds = %23, %50
  %29 = phi i64 [ %51, %50 ], [ 0, %23 ]
  %30 = load i64, ptr %7, align 8, !tbaa !194
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %43, label %32, !prof !226

32:                                               ; preds = %28
  %33 = add i64 %30, -1
  %34 = load i64, ptr %26, align 8, !tbaa !116
  %35 = mul i64 %34, %33
  %36 = load ptr, ptr %27, align 8, !tbaa !119
  %37 = getelementptr ptr, ptr %36, i64 %30
  %38 = getelementptr ptr, ptr %37, i64 -1
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !219
  %42 = add i64 %41, %35
  br label %43

43:                                               ; preds = %32, %28
  %44 = phi i64 [ %42, %32 ], [ 0, %28 ]
  %45 = sub i64 %1, %44
  %46 = icmp ult i64 %29, %45
  br i1 %46, label %49, label %76, !prof !179

47:                                               ; preds = %49
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %77

49:                                               ; preds = %43
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %50 unwind label %47, !prof !149

50:                                               ; preds = %49
  %51 = add nuw i64 %29, 1
  br label %28, !llvm.loop !227

52:                                               ; preds = %23, %74
  %53 = phi i64 [ %75, %74 ], [ 0, %23 ]
  %54 = load i64, ptr %7, align 8, !tbaa !194
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = add i64 %54, -1
  %58 = load i64, ptr %26, align 8, !tbaa !116
  %59 = mul i64 %58, %57
  %60 = load ptr, ptr %27, align 8, !tbaa !119
  %61 = getelementptr ptr, ptr %60, i64 %54
  %62 = getelementptr ptr, ptr %61, i64 -1
  %63 = load ptr, ptr %62, align 8, !tbaa !103
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %63, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !219
  %66 = add i64 %65, %59
  br label %67

67:                                               ; preds = %56, %52
  %68 = phi i64 [ %66, %56 ], [ 0, %52 ]
  %69 = sub i64 %68, %1
  %70 = icmp ult i64 %53, %69
  br i1 %70, label %73, label %76

71:                                               ; preds = %73
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %77

73:                                               ; preds = %67
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %74 unwind label %71

74:                                               ; preds = %73
  %75 = add nuw i64 %53, 1
  br label %52, !llvm.loop !228

76:                                               ; preds = %67, %43
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  ret void

77:                                               ; preds = %71, %47
  %78 = phi { ptr, i32 } [ %48, %47 ], [ %72, %71 ]
  call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  resume { ptr, i32 } %78
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 align 2 !prof !229 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !212
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %8, 25
  %10 = select i1 %6, i1 %9, i1 false, !prof !230
  br i1 %10, label %11, label %12, !prof !230

11:                                               ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 25)
  br label %12

12:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 1, ptr %2, align 1, !tbaa !213
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack10popContextEv(ptr nocapture noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 align 2 !prof !229 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !212
  %6 = getelementptr i8, ptr %3, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -1
  %8 = load i8, ptr %7, align 1, !tbaa !213, !range !215, !noundef !182
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %29, !prof !230

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !188
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %12, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !116
  %17 = udiv i64 %14, %16
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %12, i64 0, i32 2, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = getelementptr inbounds ptr, ptr %19, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = urem i64 %14, %16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %24, i64 %22
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %24, i64 %22, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !125
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %24, i64 %22, i32 1, i32 1
  store i64 0, ptr %27, align 8, !tbaa !127
  %28 = add i64 %14, -1
  store i64 %28, ptr %13, align 8, !tbaa !188
  br label %29

29:                                               ; preds = %10, %1
  %30 = add i64 %5, -1
  store i64 %30, ptr %4, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack9findEntryERKNS_14XalanDOMStringEMNS0_25XalanNamespacesStackEntryEKFPS2_S3_E(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 %2, i64 %3) local_unnamed_addr #5 align 2 !prof !99 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = load ptr, ptr %5, align 8, !tbaa !111
  %9 = icmp eq ptr %7, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %11, %13
  %15 = select i1 %9, i1 %14, i1 false, !prof !114
  br i1 %15, label %49, label %16, !prof !115

16:                                               ; preds = %4
  %17 = add i64 %13, 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %8, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %8, i64 0, i32 2, i32 3
  %20 = and i64 %2, 1
  %21 = icmp eq i64 %20, 0
  %22 = inttoptr i64 %2 to ptr
  %23 = icmp ne ptr %7, %8
  br label %24

24:                                               ; preds = %42, %16
  %25 = phi i64 [ %17, %16 ], [ %26, %42 ]
  %26 = add i64 %25, -1
  %27 = load i64, ptr %18, align 8, !tbaa !116
  %28 = udiv i64 %26, %27
  %29 = load ptr, ptr %19, align 8, !tbaa !119
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = urem i64 %26, %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %31, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %34, i64 %32
  %36 = getelementptr inbounds i8, ptr %35, i64 %3
  br i1 %21, label %42, label %37, !prof !231

37:                                               ; preds = %24
  %38 = load ptr, ptr %36, align 8, !tbaa !100
  %39 = getelementptr i8, ptr %38, i64 %2
  %40 = getelementptr i8, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !nosanitize !182
  br label %42

42:                                               ; preds = %24, %37
  %43 = phi ptr [ %41, %37 ], [ %22, %24 ]
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(96) %36, ptr noundef nonnull align 8 dereferenceable(36) %1), !prof !232
  %45 = icmp eq ptr %44, null
  %46 = icmp ne i64 %11, %26
  %47 = select i1 %23, i1 true, i1 %46
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %24, label %49, !prof !138, !llvm.loop !139

49:                                               ; preds = %42, %4
  %50 = phi ptr [ null, %4 ], [ %44, %42 ]
  ret ptr %50
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat align 2 !prof !99 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !122
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %34, label %6, !prof !124

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !127
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %8, i64 0, i32 2, i32 3
  br label %13

13:                                               ; preds = %29, %6
  %14 = phi i64 [ %10, %6 ], [ %16, %29 ]
  %15 = phi ptr [ undef, %6 ], [ %28, %29 ]
  %16 = add i64 %14, -1
  %17 = load i64, ptr %11, align 8, !tbaa !128
  %18 = udiv i64 %16, %17
  %19 = load ptr, ptr %12, align 8, !tbaa !130
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = urem i64 %16, %17
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %24, i64 %22
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %25)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %24, i64 %22, i32 1
  %28 = select i1 %26, ptr %27, ptr %15, !prof !133
  br i1 %26, label %35, label %29, !prof !133

29:                                               ; preds = %13
  %30 = icmp ne ptr %8, %0
  %31 = icmp ne i64 %16, 0
  %32 = or i1 %30, %31
  br i1 %32, label %13, label %33, !prof !134, !llvm.loop !135

33:                                               ; preds = %29
  br i1 %26, label %35, label %34, !prof !134

34:                                               ; preds = %33, %2
  br label %35

35:                                               ; preds = %13, %33, %34
  %36 = phi ptr [ %28, %33 ], [ null, %34 ], [ %28, %13 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1020XalanNamespacesStack20prefixIsPresentLocalERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !99 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !212
  %7 = getelementptr i8, ptr %4, i64 %6
  %8 = getelementptr i8, ptr %7, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !213, !range !215, !noundef !182
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !188
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %13, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !116
  %18 = udiv i64 %15, %17
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %13, i64 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = getelementptr inbounds ptr, ptr %20, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = urem i64 %15, %17
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %22, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !120
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %25, i64 %23
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %26, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %28 = icmp ne ptr %27, null
  br label %29

29:                                               ; preds = %2, %11
  %30 = phi i1 [ %28, %11 ], [ false, %2 ]
  ret i1 %30
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanNamespacesStack5clearEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !233 {
  %2 = alloca %"class.xalanc_1_10::XalanDeque", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !192
  call void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1, i64 noundef 10)
  %4 = load ptr, ptr %2, align 8, !tbaa !192
  %5 = load ptr, ptr %0, align 8, !tbaa !192
  store ptr %5, ptr %2, align 8, !tbaa !192
  store ptr %4, ptr %0, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %6, align 8, !tbaa !193
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !194
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !195
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = load ptr, ptr %7, align 8, !tbaa !193
  store ptr %15, ptr %6, align 8, !tbaa !193
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !194
  store i64 %17, ptr %9, align 8, !tbaa !194
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !195
  store i64 %19, ptr %11, align 8, !tbaa !195
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !119
  store ptr %21, ptr %13, align 8, !tbaa !119
  store ptr %8, ptr %7, align 8, !tbaa !193
  store i64 %10, ptr %16, align 8, !tbaa !194
  store i64 %12, ptr %18, align 8, !tbaa !195
  store ptr %14, ptr %20, align 8, !tbaa !119
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %22, align 8, !tbaa !193
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !194
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !195
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !119
  %31 = load ptr, ptr %23, align 8, !tbaa !193
  store ptr %31, ptr %22, align 8, !tbaa !193
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !194
  store i64 %33, ptr %25, align 8, !tbaa !194
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !195
  store i64 %35, ptr %27, align 8, !tbaa !195
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  store ptr %37, ptr %29, align 8, !tbaa !119
  store ptr %24, ptr %23, align 8, !tbaa !193
  store i64 %26, ptr %32, align 8, !tbaa !194
  store i64 %28, ptr %34, align 8, !tbaa !195
  store ptr %30, ptr %36, align 8, !tbaa !119
  call void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #16
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !111
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %39, align 8, !tbaa !188
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2
  store ptr %0, ptr %40, align 8, !tbaa !111
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %41, align 8, !tbaa !188
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack", ptr %0, i64 0, i32 3, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !212
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45, !prof !234

45:                                               ; preds = %1
  store i64 0, ptr %42, align 8, !tbaa !212
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !235 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !236

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !237
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !238

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !154
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !154
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !237
  %16 = load i64, ptr %6, align 8, !tbaa !151
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = load ptr, ptr %3, align 8, !tbaa !154
  store ptr %19, ptr %0, align 8, !tbaa !154
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !237
  store i64 %21, ptr %14, align 8, !tbaa !237
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !151
  store i64 %23, ptr %6, align 8, !tbaa !151
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !153
  store ptr %25, ptr %17, align 8, !tbaa !153
  store ptr %13, ptr %3, align 8, !tbaa !154
  store i64 %15, ptr %20, align 8, !tbaa !237
  store i64 %16, ptr %22, align 8, !tbaa !151
  store ptr %18, ptr %24, align 8, !tbaa !153
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !239

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !100
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !240

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !153
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !237
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !241

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !242

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !153
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !237
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !237
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !153
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !243

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !153
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !244
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !245 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !154
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !237
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !246

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !154
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !237
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !151
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !247
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !153
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !153
  %24 = load i64, ptr %9, align 8, !tbaa !237
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !248

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !154
  %28 = load i64, ptr %6, align 8, !tbaa !237
  %29 = load i64, ptr %7, align 8, !tbaa !151
  %30 = load ptr, ptr %8, align 8, !tbaa !153
  %31 = load ptr, ptr %5, align 8, !tbaa !154
  store ptr %31, ptr %0, align 8, !tbaa !154
  %32 = load i64, ptr %14, align 8, !tbaa !237
  store i64 %32, ptr %6, align 8, !tbaa !237
  %33 = load i64, ptr %15, align 8, !tbaa !151
  store i64 %33, ptr %7, align 8, !tbaa !151
  %34 = load ptr, ptr %21, align 8, !tbaa !153
  store ptr %34, ptr %8, align 8, !tbaa !153
  store ptr %27, ptr %5, align 8, !tbaa !154
  store i64 %28, ptr %14, align 8, !tbaa !237
  store i64 %29, ptr %15, align 8, !tbaa !151
  store ptr %30, ptr %21, align 8, !tbaa !153
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !248

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !151
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !153
  %50 = load ptr, ptr %5, align 8, !tbaa !154
  %51 = load ptr, ptr %50, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !249

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !100
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !250
  store ptr %65, ptr %8, align 8, !tbaa !153
  store i64 %3, ptr %7, align 8, !tbaa !151
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !251 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !151
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !252

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = load ptr, ptr %0, align 8, !tbaa !154
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !253

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !255

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !237
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !151
  br i1 %18, label %21, label %39, !prof !256

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !257

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !258

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !153
  %28 = load i64, ptr %12, align 8, !tbaa !237
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !259
  store i16 %34, ptr %32, align 2, !tbaa !259
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !261, !llvm.loop !262

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !263

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !154
  store ptr %42, ptr %5, align 8, !tbaa !154
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !237
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !151
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !100
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !264
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !153
  %51 = load i64, ptr %43, align 8, !tbaa !237
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !153
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !265

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !153
  %56 = load i64, ptr %43, align 8, !tbaa !237
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !265

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !153
  %60 = load i64, ptr %43, align 8, !tbaa !237
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !153
  %63 = load i64, ptr %12, align 8, !tbaa !237
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !265

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !154
  %67 = load i64, ptr %12, align 8, !tbaa !237
  %68 = load i64, ptr %19, align 8, !tbaa !151
  %69 = load ptr, ptr %15, align 8, !tbaa !153
  %70 = load ptr, ptr %5, align 8, !tbaa !154
  store ptr %70, ptr %0, align 8, !tbaa !154
  %71 = load i64, ptr %43, align 8, !tbaa !237
  store i64 %71, ptr %12, align 8, !tbaa !237
  %72 = load i64, ptr %44, align 8, !tbaa !151
  store i64 %72, ptr %19, align 8, !tbaa !151
  %73 = load ptr, ptr %50, align 8, !tbaa !153
  store ptr %73, ptr %15, align 8, !tbaa !153
  store ptr %66, ptr %5, align 8, !tbaa !154
  store i64 %67, ptr %43, align 8, !tbaa !237
  store i64 %68, ptr %44, align 8, !tbaa !151
  store ptr %69, ptr %50, align 8, !tbaa !153
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !266

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !100
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !267

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !151
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !153
  %89 = load ptr, ptr %5, align 8, !tbaa !154
  %90 = load ptr, ptr %89, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !268

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !269

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !269

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !270, !llvm.loop !271

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !272, !llvm.loop !273

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !274
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
  br i1 %123, label %124, label %120, !llvm.loop !275

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
  store i64 %36, ptr %12, align 8, !tbaa !237
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !99 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !237
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !277

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !259
  store i16 %13, ptr %12, align 2, !tbaa !259
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !237
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !154
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !154
  %24 = load i64, ptr %4, align 8, !tbaa !237
  %25 = load i64, ptr %6, align 8, !tbaa !151
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !153
  %28 = load ptr, ptr %3, align 8, !tbaa !154
  store ptr %28, ptr %0, align 8, !tbaa !154
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !237
  store i64 %30, ptr %4, align 8, !tbaa !237
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !151
  store i64 %32, ptr %6, align 8, !tbaa !151
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !153
  store ptr %34, ptr %26, align 8, !tbaa !153
  store ptr %23, ptr %3, align 8, !tbaa !154
  store i64 %24, ptr %29, align 8, !tbaa !237
  store i64 %25, ptr %31, align 8, !tbaa !151
  store ptr %27, ptr %33, align 8, !tbaa !153
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !151
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !153
  %52 = load ptr, ptr %3, align 8, !tbaa !154
  %53 = load ptr, ptr %52, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !154
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !237
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !246

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !154
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !237
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !151
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !100
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !279
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !153
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = load i64, ptr %5, align 8, !tbaa !237
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !248

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !154
  %24 = load i64, ptr %10, align 8, !tbaa !237
  %25 = load i64, ptr %11, align 8, !tbaa !151
  %26 = load ptr, ptr %17, align 8, !tbaa !153
  store ptr %4, ptr %3, align 8, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !151
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !153
  %33 = load ptr, ptr %3, align 8, !tbaa !154
  %34 = load ptr, ptr %33, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !249

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !100
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !280
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !154
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !151
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !153
  store ptr %53, ptr %0, align 8, !tbaa !154
  store i64 %52, ptr %5, align 8, !tbaa !237
  store i64 %51, ptr %55, align 8, !tbaa !151
  store ptr %50, ptr %57, align 8, !tbaa !153
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !281

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !100
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !282

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !147
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !283

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = load ptr, ptr %0, align 8, !tbaa !146
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !284

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %5, !prof !286

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  resume { ptr, i32 } %6
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !122
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8, !prof !149

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = getelementptr ptr, ptr %10, i64 %6
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !163
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !128
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %20 = tail call noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr %20, ptr %3, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = load i64, ptr %5, align 8, !tbaa !122
  %25 = getelementptr ptr, ptr %23, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !122
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %26, !prof !149

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !145
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !287
  %11 = load ptr, ptr %0, align 8, !tbaa !145
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !128
  store ptr %11, ptr %10, align 8, !tbaa !288
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %10, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !163
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %10, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !289
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %23, label %17, !prof !164

17:                                               ; preds = %5
  %18 = mul i64 %13, 80
  %19 = load ptr, ptr %11, align 8, !tbaa !100
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %18), !prof !287
  br label %23

23:                                               ; preds = %5, %17
  %24 = phi ptr [ %22, %17 ], [ null, %5 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %10, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !131
  br label %33

26:                                               ; preds = %1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = getelementptr ptr, ptr %28, i64 %3
  %30 = getelementptr ptr, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = add i64 %3, -1
  store i64 %32, ptr %2, align 8, !tbaa !122
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi ptr [ %10, %23 ], [ %31, %26 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !122
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !147
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !290

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %13, ptr %12, align 8, !tbaa !103
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !122
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !149
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !149

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !146
  %24 = load i64, ptr %4, align 8, !tbaa !122
  %25 = load i64, ptr %6, align 8, !tbaa !147
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !130
  %28 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %28, ptr %0, align 8, !tbaa !146
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !122
  store i64 %30, ptr %4, align 8, !tbaa !122
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !147
  store i64 %32, ptr %6, align 8, !tbaa !147
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  store ptr %34, ptr %26, align 8, !tbaa !130
  store ptr %23, ptr %3, align 8, !tbaa !146
  store i64 %24, ptr %29, align 8, !tbaa !122
  store i64 %25, ptr %31, align 8, !tbaa !147
  store ptr %27, ptr %33, align 8, !tbaa !130
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !149

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !147
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !130
  %52 = load ptr, ptr %3, align 8, !tbaa !146
  %53 = load ptr, ptr %52, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !233 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !122
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !234

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !146
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !122
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !147
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !130
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = load i64, ptr %9, align 8, !tbaa !122
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE6insertEPS5_PKS5_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !146
  %28 = load i64, ptr %6, align 8, !tbaa !122
  %29 = load i64, ptr %7, align 8, !tbaa !147
  %30 = load ptr, ptr %8, align 8, !tbaa !130
  %31 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %31, ptr %0, align 8, !tbaa !146
  %32 = load i64, ptr %14, align 8, !tbaa !122
  store i64 %32, ptr %6, align 8, !tbaa !122
  %33 = load i64, ptr %15, align 8, !tbaa !147
  store i64 %33, ptr %7, align 8, !tbaa !147
  %34 = load ptr, ptr %21, align 8, !tbaa !130
  store ptr %34, ptr %8, align 8, !tbaa !130
  store ptr %27, ptr %5, align 8, !tbaa !146
  store i64 %28, ptr %14, align 8, !tbaa !122
  store i64 %29, ptr %15, align 8, !tbaa !147
  store ptr %30, ptr %21, align 8, !tbaa !130
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !147
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !130
  %50 = load ptr, ptr %5, align 8, !tbaa !146
  %51 = load ptr, ptr %50, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !226

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !100
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !291
  store ptr %65, ptr %8, align 8, !tbaa !130
  store i64 %3, ptr %7, align 8, !tbaa !147
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE6insertEPS5_PKS5_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !122
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !147
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !130
  %28 = load i64, ptr %12, align 8, !tbaa !122
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !103
  store ptr %34, ptr %32, align 8, !tbaa !103
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !292

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !146
  store ptr %42, ptr %5, align 8, !tbaa !146
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !122
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !147
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !100
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !130
  %51 = load i64, ptr %43, align 8, !tbaa !122
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !130
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE6insertEPS5_PKS5_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !130
  %56 = load i64, ptr %43, align 8, !tbaa !122
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE6insertEPS5_PKS5_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !130
  %60 = load i64, ptr %43, align 8, !tbaa !122
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !130
  %63 = load i64, ptr %12, align 8, !tbaa !122
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE6insertEPS5_PKS5_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !146
  %67 = load i64, ptr %12, align 8, !tbaa !122
  %68 = load i64, ptr %19, align 8, !tbaa !147
  %69 = load ptr, ptr %15, align 8, !tbaa !130
  %70 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %70, ptr %0, align 8, !tbaa !146
  %71 = load i64, ptr %43, align 8, !tbaa !122
  store i64 %71, ptr %12, align 8, !tbaa !122
  %72 = load i64, ptr %44, align 8, !tbaa !147
  store i64 %72, ptr %19, align 8, !tbaa !147
  %73 = load ptr, ptr %50, align 8, !tbaa !130
  store ptr %73, ptr %15, align 8, !tbaa !130
  store ptr %66, ptr %5, align 8, !tbaa !146
  store i64 %67, ptr %43, align 8, !tbaa !122
  store i64 %68, ptr %44, align 8, !tbaa !147
  store ptr %69, ptr %50, align 8, !tbaa !130
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !147
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !130
  %89 = load ptr, ptr %5, align 8, !tbaa !146
  %90 = load ptr, ptr %89, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !293

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !294

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !295

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !122
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !147
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %12, ptr %0, align 8, !tbaa !146
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !122
  store i64 %14, ptr %6, align 8, !tbaa !122
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !147
  store i64 %16, ptr %8, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  store ptr %18, ptr %10, align 8, !tbaa !130
  store ptr %5, ptr %3, align 8, !tbaa !146
  store i64 %7, ptr %13, align 8, !tbaa !122
  store i64 %9, ptr %15, align 8, !tbaa !147
  store ptr %11, ptr %17, align 8, !tbaa !130
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !149

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !289
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !149

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !288
  tail call void @_ZN11xalanc_1_1014XalanNamespaceC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = load i64, ptr %4, align 8, !tbaa !163
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !163
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %22 = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !288
  %25 = load i64, ptr %4, align 8, !tbaa !163
  %26 = load i64, ptr %6, align 8, !tbaa !289
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %29, ptr %0, align 8, !tbaa !288
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !163
  store i64 %31, ptr %4, align 8, !tbaa !163
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !289
  store i64 %33, ptr %6, align 8, !tbaa !289
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !131
  store ptr %35, ptr %27, align 8, !tbaa !131
  store ptr %24, ptr %3, align 8, !tbaa !288
  store i64 %25, ptr %30, align 8, !tbaa !163
  store i64 %26, ptr %32, align 8, !tbaa !289
  store ptr %28, ptr %34, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  store ptr %2, ptr %0, align 8, !tbaa !288
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !163
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !288
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !163
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !289
  %16 = mul i64 %13, 80
  %17 = load ptr, ptr %2, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !131
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = load i64, ptr %9, align 8, !tbaa !163
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !288
  %28 = load i64, ptr %6, align 8, !tbaa !163
  %29 = load i64, ptr %7, align 8, !tbaa !289
  %30 = load ptr, ptr %8, align 8, !tbaa !131
  %31 = load ptr, ptr %5, align 8, !tbaa !288
  store ptr %31, ptr %0, align 8, !tbaa !288
  %32 = load i64, ptr %14, align 8, !tbaa !163
  store i64 %32, ptr %6, align 8, !tbaa !163
  %33 = load i64, ptr %15, align 8, !tbaa !289
  store i64 %33, ptr %7, align 8, !tbaa !289
  %34 = load ptr, ptr %21, align 8, !tbaa !131
  store ptr %34, ptr %8, align 8, !tbaa !131
  store ptr %27, ptr %5, align 8, !tbaa !288
  store i64 %28, ptr %14, align 8, !tbaa !163
  store i64 %29, ptr %15, align 8, !tbaa !289
  store ptr %30, ptr %21, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = mul i64 %3, 80
  %41 = load ptr, ptr %2, align 8, !tbaa !100
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !131
  store i64 %3, ptr %7, align 8, !tbaa !289
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !289
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %23, label %5, !prof !164

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %17, label %12, !prof !149

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %15, %12 ], [ %7, %5 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %13, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %13, i64 1
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %17, label %12, !prof !149, !llvm.loop !296

17:                                               ; preds = %12, %5
  %18 = load ptr, ptr %6, align 8, !tbaa !131
  %19 = load ptr, ptr %0, align 8, !tbaa !288
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %23 unwind label %24, !prof !158

23:                                               ; preds = %17, %1
  ret void

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanNamespaceC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %6 unwind label %7, !prof !149

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  resume { ptr, i32 } %8
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 80
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %107, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !163
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !289
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %107, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !131
  %28 = load i64, ptr %12, align 8, !tbaa !163
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !288
  tail call void @_ZN11xalanc_1_1014XalanNamespaceC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef nonnull align 8 dereferenceable(80) %31, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !163
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !163
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %107, label %30, !llvm.loop !297

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !288
  store ptr %42, ptr %5, align 8, !tbaa !288
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !163
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !289
  %45 = mul i64 %14, 80
  %46 = load ptr, ptr %42, align 8, !tbaa !100
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !131
  %51 = load i64, ptr %43, align 8, !tbaa !163
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !131
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !131
  %56 = load i64, ptr %43, align 8, !tbaa !163
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !131
  %60 = load i64, ptr %43, align 8, !tbaa !163
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !131
  %63 = load i64, ptr %12, align 8, !tbaa !163
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !288
  %67 = load i64, ptr %12, align 8, !tbaa !163
  %68 = load i64, ptr %19, align 8, !tbaa !289
  %69 = load ptr, ptr %15, align 8, !tbaa !131
  %70 = load ptr, ptr %5, align 8, !tbaa !288
  store ptr %70, ptr %0, align 8, !tbaa !288
  %71 = load i64, ptr %43, align 8, !tbaa !163
  store i64 %71, ptr %12, align 8, !tbaa !163
  %72 = load i64, ptr %44, align 8, !tbaa !289
  store i64 %72, ptr %19, align 8, !tbaa !289
  %73 = load ptr, ptr %50, align 8, !tbaa !131
  store ptr %73, ptr %15, align 8, !tbaa !131
  store ptr %66, ptr %5, align 8, !tbaa !288
  store i64 %67, ptr %43, align 8, !tbaa !163
  store i64 %68, ptr %44, align 8, !tbaa !289
  store ptr %69, ptr %50, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %107

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !298

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !299

94:                                               ; preds = %90, %84
  %95 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014XalanNamespaceEPS4_EET0_T_S9_S8_(ptr noundef %2, ptr noundef %82, ptr noundef %1)
  br label %107

96:                                               ; preds = %76
  %97 = sub nsw i64 0, %9
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %17, i64 %97
  %99 = icmp eq ptr %3, %2
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %101, i64 1
  %103 = icmp eq ptr %102, %17
  br i1 %103, label %104, label %100, !llvm.loop !300

104:                                              ; preds = %100, %96
  %105 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014XalanNamespaceES5_EET0_T_S7_S6_(ptr noundef %1, ptr noundef %98, ptr noundef %17)
  %106 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014XalanNamespaceEPS4_EET0_T_S9_S8_(ptr noundef %2, ptr noundef %3, ptr noundef %1)
  br label %107

107:                                              ; preds = %30, %24, %65, %104, %94, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !288
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !288
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !163
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !289
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %12, ptr %0, align 8, !tbaa !288
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !163
  store i64 %14, ptr %6, align 8, !tbaa !163
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !289
  store i64 %16, ptr %8, align 8, !tbaa !289
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !131
  store ptr %18, ptr %10, align 8, !tbaa !131
  store ptr %5, ptr %3, align 8, !tbaa !288
  store i64 %7, ptr %13, align 8, !tbaa !163
  store i64 %9, ptr %15, align 8, !tbaa !289
  store ptr %11, ptr %17, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1014XalanNamespaceEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 80
  br label %12

10:                                               ; preds = %28, %3
  %11 = phi ptr [ %2, %3 ], [ %30, %28 ]
  ret ptr %11

12:                                               ; preds = %8, %28
  %13 = phi i64 [ %31, %28 ], [ %9, %8 ]
  %14 = phi ptr [ %30, %28 ], [ %2, %8 ]
  %15 = phi ptr [ %29, %28 ], [ %0, %8 ]
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !176
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %14, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !176
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %14, i64 0, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %15, i64 0, i32 1
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %15, i64 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !176
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %14, i64 0, i32 1, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !176
  br label %28

28:                                               ; preds = %12, %17
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %15, i64 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %14, i64 1
  %31 = add nsw i64 %13, -1
  %32 = icmp sgt i64 %13, 1
  br i1 %32, label %12, label %10, !llvm.loop !301
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014XalanNamespaceES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 80
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ %29, %28 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %28 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %28 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %13, i64 -1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %12, i64 -1
  %16 = icmp eq ptr %13, %12
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %19 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %13, i64 -1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !176
  %21 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %12, i64 -1, i32 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !176
  %22 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %12, i64 -1, i32 1
  %23 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %13, i64 -1, i32 1
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
  %25 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %13, i64 -1, i32 1, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !176
  %27 = getelementptr %"class.xalanc_1_10::XalanNamespace", ptr %12, i64 -1, i32 1, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !176
  br label %28

28:                                               ; preds = %10, %17
  %29 = add nsw i64 %11, -1
  %30 = icmp sgt i64 %11, 1
  br i1 %30, label %10, label %31, !llvm.loop !302

31:                                               ; preds = %28, %3
  %32 = phi ptr [ %2, %3 ], [ %15, %28 ]
  ret ptr %32
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !122
  %7 = getelementptr ptr, ptr %4, i64 %6
  %8 = getelementptr ptr, ptr %7, i64 -1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !163
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !163
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %14, i64 %12
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %14, i64 %12, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #16
  %17 = load i64, ptr %10, align 8, !tbaa !163
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store ptr %9, ptr %2, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %21 = load i64, ptr %5, align 8, !tbaa !122
  %22 = add i64 %21, -1
  store i64 %22, ptr %5, align 8, !tbaa !122
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !169 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %5, %2
  %6 = load i64, ptr %3, align 8, !tbaa !163
  %7 = add i64 %6, -1
  store i64 %7, ptr %3, align 8, !tbaa !163
  %8 = load ptr, ptr %4, align 8, !tbaa !131
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %8, i64 %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %8, i64 %7, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  %11 = load i64, ptr %3, align 8, !tbaa !163
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %5, label %13, !prof !164, !llvm.loop !303

13:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !195
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !305

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = load ptr, ptr %0, align 8, !tbaa !193
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !306

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 !prof !144 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !194
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8, !prof !307

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = getelementptr ptr, ptr %10, i64 %6
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !219
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !116
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %21, label %19, !prof !149

19:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %20 = tail call noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr %20, ptr %3, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = load i64, ptr %5, align 8, !tbaa !194
  %25 = getelementptr ptr, ptr %23, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !194
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %26, !prof !198

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !192
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !197
  %11 = load ptr, ptr %0, align 8, !tbaa !192
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !116
  store ptr %11, ptr %10, align 8, !tbaa !308
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %10, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !219
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %10, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !309
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %23, label %17, !prof !196

17:                                               ; preds = %5
  %18 = mul i64 %13, 96
  %19 = load ptr, ptr %11, align 8, !tbaa !100
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %18), !prof !197
  br label %23

23:                                               ; preds = %5, %17
  %24 = phi ptr [ %22, %17 ], [ null, %5 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %10, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !120
  br label %33

26:                                               ; preds = %1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !119
  %29 = getelementptr ptr, ptr %28, i64 %3
  %30 = getelementptr ptr, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = add i64 %3, -1
  store i64 %32, ptr %2, align 8, !tbaa !194
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi ptr [ %10, %23 ], [ %31, %26 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !194
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !195
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !310

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %13, ptr %12, align 8, !tbaa !103
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !194
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !193
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !193
  %24 = load i64, ptr %4, align 8, !tbaa !194
  %25 = load i64, ptr %6, align 8, !tbaa !195
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  %28 = load ptr, ptr %3, align 8, !tbaa !193
  store ptr %28, ptr %0, align 8, !tbaa !193
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !194
  store i64 %30, ptr %4, align 8, !tbaa !194
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !195
  store i64 %32, ptr %6, align 8, !tbaa !195
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  store ptr %34, ptr %26, align 8, !tbaa !119
  store ptr %23, ptr %3, align 8, !tbaa !193
  store i64 %24, ptr %29, align 8, !tbaa !194
  store i64 %25, ptr %31, align 8, !tbaa !195
  store ptr %27, ptr %33, align 8, !tbaa !119
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !195
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !119
  %52 = load ptr, ptr %3, align 8, !tbaa !193
  %53 = load ptr, ptr %52, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !193
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !194
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !198

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !193
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !194
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !195
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !119
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = load i64, ptr %9, align 8, !tbaa !194
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !193
  %28 = load i64, ptr %6, align 8, !tbaa !194
  %29 = load i64, ptr %7, align 8, !tbaa !195
  %30 = load ptr, ptr %8, align 8, !tbaa !119
  %31 = load ptr, ptr %5, align 8, !tbaa !193
  store ptr %31, ptr %0, align 8, !tbaa !193
  %32 = load i64, ptr %14, align 8, !tbaa !194
  store i64 %32, ptr %6, align 8, !tbaa !194
  %33 = load i64, ptr %15, align 8, !tbaa !195
  store i64 %33, ptr %7, align 8, !tbaa !195
  %34 = load ptr, ptr %21, align 8, !tbaa !119
  store ptr %34, ptr %8, align 8, !tbaa !119
  store ptr %27, ptr %5, align 8, !tbaa !193
  store i64 %28, ptr %14, align 8, !tbaa !194
  store i64 %29, ptr %15, align 8, !tbaa !195
  store ptr %30, ptr %21, align 8, !tbaa !119
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !195
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !119
  %50 = load ptr, ptr %5, align 8, !tbaa !193
  %51 = load ptr, ptr %50, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !196

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !100
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !197
  store ptr %65, ptr %8, align 8, !tbaa !119
  store i64 %3, ptr %7, align 8, !tbaa !195
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !194
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !195
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !119
  %28 = load i64, ptr %12, align 8, !tbaa !194
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !103
  store ptr %34, ptr %32, align 8, !tbaa !103
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !311

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !193
  store ptr %42, ptr %5, align 8, !tbaa !193
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !194
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !195
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !100
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !119
  %51 = load i64, ptr %43, align 8, !tbaa !194
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !119
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !119
  %56 = load i64, ptr %43, align 8, !tbaa !194
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !119
  %60 = load i64, ptr %43, align 8, !tbaa !194
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !119
  %63 = load i64, ptr %12, align 8, !tbaa !194
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !193
  %67 = load i64, ptr %12, align 8, !tbaa !194
  %68 = load i64, ptr %19, align 8, !tbaa !195
  %69 = load ptr, ptr %15, align 8, !tbaa !119
  %70 = load ptr, ptr %5, align 8, !tbaa !193
  store ptr %70, ptr %0, align 8, !tbaa !193
  %71 = load i64, ptr %43, align 8, !tbaa !194
  store i64 %71, ptr %12, align 8, !tbaa !194
  %72 = load i64, ptr %44, align 8, !tbaa !195
  store i64 %72, ptr %19, align 8, !tbaa !195
  %73 = load ptr, ptr %50, align 8, !tbaa !119
  store ptr %73, ptr %15, align 8, !tbaa !119
  store ptr %66, ptr %5, align 8, !tbaa !193
  store i64 %67, ptr %43, align 8, !tbaa !194
  store i64 %68, ptr %44, align 8, !tbaa !195
  store ptr %69, ptr %50, align 8, !tbaa !119
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !195
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !119
  %89 = load ptr, ptr %5, align 8, !tbaa !193
  %90 = load ptr, ptr %89, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !312

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !313

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !314

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !194
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !193
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !193
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !194
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = load ptr, ptr %3, align 8, !tbaa !193
  store ptr %12, ptr %0, align 8, !tbaa !193
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !194
  store i64 %14, ptr %6, align 8, !tbaa !194
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !195
  store i64 %16, ptr %8, align 8, !tbaa !195
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  store ptr %18, ptr %10, align 8, !tbaa !119
  store ptr %5, ptr %3, align 8, !tbaa !193
  store i64 %7, ptr %13, align 8, !tbaa !194
  store i64 %9, ptr %15, align 8, !tbaa !195
  store ptr %11, ptr %17, align 8, !tbaa !119
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !198

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !219
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !309
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %20, !prof !148

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !308
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %11, i64 %5, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %1, i64 0, i32 1, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !127
  store ptr %12, ptr %14, align 8, !tbaa !125, !alias.scope !315
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %11, i64 %5, i32 1, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !127, !alias.scope !315
  %18 = load i64, ptr %4, align 8, !tbaa !219
  %19 = add i64 %18, 1
  store i64 %19, ptr %4, align 8, !tbaa !219
  br label %42

20:                                               ; preds = %2
  %21 = icmp eq i64 %5, 0
  %22 = uitofp i64 %5 to double
  %23 = tail call double @llvm.fmuladd.f64(double %22, double 1.600000e+00, double 5.000000e-01)
  %24 = fptoui double %23 to i64
  %25 = select i1 %21, i64 1, i64 %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %26 = load ptr, ptr %0, align 8, !tbaa !308
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef %25)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %27 unwind label %40

27:                                               ; preds = %20
  %28 = load ptr, ptr %0, align 8, !tbaa !308
  %29 = load i64, ptr %4, align 8, !tbaa !219
  %30 = load i64, ptr %6, align 8, !tbaa !309
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !120
  %33 = load ptr, ptr %3, align 8, !tbaa !308
  store ptr %33, ptr %0, align 8, !tbaa !308
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !219
  store i64 %35, ptr %4, align 8, !tbaa !219
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !309
  store i64 %37, ptr %6, align 8, !tbaa !309
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !120
  store ptr %39, ptr %31, align 8, !tbaa !120
  store ptr %28, ptr %3, align 8, !tbaa !308
  store i64 %29, ptr %34, align 8, !tbaa !219
  store i64 %30, ptr %36, align 8, !tbaa !309
  store ptr %32, ptr %38, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %42

40:                                               ; preds = %20
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %41

42:                                               ; preds = %27, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  store ptr %2, ptr %0, align 8, !tbaa !308
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !219
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !308
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !219
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !309
  %16 = mul i64 %13, 96
  %17 = load ptr, ptr %2, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !120
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !120
  %24 = load i64, ptr %9, align 8, !tbaa !219
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !308
  %28 = load i64, ptr %6, align 8, !tbaa !219
  %29 = load i64, ptr %7, align 8, !tbaa !309
  %30 = load ptr, ptr %8, align 8, !tbaa !120
  %31 = load ptr, ptr %5, align 8, !tbaa !308
  store ptr %31, ptr %0, align 8, !tbaa !308
  %32 = load i64, ptr %14, align 8, !tbaa !219
  store i64 %32, ptr %6, align 8, !tbaa !219
  %33 = load i64, ptr %15, align 8, !tbaa !309
  store i64 %33, ptr %7, align 8, !tbaa !309
  %34 = load ptr, ptr %21, align 8, !tbaa !120
  store ptr %34, ptr %8, align 8, !tbaa !120
  store ptr %27, ptr %5, align 8, !tbaa !308
  store i64 %28, ptr %14, align 8, !tbaa !219
  store i64 %29, ptr %15, align 8, !tbaa !309
  store ptr %30, ptr %21, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = mul i64 %3, 96
  %41 = load ptr, ptr %2, align 8, !tbaa !100
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !120
  store i64 %3, ptr %7, align 8, !tbaa !309
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !309
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !196

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !149

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #16
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !149, !llvm.loop !318

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !120
  %18 = load ptr, ptr %0, align 8, !tbaa !308
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !205

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 96
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %163, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !219
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !309
  br i1 %18, label %21, label %43

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %163, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !120
  %28 = load i64, ptr %12, align 8, !tbaa !219
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %41, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %38, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !308
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef nonnull align 8 dereferenceable(80) %31, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %32, i64 0, i32 1
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %31, i64 0, i32 1, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !127
  store ptr %32, ptr %34, align 8, !tbaa !125, !alias.scope !319
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %32, i64 0, i32 1, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !127, !alias.scope !319
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %32, i64 1
  %39 = load i64, ptr %12, align 8, !tbaa !219
  %40 = add i64 %39, 1
  store i64 %40, ptr %12, align 8, !tbaa !219
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %31, i64 1
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %163, label %30, !llvm.loop !322

43:                                               ; preds = %11
  %44 = icmp ugt i64 %14, %20
  br i1 %44, label %45, label %80

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %46 = load ptr, ptr %0, align 8, !tbaa !308
  store ptr %46, ptr %5, align 8, !tbaa !308
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 1
  store i64 0, ptr %47, align 8, !tbaa !219
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 2
  store i64 %14, ptr %48, align 8, !tbaa !309
  %49 = mul i64 %14, 96
  %50 = load ptr, ptr %46, align 8, !tbaa !100
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef %49)
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %5, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !120
  %55 = load i64, ptr %47, align 8, !tbaa !219
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %53, i64 %55
  %57 = load ptr, ptr %15, align 8, !tbaa !120
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %57, ptr noundef %1)
          to label %58 unwind label %78

58:                                               ; preds = %45
  %59 = load ptr, ptr %54, align 8, !tbaa !120
  %60 = load i64, ptr %47, align 8, !tbaa !219
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %59, i64 %60
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %2, ptr noundef %3)
          to label %62 unwind label %78

62:                                               ; preds = %58
  %63 = load ptr, ptr %54, align 8, !tbaa !120
  %64 = load i64, ptr %47, align 8, !tbaa !219
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %63, i64 %64
  %66 = load ptr, ptr %15, align 8, !tbaa !120
  %67 = load i64, ptr %12, align 8, !tbaa !219
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %66, i64 %67
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %65, ptr noundef %1, ptr noundef %68)
          to label %69 unwind label %78

69:                                               ; preds = %62
  %70 = load ptr, ptr %0, align 8, !tbaa !308
  %71 = load i64, ptr %12, align 8, !tbaa !219
  %72 = load i64, ptr %19, align 8, !tbaa !309
  %73 = load ptr, ptr %15, align 8, !tbaa !120
  %74 = load ptr, ptr %5, align 8, !tbaa !308
  store ptr %74, ptr %0, align 8, !tbaa !308
  %75 = load i64, ptr %47, align 8, !tbaa !219
  store i64 %75, ptr %12, align 8, !tbaa !219
  %76 = load i64, ptr %48, align 8, !tbaa !309
  store i64 %76, ptr %19, align 8, !tbaa !309
  %77 = load ptr, ptr %54, align 8, !tbaa !120
  store ptr %77, ptr %15, align 8, !tbaa !120
  store ptr %70, ptr %5, align 8, !tbaa !308
  store i64 %71, ptr %47, align 8, !tbaa !219
  store i64 %72, ptr %48, align 8, !tbaa !309
  store ptr %73, ptr %54, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %163

78:                                               ; preds = %62, %58, %45
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %79

80:                                               ; preds = %43
  %81 = ptrtoint ptr %17 to i64
  %82 = ptrtoint ptr %1 to i64
  %83 = sub i64 %81, %82
  %84 = icmp ugt i64 %83, %8
  br i1 %84, label %117, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, ptr %2, i64 %83
  %87 = icmp eq ptr %86, %3
  br i1 %87, label %88, label %90

88:                                               ; preds = %90, %85
  %89 = icmp eq ptr %17, %1
  br i1 %89, label %98, label %94

90:                                               ; preds = %85, %90
  %91 = phi ptr [ %92, %90 ], [ %86, %85 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %91, i64 1
  %93 = icmp eq ptr %92, %3
  br i1 %93, label %88, label %90, !llvm.loop !323

94:                                               ; preds = %88, %94
  %95 = phi ptr [ %96, %94 ], [ %1, %88 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %95)
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %95, i64 1
  %97 = icmp eq ptr %96, %17
  br i1 %97, label %98, label %94, !llvm.loop !324

98:                                               ; preds = %94, %88
  %99 = icmp sgt i64 %83, 0
  br i1 %99, label %100, label %163

100:                                              ; preds = %98
  %101 = udiv exact i64 %83, 96
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ %115, %102 ], [ %101, %100 ]
  %104 = phi ptr [ %114, %102 ], [ %1, %100 ]
  %105 = phi ptr [ %113, %102 ], [ %2, %100 ]
  %106 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %104, ptr noundef nonnull align 8 dereferenceable(80) %105)
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %104, i64 0, i32 1
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !125
  store ptr %109, ptr %107, align 8, !tbaa !125
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %105, i64 0, i32 1, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !127
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %104, i64 0, i32 1, i32 1
  store i64 %111, ptr %112, align 8, !tbaa !127
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %105, i64 1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %104, i64 1
  %115 = add nsw i64 %103, -1
  %116 = icmp sgt i64 %103, 1
  br i1 %116, label %102, label %163, !llvm.loop !325

117:                                              ; preds = %80
  %118 = sub nsw i64 0, %9
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %17, i64 %118
  %120 = icmp eq ptr %3, %2
  br i1 %120, label %125, label %121

121:                                              ; preds = %117, %121
  %122 = phi ptr [ %123, %121 ], [ %119, %117 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %122)
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %122, i64 1
  %124 = icmp eq ptr %123, %17
  br i1 %124, label %125, label %121, !llvm.loop !326

125:                                              ; preds = %121, %117
  %126 = ptrtoint ptr %119 to i64
  %127 = sub i64 %126, %82
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = udiv exact i64 %127, 96
  br label %133

131:                                              ; preds = %133, %125
  %132 = icmp sgt i64 %8, 0
  br i1 %132, label %148, label %163

133:                                              ; preds = %129, %133
  %134 = phi i64 [ %146, %133 ], [ %130, %129 ]
  %135 = phi ptr [ %138, %133 ], [ %17, %129 ]
  %136 = phi ptr [ %137, %133 ], [ %119, %129 ]
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %136, i64 -1
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %135, i64 -1
  %139 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %138, ptr noundef nonnull align 8 dereferenceable(80) %137)
  %140 = getelementptr %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %135, i64 -1, i32 1
  %141 = getelementptr %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %136, i64 -1, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !125
  store ptr %142, ptr %140, align 8, !tbaa !125
  %143 = getelementptr %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %136, i64 -1, i32 1, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !127
  %145 = getelementptr %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %135, i64 -1, i32 1, i32 1
  store i64 %144, ptr %145, align 8, !tbaa !127
  %146 = add nsw i64 %134, -1
  %147 = icmp sgt i64 %134, 1
  br i1 %147, label %133, label %131, !llvm.loop !327

148:                                              ; preds = %131, %148
  %149 = phi i64 [ %161, %148 ], [ %9, %131 ]
  %150 = phi ptr [ %160, %148 ], [ %1, %131 ]
  %151 = phi ptr [ %159, %148 ], [ %2, %131 ]
  %152 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %150, ptr noundef nonnull align 8 dereferenceable(80) %151)
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %150, i64 0, i32 1
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %151, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !125
  store ptr %155, ptr %153, align 8, !tbaa !125
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %151, i64 0, i32 1, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !127
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %150, i64 0, i32 1, i32 1
  store i64 %157, ptr %158, align 8, !tbaa !127
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %151, i64 1
  %160 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %150, i64 1
  %161 = add nsw i64 %149, -1
  %162 = icmp sgt i64 %149, 1
  br i1 %162, label %148, label %163, !llvm.loop !325

163:                                              ; preds = %102, %148, %30, %98, %131, %24, %69, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.7", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !308
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !308
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !309
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = load ptr, ptr %3, align 8, !tbaa !308
  store ptr %12, ptr %0, align 8, !tbaa !308
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !219
  store i64 %14, ptr %6, align 8, !tbaa !219
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !309
  store i64 %16, ptr %8, align 8, !tbaa !309
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  store ptr %18, ptr %10, align 8, !tbaa !120
  store ptr %5, ptr %3, align 8, !tbaa !308
  store i64 %7, ptr %13, align 8, !tbaa !219
  store i64 %9, ptr %15, align 8, !tbaa !309
  store ptr %11, ptr %17, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !122
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !128
  %10 = mul i64 %9, %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr ptr, ptr %12, i64 %4
  %14 = getelementptr ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !163
  %18 = add i64 %17, %10
  br label %19

19:                                               ; preds = %2, %6
  %20 = phi i64 [ %18, %6 ], [ 0, %2 ]
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.2", ptr %1, i64 0, i32 2, i32 3
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %36, %25 ]
  %27 = load i64, ptr %23, align 8, !tbaa !128
  %28 = udiv i64 %26, %27
  %29 = load ptr, ptr %24, align 8, !tbaa !130
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = urem i64 %26, %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %31, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !131
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %34, i64 %32
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %35)
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %20
  br i1 %37, label %38, label %25, !llvm.loop !165

38:                                               ; preds = %25, %19
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !194
  %9 = add i64 %8, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !195
  %12 = icmp ult i64 %11, %9
  br i1 %12, label %13, label %14, !prof !198

13:                                               ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %9)
  br label %14

14:                                               ; preds = %1, %13
  %15 = load ptr, ptr %2, align 8, !tbaa !119
  %16 = load i64, ptr %7, align 8, !tbaa !194
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = icmp eq ptr %3, %17
  br i1 %18, label %40, label %19, !prof !202

19:                                               ; preds = %14, %34
  %20 = phi ptr [ %35, %34 ], [ %3, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !219
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !196

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %21, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %27
  %28 = load i64, ptr %22, align 8, !tbaa !219
  %29 = add i64 %28, -1
  store i64 %29, ptr %22, align 8, !tbaa !219
  %30 = load ptr, ptr %26, align 8, !tbaa !120
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %30, i64 %29
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %31) #16
  %32 = load i64, ptr %22, align 8, !tbaa !219
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %27, !prof !307, !llvm.loop !328

34:                                               ; preds = %27, %19
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %35 = getelementptr inbounds ptr, ptr %20, i64 1
  %36 = load ptr, ptr %2, align 8, !tbaa !119
  %37 = load i64, ptr %7, align 8, !tbaa !194
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = icmp eq ptr %35, %38
  br i1 %39, label %40, label %19, !prof !203, !llvm.loop !329

40:                                               ; preds = %34, %14
  %41 = phi i64 [ %16, %14 ], [ %37, %34 ]
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43, !prof !196

43:                                               ; preds = %40
  store i64 0, ptr %7, align 8, !tbaa !194
  br label %44

44:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !194
  %7 = getelementptr ptr, ptr %4, i64 %6
  %8 = getelementptr ptr, ptr %7, i64 -1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !219
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !219
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespacesStack::XalanNamespacesStackEntry", ptr %14, i64 %12
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #16
  %16 = load i64, ptr %10, align 8, !tbaa !219
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store ptr %9, ptr %2, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %20 = load i64, ptr %5, align 8, !tbaa !194
  %21 = add i64 %20, -1
  store i64 %21, ptr %5, align 8, !tbaa !194
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !189
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !189
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !212
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !208
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = load ptr, ptr %3, align 8, !tbaa !189
  store ptr %12, ptr %0, align 8, !tbaa !189
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !212
  store i64 %14, ptr %6, align 8, !tbaa !212
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !208
  store i64 %16, ptr %8, align 8, !tbaa !208
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !210
  store ptr %18, ptr %10, align 8, !tbaa !210
  store ptr %5, ptr %3, align 8, !tbaa !189
  store i64 %7, ptr %13, align 8, !tbaa !212
  store i64 %9, ptr %15, align 8, !tbaa !208
  store ptr %11, ptr %17, align 8, !tbaa !210
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !149

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !330 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !189
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !212
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !331

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !189
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !212
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !208
  %16 = load ptr, ptr %2, align 8, !tbaa !100
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13), !prof !332
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !210
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !210
  %23 = load i64, ptr %9, align 8, !tbaa !212
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43, !prof !333

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !189
  %27 = load i64, ptr %6, align 8, !tbaa !212
  %28 = load i64, ptr %7, align 8, !tbaa !208
  %29 = load ptr, ptr %8, align 8, !tbaa !210
  %30 = load ptr, ptr %5, align 8, !tbaa !189
  store ptr %30, ptr %0, align 8, !tbaa !189
  %31 = load i64, ptr %14, align 8, !tbaa !212
  store i64 %31, ptr %6, align 8, !tbaa !212
  %32 = load i64, ptr %15, align 8, !tbaa !208
  store i64 %32, ptr %7, align 8, !tbaa !208
  %33 = load ptr, ptr %20, align 8, !tbaa !210
  store ptr %33, ptr %8, align 8, !tbaa !210
  store ptr %26, ptr %5, align 8, !tbaa !189
  store i64 %27, ptr %14, align 8, !tbaa !212
  store i64 %28, ptr %15, align 8, !tbaa !208
  store ptr %29, ptr %20, align 8, !tbaa !210
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35, !prof !333

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !100
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #18
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !208
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !210
  %49 = load ptr, ptr %5, align 8, !tbaa !189
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #18
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !334

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !100
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !335
  store ptr %63, ptr %8, align 8, !tbaa !210
  store i64 %3, ptr %7, align 8, !tbaa !208
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !336 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %131, label %10, !prof !337

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !212
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !210
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !208
  br i1 %17, label %20, label %37, !prof !333

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23, !prof !337

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %131, label %25, !prof !338

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !210
  %27 = load i64, ptr %11, align 8, !tbaa !212
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add i64 %27, %6
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %35, %30 ], [ %2, %25 ]
  %32 = phi ptr [ %34, %30 ], [ %28, %25 ]
  %33 = load i8, ptr %31, align 1, !tbaa !213, !range !215, !noundef !182
  store i8 %33, ptr %32, align 1, !tbaa !213
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %129, label %30, !prof !339, !llvm.loop !340

37:                                               ; preds = %10
  %38 = icmp ugt i64 %13, %19
  br i1 %38, label %39, label %94

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %40 = load ptr, ptr %0, align 8, !tbaa !189
  store ptr %40, ptr %5, align 8, !tbaa !189
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %41, align 8, !tbaa !212
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %42, align 8, !tbaa !208
  %43 = load ptr, ptr %40, align 8, !tbaa !100
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %13)
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !210
  %48 = load i64, ptr %41, align 8, !tbaa !212
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, ptr noundef %50, ptr noundef %1)
          to label %51 unwind label %80

51:                                               ; preds = %39
  %52 = load ptr, ptr %47, align 8, !tbaa !210
  %53 = load i64, ptr %41, align 8, !tbaa !212
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %2, ptr noundef %3)
          to label %55 unwind label %80

55:                                               ; preds = %51
  %56 = load ptr, ptr %47, align 8, !tbaa !210
  %57 = load i64, ptr %41, align 8, !tbaa !212
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = load ptr, ptr %14, align 8, !tbaa !210
  %60 = load i64, ptr %11, align 8, !tbaa !212
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %58, ptr noundef %1, ptr noundef %61)
          to label %62 unwind label %80

62:                                               ; preds = %55
  %63 = load ptr, ptr %0, align 8, !tbaa !189
  %64 = load i64, ptr %11, align 8, !tbaa !212
  %65 = load i64, ptr %18, align 8, !tbaa !208
  %66 = load ptr, ptr %14, align 8, !tbaa !210
  %67 = load ptr, ptr %5, align 8, !tbaa !189
  store ptr %67, ptr %0, align 8, !tbaa !189
  %68 = load i64, ptr %41, align 8, !tbaa !212
  store i64 %68, ptr %11, align 8, !tbaa !212
  %69 = load i64, ptr %42, align 8, !tbaa !208
  store i64 %69, ptr %18, align 8, !tbaa !208
  %70 = load ptr, ptr %47, align 8, !tbaa !210
  store ptr %70, ptr %14, align 8, !tbaa !210
  store ptr %63, ptr %5, align 8, !tbaa !189
  store i64 %64, ptr %41, align 8, !tbaa !212
  store i64 %65, ptr %42, align 8, !tbaa !208
  store ptr %66, ptr %47, align 8, !tbaa !210
  %71 = icmp eq i64 %65, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %63, align 8, !tbaa !100
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66)
          to label %79 unwind label %76

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #18
  unreachable

79:                                               ; preds = %62, %72
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %131

80:                                               ; preds = %55, %51, %39
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load i64, ptr %42, align 8, !tbaa !208
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %47, align 8, !tbaa !210
  %86 = load ptr, ptr %5, align 8, !tbaa !189
  %87 = load ptr, ptr %86, align 8, !tbaa !100
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #18
  unreachable

93:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %81

94:                                               ; preds = %37
  %95 = ptrtoint ptr %16 to i64
  %96 = ptrtoint ptr %1 to i64
  %97 = sub i64 %95, %96
  %98 = icmp ugt i64 %97, %8
  br i1 %98, label %113, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %2, i64 %97
  %101 = icmp eq ptr %100, %3
  br i1 %101, label %102, label %104

102:                                              ; preds = %104, %99
  %103 = icmp eq ptr %16, %1
  br i1 %103, label %112, label %108

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %106, %104 ], [ %100, %99 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %105)
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = icmp eq ptr %106, %3
  br i1 %107, label %102, label %104, !llvm.loop !341

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %110, %108 ], [ %1, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %109)
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = icmp eq ptr %110, %16
  br i1 %111, label %112, label %108, !llvm.loop !342

112:                                              ; preds = %108, %102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %97, i1 false)
  br label %131

113:                                              ; preds = %94
  %114 = sub i64 0, %8
  %115 = getelementptr inbounds i8, ptr %16, i64 %114
  %116 = icmp eq ptr %3, %2
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %118)
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = icmp eq ptr %119, %16
  br i1 %120, label %121, label %117, !llvm.loop !343

121:                                              ; preds = %117, %113
  %122 = icmp eq ptr %115, %1
  br i1 %122, label %128, label %123

123:                                              ; preds = %121
  %124 = ptrtoint ptr %115 to i64
  %125 = sub i64 %124, %96
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i8, ptr %16, i64 %126
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %127, ptr align 1 %1, i64 %125, i1 false)
  br label %128

128:                                              ; preds = %123, %121
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %131

129:                                              ; preds = %30
  %130 = sub i64 %29, %7
  store i64 %130, ptr %11, align 8, !tbaa !212
  br label %131

131:                                              ; preds = %23, %129, %79, %112, %128, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !344 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !212
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !208
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !345

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !213, !range !215, !noundef !182
  store i8 %13, ptr %12, align 1, !tbaa !213
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !212
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !346
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !189
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %22 unwind label %44, !prof !347

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !189
  %24 = load i64, ptr %4, align 8, !tbaa !212
  %25 = load i64, ptr %6, align 8, !tbaa !208
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !210
  %28 = load ptr, ptr %3, align 8, !tbaa !189
  store ptr %28, ptr %0, align 8, !tbaa !189
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !212
  store i64 %30, ptr %4, align 8, !tbaa !212
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !208
  store i64 %32, ptr %6, align 8, !tbaa !208
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !210
  store ptr %34, ptr %26, align 8, !tbaa !210
  store ptr %23, ptr %3, align 8, !tbaa !189
  store i64 %24, ptr %29, align 8, !tbaa !212
  store i64 %25, ptr %31, align 8, !tbaa !208
  store ptr %27, ptr %33, align 8, !tbaa !210
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !346

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !100
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !348

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !208
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !210
  %52 = load ptr, ptr %3, align 8, !tbaa !189
  %53 = load ptr, ptr %52, align 8, !tbaa !100
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!98}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!35 = !{ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 9439237}
!36 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE, i64 4}
!37 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, i64 8}
!38 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEED2Ev, i64 16}
!40 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, ptr @_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE9doReserveEm, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm, i64 3}
!51 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 3}
!52 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 3}
!53 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, i64 3}
!54 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 3}
!55 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, i64 6}
!56 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStackD2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry14addDeclarationERKNS_14XalanDOMStringEPKtj, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERN11xercesc_2_713MemoryManagerEmm, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 1048805}
!65 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack5clearEv, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, i64 2}
!66 = !{ptr @_ZN11xalanc_1_1020XalanNamespacesStack5clearEv, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 2}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!76 = !{ptr @_ZN11xalanc_1_1014XalanNamespaceC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 10}
!77 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE11getNewBlockEv, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE9push_backERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE10doPushBackERKS5_, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1014XalanNamespaceC2ERKS0_RN11xercesc_2_713MemoryManagerE, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1014XalanNamespaceC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 2}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 2}
!86 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv, i64 3}
!87 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, i64 3}
!88 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, i64 4}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm, i64 3}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerE, i64 4}
!91 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, i64 3}
!92 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 4}
!93 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, i64 3}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 34}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 34}
!98 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!99 = !{!"function_entry_count", i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"vtable pointer", !102, i64 0}
!102 = !{!"Simple C++ TBAA"}
!103 = !{!104, !104, i64 0}
!104 = !{!"any pointer", !105, i64 0}
!105 = !{!"omnipotent char", !102, i64 0}
!106 = !{!107, !104, i64 8}
!107 = !{!"_ZTSN11xalanc_1_1020XalanNamespacesStack19PrefixResolverProxyE", !108, i64 0, !104, i64 8, !104, i64 16}
!108 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!109 = !{!"function_entry_count", i64 3146413}
!110 = !{!"branch_weights", i32 0, i32 3146413}
!111 = !{!112, !104, i64 0}
!112 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_20XalanNamespacesStack25XalanNamespacesStackEntryEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !104, i64 0, !113, i64 8}
!113 = !{!"long", !105, i64 0}
!114 = !{!"branch_weights", i32 3146413, i32 0}
!115 = !{!"branch_weights", i32 2, i32 3146411}
!116 = !{!117, !113, i64 8}
!117 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !104, i64 0, !113, i64 8, !118, i64 16, !118, i64 48}
!118 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !104, i64 0, !113, i64 8, !113, i64 16, !104, i64 24}
!119 = !{!118, !104, i64 24}
!120 = !{!121, !104, i64 24}
!121 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !104, i64 0, !113, i64 8, !113, i64 16, !104, i64 24}
!122 = !{!123, !113, i64 8}
!123 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS5_EEEE", !104, i64 0, !113, i64 8, !113, i64 16, !104, i64 24}
!124 = !{!"branch_weights", i32 2097608, i32 3146411}
!125 = !{!126, !104, i64 0}
!126 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEE", !104, i64 0, !113, i64 8}
!127 = !{!126, !113, i64 8}
!128 = !{!129, !113, i64 8}
!129 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !104, i64 0, !113, i64 8, !123, i64 16, !123, i64 48}
!130 = !{!123, !104, i64 24}
!131 = !{!132, !104, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEEE", !104, i64 0, !113, i64 8, !113, i64 16, !104, i64 24}
!133 = !{!"branch_weights", i32 1048803, i32 2097608}
!134 = !{!"branch_weights", i32 0, i32 2097608}
!135 = distinct !{!135, !136, !137}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !{!"branch_weights", i32 -2146549659, i32 -1072341864}
!139 = distinct !{!139, !136, !137}
!140 = !{!107, !104, i64 16}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv: argument 0"}
!143 = distinct !{!143, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv"}
!144 = !{!"function_entry_count", i64 4}
!145 = !{!129, !104, i64 0}
!146 = !{!123, !104, i64 0}
!147 = !{!123, !113, i64 16}
!148 = !{!"branch_weights", i32 4, i32 0}
!149 = !{!"branch_weights", i32 1, i32 0}
!150 = distinct !{!150, !136, !137}
!151 = !{!152, !113, i64 16}
!152 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !104, i64 0, !113, i64 8, !113, i64 16, !104, i64 24}
!153 = !{!152, !104, i64 24}
!154 = !{!152, !104, i64 0}
!155 = !{!"function_entry_count", i64 8}
!156 = !{!"branch_weights", i32 8, i32 0}
!157 = !{!"branch_weights", i32 7, i32 1}
!158 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!159 = distinct !{!159, !136, !137}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl: argument 0"}
!162 = distinct !{!162, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl"}
!163 = !{!132, !113, i64 8}
!164 = !{!"branch_weights", i32 0, i32 1}
!165 = distinct !{!165, !136, !137}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl: argument 0"}
!168 = distinct !{!168, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl"}
!169 = !{!"function_entry_count", i64 1}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv: argument 0"}
!175 = distinct !{!175, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv"}
!176 = !{!177, !178, i64 32}
!177 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !152, i64 0, !178, i64 32}
!178 = !{!"int", !105, i64 0}
!179 = !{!"branch_weights", i32 1, i32 1}
!180 = distinct !{!180, !136, !137}
!181 = distinct !{!181, !136, !137}
!182 = !{}
!183 = !{!"branch_weights", i32 1, i32 7}
!184 = distinct !{!184, !136, !137}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv: argument 0"}
!187 = distinct !{!187, !"_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv"}
!188 = !{!112, !113, i64 8}
!189 = !{!190, !104, i64 0}
!190 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !104, i64 0, !113, i64 8, !113, i64 16, !104, i64 24}
!191 = !{!"function_entry_count", i64 3}
!192 = !{!117, !104, i64 0}
!193 = !{!118, !104, i64 0}
!194 = !{!118, !113, i64 8}
!195 = !{!118, !113, i64 16}
!196 = !{!"branch_weights", i32 0, i32 3}
!197 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!198 = !{!"branch_weights", i32 3, i32 0}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv: argument 0"}
!201 = distinct !{!201, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv"}
!202 = !{!"branch_weights", i32 1, i32 191}
!203 = !{!"branch_weights", i32 191, i32 1}
!204 = distinct !{!204, !136, !137}
!205 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!206 = distinct !{!206, !136, !137}
!207 = !{!"function_entry_count", i64 16}
!208 = !{!190, !113, i64 16}
!209 = !{!"branch_weights", i32 6, i32 10}
!210 = !{!190, !104, i64 24}
!211 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!212 = !{!190, !113, i64 8}
!213 = !{!214, !214, i64 0}
!214 = !{!"bool", !105, i64 0}
!215 = !{i8 0, i8 2}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv: argument 0"}
!218 = distinct !{!218, !"_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv"}
!219 = !{!121, !113, i64 8}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv: argument 0"}
!222 = distinct !{!222, !"_ZN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv: argument 0"}
!225 = distinct !{!225, !"_ZN11xalanc_1_1010XalanDequeINS_14XalanNamespaceENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv"}
!226 = !{!"branch_weights", i32 0, i32 2}
!227 = distinct !{!227, !136, !137}
!228 = distinct !{!228, !136, !137}
!229 = !{!"function_entry_count", i64 1048805}
!230 = !{!"branch_weights", i32 1, i32 1048804}
!231 = !{!"branch_weights", i32 5244019, i32 0}
!232 = !{!"VP", i32 0, i64 0, i64 4164343767629690428, i64 0}
!233 = !{!"function_entry_count", i64 2}
!234 = !{!"branch_weights", i32 2, i32 0}
!235 = !{!"function_entry_count", i64 41614}
!236 = !{!"branch_weights", i32 0, i32 41614}
!237 = !{!152, !113, i64 8}
!238 = !{!"branch_weights", i32 12, i32 41602}
!239 = !{!"branch_weights", i32 5, i32 7}
!240 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!241 = !{!"branch_weights", i32 354, i32 41248}
!242 = !{!"branch_weights", i32 40889, i32 359}
!243 = !{!"branch_weights", i32 40581, i32 1021}
!244 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!245 = !{!"function_entry_count", i64 22}
!246 = !{!"branch_weights", i32 64551590, i32 18}
!247 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!248 = !{!"branch_weights", i32 18, i32 0}
!249 = !{!"branch_weights", i32 4, i32 64551586}
!250 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!251 = !{!"function_entry_count", i64 42470003}
!252 = !{!"branch_weights", i32 52000, i32 42418003}
!253 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!254 = !{!"function_entry_count", i64 155828046}
!255 = !{!"branch_weights", i32 0, i32 155828046}
!256 = !{!"branch_weights", i32 133170777, i32 22657269}
!257 = !{!"branch_weights", i32 20, i32 133170757}
!258 = !{!"branch_weights", i32 1, i32 19024395}
!259 = !{!260, !260, i64 0}
!260 = !{!"short", !105, i64 0}
!261 = !{!"branch_weights", i32 19024395, i32 -26420601}
!262 = distinct !{!262, !136, !137}
!263 = !{!"branch_weights", i32 20748786, i32 1908483}
!264 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!265 = !{!"branch_weights", i32 20748786, i32 0}
!266 = !{!"branch_weights", i32 0, i32 20748786}
!267 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!268 = !{!"branch_weights", i32 0, i32 1908483}
!269 = !{!"branch_weights", i32 1, i32 1908482}
!270 = !{!"branch_weights", i32 1908482, i32 49797853}
!271 = distinct !{!271, !136, !137}
!272 = !{!"branch_weights", i32 1908482, i32 1}
!273 = distinct !{!273, !136, !137}
!274 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!275 = distinct !{!275, !136, !137}
!276 = !{!"function_entry_count", i64 124150652}
!277 = !{!"branch_weights", i32 124150652, i32 0}
!278 = !{!"function_entry_count", i64 64551586}
!279 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!280 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!281 = !{!"branch_weights", i32 42418193, i32 22133393}
!282 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!283 = !{!"branch_weights", i32 14, i32 2}
!284 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!285 = !{!"function_entry_count", i64 5}
!286 = !{!"branch_weights", i32 5, i32 0}
!287 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!288 = !{!132, !104, i64 0}
!289 = !{!132, !113, i64 16}
!290 = !{!"branch_weights", i32 2, i32 1}
!291 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!292 = distinct !{!292, !136, !137}
!293 = distinct !{!293, !136, !137}
!294 = distinct !{!294, !136, !137}
!295 = distinct !{!295, !136, !137}
!296 = distinct !{!296, !136, !137}
!297 = distinct !{!297, !136, !137}
!298 = distinct !{!298, !136, !137}
!299 = distinct !{!299, !136, !137}
!300 = distinct !{!300, !136, !137}
!301 = distinct !{!301, !136, !137}
!302 = distinct !{!302, !136, !137}
!303 = distinct !{!303, !136, !137}
!304 = !{!"function_entry_count", i64 6}
!305 = !{!"branch_weights", i32 0, i32 6}
!306 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!307 = !{!"branch_weights", i32 3, i32 1}
!308 = !{!121, !104, i64 0}
!309 = !{!121, !113, i64 16}
!310 = !{!"branch_weights", i32 6, i32 0}
!311 = distinct !{!311, !136, !137}
!312 = distinct !{!312, !136, !137}
!313 = distinct !{!313, !136, !137}
!314 = distinct !{!314, !136, !137}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl: argument 0"}
!317 = distinct !{!317, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl"}
!318 = distinct !{!318, !136, !137}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl: argument 0"}
!321 = distinct !{!321, !"_ZNK11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_14XalanNamespaceEEENS_10XalanDequeIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEEEplEl"}
!322 = distinct !{!322, !136, !137}
!323 = distinct !{!323, !136, !137}
!324 = distinct !{!324, !136, !137}
!325 = distinct !{!325, !136, !137}
!326 = distinct !{!326, !136, !137}
!327 = distinct !{!327, !136, !137}
!328 = distinct !{!328, !136, !137}
!329 = distinct !{!329, !136, !137}
!330 = !{!"function_entry_count", i64 35}
!331 = !{!"branch_weights", i32 10, i32 25}
!332 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!333 = !{!"branch_weights", i32 25, i32 0}
!334 = !{!"branch_weights", i32 0, i32 10}
!335 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!336 = !{!"function_entry_count", i64 25}
!337 = !{!"branch_weights", i32 0, i32 25}
!338 = !{!"branch_weights", i32 1, i32 199}
!339 = !{!"branch_weights", i32 199, i32 393}
!340 = distinct !{!340, !136, !137}
!341 = distinct !{!341, !136, !137}
!342 = distinct !{!342, !136, !137}
!343 = distinct !{!343, !136, !137}
!344 = !{!"function_entry_count", i64 4975155}
!345 = !{!"branch_weights", i32 4975121, i32 34}
!346 = !{!"branch_weights", i32 9, i32 25}
!347 = !{!"branch_weights", i32 34, i32 0}
!348 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
