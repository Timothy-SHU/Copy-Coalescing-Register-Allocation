; ModuleID = 'XalanDocumentPrefixResolver.cpp'
source_filename = "XalanDocumentPrefixResolver.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDocumentPrefixResolver::NamespaceNodesTreeWalker" = type { %"class.xalanc_1_10::TreeWalker", ptr }
%"class.xalanc_1_10::TreeWalker" = type { ptr }
%"class.xalanc_1_10::XalanDocumentPrefixResolver" = type { %"class.xalanc_1_10::PrefixResolver", %"class.xalanc_1_10::XalanMap", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanMapIterator.2" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.std::pair" = type { ptr, %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEEixERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_SA_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINSD_5EntryEEENS_9XalanListISM_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKSA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_mRKSN_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSF_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2ERKSQ_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2EmRKSN_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1027XalanDocumentPrefixResolverE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanDocumentPrefixResolverE, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolverD2Ev, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolverD0Ev, ptr @_ZNK11xalanc_1_1027XalanDocumentPrefixResolver21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1027XalanDocumentPrefixResolver6getURIEv, ptr @_ZNK11xalanc_1_1027XalanDocumentPrefixResolver16duplicateBindingERKNS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS4_EEEE] }, align 8
@_ZTVN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerD2Ev, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerD0Ev, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker9startNodeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker9startNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker7endNodeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker7endNodeEPNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XalanDocumentPrefixResolverE = dso_local constant [45 x i8] c"N11xalanc_1_1027XalanDocumentPrefixResolverE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1027XalanDocumentPrefixResolverE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanDocumentPrefixResolverE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8
@_ZTSN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE = dso_local constant [71 x i8] c"N11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE\00", align 1
@_ZTIN11xalanc_1_1010TreeWalkerE = external constant ptr
@_ZTIN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE, ptr @_ZTIN11xalanc_1_1010TreeWalkerE }, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1027XalanDocumentPrefixResolverC1EPKNS_13XalanDocumentERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolverC2EPKNS_13XalanDocumentERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1027XalanDocumentPrefixResolverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolverD2Ev
@_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerC1ERNS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerC2ERNS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEEE
@_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDocumentPrefixResolverC2EPKNS_13XalanDocumentERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanDocumentPrefixResolver::NamespaceNodesTreeWalker", align 8
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDocumentPrefixResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 3
  store float 7.500000e-01, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 4
  store i64 29, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 5
  store i64 0, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 6
  store ptr %3, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 6, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr %3, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 7, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %3, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 8, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  store i64 50, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef -1)
          to label %19 unwind label %24

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  invoke void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %20 unwind label %26

20:                                               ; preds = %19
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !40
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver::NamespaceNodesTreeWalker", ptr %5, i64 0, i32 1
  store ptr %6, ptr %21, align 8, !tbaa !59
  %22 = invoke noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
          to label %23 unwind label %28

23:                                               ; preds = %20
  call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void

24:                                               ; preds = %4
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %32

26:                                               ; preds = %19
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #15
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %25, %24 ]
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %6) #15
  call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %33
}

declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  invoke void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !62
  %13 = load ptr, ptr %12, align 8, !tbaa !40, !noalias !62
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !62
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !61, !noalias !62
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !65, !noalias !62
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !69, !noalias !62
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !62
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !65, !noalias !70
  %27 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !71
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !56, !noalias !71
  %31 = load ptr, ptr %30, align 8, !tbaa !40, !noalias !71
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !71
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !61, !noalias !71
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !65, !noalias !71
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !69, !noalias !71
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !71
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !74
  %43 = load ptr, ptr %22, align 8, !tbaa !43
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !75

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #15
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #15
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #15
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
  tail call void @__clang_call_terminate(ptr %57) #16
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDocumentPrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 align 2 !prof !39 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDocumentPrefixResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %3) #15
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDocumentPrefixResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 align 2 !prof !39 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDocumentPrefixResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %3) #15
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XalanDocumentPrefixResolver21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !39 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.2", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %1, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15, !noalias !78
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !78
  %6 = load ptr, ptr %3, align 8, !tbaa !81, !noalias !78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15, !noalias !78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 1, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !56, !noalias !83
  %13 = load ptr, ptr %12, align 8, !tbaa !40, !noalias !83
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !83
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !83
  store ptr %16, ptr %7, align 8, !tbaa !61, !noalias !83
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !65, !noalias !83
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !69, !noalias !83
  br label %19

19:                                               ; preds = %2, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !83
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !74
  %24 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !90
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef nonnull align 8 dereferenceable(36) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30)
  br label %41

35:                                               ; preds = %22
  %36 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 0, i32 1
  %37 = load ptr, ptr %0, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %36)
  br label %41

41:                                               ; preds = %27, %35, %19
  %42 = phi ptr [ null, %19 ], [ %34, %27 ], [ %40, %35 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1027XalanDocumentPrefixResolver6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(184) %0) unnamed_addr #6 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XalanDocumentPrefixResolver16duplicateBindingERKNS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS4_EEEE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerC2ERNS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver::NamespaceNodesTreeWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !59
  ret void
}

declare void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker9startNodeEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !39 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !40
  %12 = getelementptr inbounds ptr, ptr %11, i64 11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentPrefixResolver::NamespaceNodesTreeWalker", ptr %0, i64 0, i32 1
  br label %22

22:                                               ; preds = %20, %36
  %23 = phi i32 [ 0, %20 ], [ %37, %36 ]
  %24 = load ptr, ptr %14, align 8, !tbaa !40
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %23)
  %28 = call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %27)
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load ptr, ptr %21, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %31 = load ptr, ptr %27, align 8, !tbaa !40
  %32 = getelementptr inbounds ptr, ptr %31, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef nonnull align 8 dereferenceable(36) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %27)
  store ptr %34, ptr %3, align 8, !tbaa !59
  %35 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %30, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %27, ptr %4, align 8, !tbaa !59
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %36

36:                                               ; preds = %29, %22
  %37 = add nuw i32 %23, 1
  %38 = icmp eq i32 %37, %18
  br i1 %38, label %39, label %22, !llvm.loop !96

39:                                               ; preds = %36, %10, %2
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 !prof !97 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !98
  %6 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !59
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !99
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11, !prof !101
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !99
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19, !prof !101
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !102
  %23 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %12, i32 noundef %14, ptr noundef %20, i32 noundef %22)
  br i1 %23, label %27, label %24, !prof !101

24:                                               ; preds = %1
  %25 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !59
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i1 [ true, %1 ], [ %26, %24 ]
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.2", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.2", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !105
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !56, !noalias !105
  %11 = load ptr, ptr %10, align 8, !tbaa !40, !noalias !105
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !105
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !105
  store ptr %14, ptr %5, align 8, !tbaa !61, !noalias !105
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !65, !noalias !105
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !69, !noalias !105
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !61, !noalias !105
  %19 = load ptr, ptr %3, align 8, !tbaa !81
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKSA_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.2") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !81
  store ptr %22, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !81
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker9startNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !39 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker7endNodeEPKNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 !prof !39 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalker7endNodeEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 !prof !39 {
  ret i1 false
}

declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = load ptr, ptr %0, align 8, !tbaa !114
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !115

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !39 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !65, !noalias !116
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !119
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !56, !noalias !119
  %14 = load ptr, ptr %13, align 8, !tbaa !40, !noalias !119
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !119
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !61, !noalias !119
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !65, !noalias !119
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !69, !noalias !119
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !119
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !65, !noalias !122
  %27 = load ptr, ptr %0, align 8, !tbaa !56
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !125

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = load ptr, ptr %0, align 8, !tbaa !56
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !61
  %46 = load ptr, ptr %0, align 8, !tbaa !56
  %47 = load ptr, ptr %46, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %59) #16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.2", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !55
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %10 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !130
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !56, !noalias !130
  %14 = load ptr, ptr %13, align 8, !tbaa !40, !noalias !130
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !130
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !130
  store ptr %17, ptr %7, align 8, !tbaa !61, !noalias !130
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !65, !noalias !130
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !69, !noalias !130
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !130
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !65, !noalias !130
  store ptr %23, ptr %2, align 8, !tbaa !81, !alias.scope !127
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_SA_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINSD_5EntryEEENS_9XalanListISM_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %24 = load i64, ptr %3, align 8, !tbaa !55
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !133

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !134
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #15
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !136

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !135
  %18 = load ptr, ptr %0, align 8, !tbaa !57
  %19 = load ptr, ptr %18, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %25) #16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_SA_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINSD_5EntryEEENS_9XalanListISM_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %3 = load ptr, ptr %1, align 8, !tbaa !81
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !137
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !56, !noalias !137
  %12 = load ptr, ptr %11, align 8, !tbaa !40, !noalias !137
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !137
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !137
  store ptr %15, ptr %6, align 8, !tbaa !61, !noalias !137
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !65, !noalias !137
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !69, !noalias !137
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !137
  %20 = load ptr, ptr %1, align 8, !tbaa !81
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %26, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !65
  %28 = load ptr, ptr %23, align 8, !tbaa !65
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %26, ptr %29, align 8, !tbaa !69
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  store ptr %31, ptr %25, align 8, !tbaa !69
  store ptr %19, ptr %23, align 8, !tbaa !65
  %32 = load ptr, ptr %30, align 8, !tbaa !69
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %20, ptr %33, align 8, !tbaa !65
  store ptr %20, ptr %30, align 8, !tbaa !69
  br label %34

34:                                               ; preds = %18, %22
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry", ptr %20, i64 0, i32 1
  store i8 1, ptr %35, align 8, !tbaa !140
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %37 = load i64, ptr %36, align 8, !tbaa !55
  %38 = add i64 %37, -1
  store i64 %38, ptr %36, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !142
  %9 = load ptr, ptr %8, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !143
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = load ptr, ptr %0, align 8, !tbaa !146
  %9 = load ptr, ptr %8, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = load ptr, ptr %2, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !99
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  %17 = load i16, ptr %16, align 2, !tbaa !147
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %7, %19
  %20 = phi i16 [ %27, %19 ], [ %17, %7 ]
  %21 = phi i64 [ %25, %19 ], [ 0, %7 ]
  %22 = phi ptr [ %26, %19 ], [ %16, %7 ]
  %23 = mul i64 %21, 5
  %24 = zext i16 %20 to i64
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds i16, ptr %22, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !147
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !149

29:                                               ; preds = %19
  %30 = add i64 %25, 1
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi i64 [ 1, %7 ], [ %30, %29 ]
  %33 = urem i64 %32, %9
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !135
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %35, i64 %33, i32 3
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %35, i64 %33, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !150
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %36, align 8, !tbaa !145
  br label %42

42:                                               ; preds = %40, %56
  %43 = phi i1 [ %61, %56 ], [ %39, %40 ]
  %44 = phi ptr [ %57, %56 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry", ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !140, !range !151, !noundef !70
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load ptr, ptr %2, align 8, !tbaa !59
  %51 = load ptr, ptr %45, align 8, !tbaa !74
  %52 = load ptr, ptr %51, align 8, !tbaa !152
  %53 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %52)
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load ptr, ptr %44, align 8, !tbaa !81
  store ptr %55, ptr %0, align 8, !tbaa !81
  br i1 %43, label %62, label %77

56:                                               ; preds = %49, %42
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %44, i64 1
  %58 = load ptr, ptr %36, align 8, !tbaa !145
  %59 = load i64, ptr %37, align 8, !tbaa !150
  %60 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %58, i64 %59
  %61 = icmp eq ptr %57, %60
  br i1 %61, label %62, label %42, !llvm.loop !154

62:                                               ; preds = %56, %31, %54, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !61, !noalias !158
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !56, !noalias !158
  %69 = load ptr, ptr %68, align 8, !tbaa !40, !noalias !158
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !158
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 32), !noalias !158
  store ptr %72, ptr %63, align 8, !tbaa !61, !noalias !158
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !65, !noalias !158
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !69, !noalias !158
  br label %75

75:                                               ; preds = %62, %66
  %76 = load ptr, ptr %63, align 8, !tbaa !61, !noalias !158
  store ptr %76, ptr %0, align 8, !tbaa !81, !alias.scope !155
  br label %77

77:                                               ; preds = %54, %75
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PKSA_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  store ptr %18, ptr %5, align 8, !tbaa !146
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_mRKSN_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !143
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !145
  %27 = load ptr, ptr %5, align 8, !tbaa !146
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !143
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !145
  %41 = load ptr, ptr %5, align 8, !tbaa !146
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #16
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !53
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !60
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !60
  %62 = load ptr, ptr %2, align 8, !tbaa !59
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !99
  %65 = icmp eq i64 %64, 0
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = select i1 %65, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %67
  %69 = load i16, ptr %68, align 2, !tbaa !147
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %60, %71
  %72 = phi i16 [ %79, %71 ], [ %69, %60 ]
  %73 = phi i64 [ %77, %71 ], [ 0, %60 ]
  %74 = phi ptr [ %78, %71 ], [ %68, %60 ]
  %75 = mul i64 %73, 5
  %76 = zext i16 %72 to i64
  %77 = add i64 %75, %76
  %78 = getelementptr inbounds i16, ptr %74, i64 1
  %79 = load i16, ptr %78, align 2, !tbaa !147
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %71, !llvm.loop !149

81:                                               ; preds = %71
  %82 = add i64 %77, 1
  br label %83

83:                                               ; preds = %81, %60
  %84 = phi i64 [ 1, %60 ], [ %82, %81 ]
  %85 = urem i64 %84, %61
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %87 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %86)
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  %91 = load ptr, ptr %90, align 8, !tbaa !40
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef 40)
  store ptr %94, ptr %6, align 8, !tbaa !74
  %95 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %95, align 8, !tbaa !140
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %96

96:                                               ; preds = %88, %83
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !61, !noalias !161
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load ptr, ptr %86, align 8, !tbaa !56, !noalias !161
  %102 = load ptr, ptr %101, align 8, !tbaa !40, !noalias !161
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8, !noalias !161
  %105 = call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %101, i64 noundef 32), !noalias !161
  store ptr %105, ptr %97, align 8, !tbaa !61, !noalias !161
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %105, i64 0, i32 2
  store ptr %105, ptr %106, align 8, !tbaa !65, !noalias !161
  %107 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %105, i64 0, i32 1
  store ptr %105, ptr %107, align 8, !tbaa !69, !noalias !161
  br label %108

108:                                              ; preds = %96, %100
  %109 = load ptr, ptr %97, align 8, !tbaa !61, !noalias !161
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !69, !noalias !164
  %112 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry", ptr %111, i64 0, i32 1
  store i8 0, ptr %112, align 8, !tbaa !140
  %113 = load ptr, ptr %111, align 8, !tbaa !74
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %115 = load ptr, ptr %2, align 8, !tbaa !59
  store ptr %115, ptr %113, align 8, !tbaa !59
  %116 = icmp eq ptr %3, null
  %117 = load ptr, ptr %111, align 8, !tbaa !74
  %118 = getelementptr inbounds %"struct.std::pair", ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %114, align 8, !tbaa !43
  br i1 %116, label %121, label %120

120:                                              ; preds = %108
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %118, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %119, i64 noundef 0)
  br label %123

121:                                              ; preds = %108
  store ptr %119, ptr %118, align 8, !tbaa !142
  %122 = getelementptr inbounds %"struct.std::pair", ptr %117, i64 0, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, i8 0, i64 24, i1 false)
  br label %123

123:                                              ; preds = %121, %120
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !61, !noalias !167
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load ptr, ptr %124, align 8, !tbaa !56, !noalias !167
  %130 = load ptr, ptr %129, align 8, !tbaa !40, !noalias !167
  %131 = getelementptr inbounds ptr, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8, !noalias !167
  %133 = call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %129, i64 noundef 32), !noalias !167
  store ptr %133, ptr %125, align 8, !tbaa !61, !noalias !167
  %134 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %133, i64 0, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !65, !noalias !167
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %133, i64 0, i32 1
  store ptr %133, ptr %135, align 8, !tbaa !69, !noalias !167
  br label %136

136:                                              ; preds = %123, %128
  %137 = load ptr, ptr %125, align 8, !tbaa !61, !noalias !167
  %138 = load ptr, ptr %97, align 8, !tbaa !61, !noalias !170
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load ptr, ptr %86, align 8, !tbaa !56, !noalias !170
  %142 = load ptr, ptr %141, align 8, !tbaa !40, !noalias !170
  %143 = getelementptr inbounds ptr, ptr %142, i64 2
  %144 = load ptr, ptr %143, align 8, !noalias !170
  %145 = call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %141, i64 noundef 32), !noalias !170
  store ptr %145, ptr %97, align 8, !tbaa !61, !noalias !170
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %145, i64 0, i32 2
  store ptr %145, ptr %146, align 8, !tbaa !65, !noalias !170
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %145, i64 0, i32 1
  store ptr %145, ptr %147, align 8, !tbaa !69, !noalias !170
  br label %148

148:                                              ; preds = %136, %140
  %149 = load ptr, ptr %97, align 8, !tbaa !61, !noalias !170
  %150 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !69, !noalias !173
  %152 = icmp eq ptr %137, %151
  br i1 %152, label %165, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !65
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %151, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !69
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %157, i64 0, i32 2
  store ptr %155, ptr %158, align 8, !tbaa !65
  %159 = load ptr, ptr %154, align 8, !tbaa !65
  %160 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %159, i64 0, i32 1
  store ptr %157, ptr %160, align 8, !tbaa !69
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %137, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !69
  store ptr %162, ptr %156, align 8, !tbaa !69
  store ptr %137, ptr %154, align 8, !tbaa !65
  %163 = load ptr, ptr %161, align 8, !tbaa !69
  %164 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %163, i64 0, i32 2
  store ptr %151, ptr %164, align 8, !tbaa !65
  store ptr %151, ptr %161, align 8, !tbaa !69
  br label %165

165:                                              ; preds = %148, %153
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !135
  %168 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %167, i64 %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %169 = load ptr, ptr %125, align 8, !tbaa !61, !noalias !176
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load ptr, ptr %124, align 8, !tbaa !56, !noalias !176
  %173 = load ptr, ptr %172, align 8, !tbaa !40, !noalias !176
  %174 = getelementptr inbounds ptr, ptr %173, i64 2
  %175 = load ptr, ptr %174, align 8, !noalias !176
  %176 = call noundef ptr %175(ptr noundef nonnull align 8 dereferenceable(8) %172, i64 noundef 32), !noalias !176
  store ptr %176, ptr %125, align 8, !tbaa !61, !noalias !176
  %177 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %176, i64 0, i32 2
  store ptr %176, ptr %177, align 8, !tbaa !65, !noalias !176
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %176, i64 0, i32 1
  store ptr %176, ptr %178, align 8, !tbaa !69, !noalias !176
  br label %179

179:                                              ; preds = %165, %171
  %180 = load ptr, ptr %125, align 8, !tbaa !61, !noalias !176
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %181 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !69, !noalias !179
  store ptr %182, ptr %7, align 8, !tbaa !81, !alias.scope !179
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %168, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  %183 = load i64, ptr %52, align 8, !tbaa !55
  %184 = add i64 %183, 1
  store i64 %184, ptr %52, align 8, !tbaa !55
  %185 = load ptr, ptr %125, align 8, !tbaa !61, !noalias !182
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %179
  %188 = load ptr, ptr %124, align 8, !tbaa !56, !noalias !182
  %189 = load ptr, ptr %188, align 8, !tbaa !40, !noalias !182
  %190 = getelementptr inbounds ptr, ptr %189, i64 2
  %191 = load ptr, ptr %190, align 8, !noalias !182
  %192 = call noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(8) %188, i64 noundef 32), !noalias !182
  store ptr %192, ptr %125, align 8, !tbaa !61, !noalias !182
  %193 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %192, i64 0, i32 2
  store ptr %192, ptr %193, align 8, !tbaa !65, !noalias !182
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %192, i64 0, i32 1
  store ptr %192, ptr %194, align 8, !tbaa !69, !noalias !182
  br label %195

195:                                              ; preds = %179, %187
  %196 = load ptr, ptr %125, align 8, !tbaa !61, !noalias !182
  %197 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !69, !noalias !185
  store ptr %198, ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_mRKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !60
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !134
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !135
  %22 = load i64, ptr %6, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !60
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !60
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !188

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %36 = load ptr, ptr %0, align 8, !tbaa !57
  store ptr %36, ptr %5, align 8, !tbaa !57
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !60
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !134
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !40
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !135
  %45 = load i64, ptr %37, align 8, !tbaa !60
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !135
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !135
  %50 = load i64, ptr %37, align 8, !tbaa !60
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_mRKSN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !135
  %54 = load i64, ptr %37, align 8, !tbaa !60
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !135
  %57 = load i64, ptr %6, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !57
  %61 = load i64, ptr %6, align 8, !tbaa !60
  %62 = load i64, ptr %13, align 8, !tbaa !134
  %63 = load ptr, ptr %9, align 8, !tbaa !135
  %64 = load ptr, ptr %5, align 8, !tbaa !57
  store ptr %64, ptr %0, align 8, !tbaa !57
  %65 = load i64, ptr %37, align 8, !tbaa !60
  store i64 %65, ptr %6, align 8, !tbaa !60
  %66 = load i64, ptr %38, align 8, !tbaa !134
  store i64 %66, ptr %13, align 8, !tbaa !134
  %67 = load ptr, ptr %44, align 8, !tbaa !135
  store ptr %67, ptr %9, align 8, !tbaa !135
  store ptr %60, ptr %5, align 8, !tbaa !57
  store i64 %61, ptr %37, align 8, !tbaa !60
  store i64 %62, ptr %38, align 8, !tbaa !134
  store ptr %63, ptr %44, align 8, !tbaa !135
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !189

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !190

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !191

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !192

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !193

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !191

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  store ptr %11, ptr %3, align 8, !tbaa !146
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2EmRKSN_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %90

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !143
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !145
  %20 = load ptr, ptr %3, align 8, !tbaa !146
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #16
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !61, !noalias !194
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !56, !noalias !194
  %34 = load ptr, ptr %33, align 8, !tbaa !40, !noalias !194
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !194
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %104

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !61, !noalias !194
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !65, !noalias !194
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !69, !noalias !194
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %84, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %84 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !59, !noalias !70
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !65, !noalias !70
  store ptr %47, ptr %4, align 8, !tbaa !81
  %48 = load ptr, ptr %29, align 8, !tbaa !61, !noalias !197
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !56, !noalias !197
  %52 = load ptr, ptr %51, align 8, !tbaa !40, !noalias !197
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !197
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %106

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !61, !noalias !197
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !65, !noalias !197
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !69, !noalias !197
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !61, !noalias !197
  %61 = load ptr, ptr %4, align 8, !tbaa !81
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %110, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !74
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !99
  %68 = icmp eq i64 %67, 0
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %65, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = select i1 %68, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %70
  %72 = load i16, ptr %71, align 2, !tbaa !147
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %63, %74
  %75 = phi i16 [ %82, %74 ], [ %72, %63 ]
  %76 = phi i64 [ %80, %74 ], [ 0, %63 ]
  %77 = phi ptr [ %81, %74 ], [ %71, %63 ]
  %78 = mul i64 %76, 5
  %79 = zext i16 %75 to i64
  %80 = add i64 %78, %79
  %81 = getelementptr inbounds i16, ptr %77, i64 1
  %82 = load i16, ptr %81, align 2, !tbaa !147
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %74, !llvm.loop !149

84:                                               ; preds = %74, %63
  %85 = phi i64 [ 0, %63 ], [ %80, %74 ]
  %86 = add i64 %85, 1
  %87 = urem i64 %86, %9
  %88 = load ptr, ptr %42, align 8, !tbaa !135
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %88, i64 %87
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %108, !llvm.loop !200

90:                                               ; preds = %1
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load i64, ptr %13, align 8, !tbaa !143
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %14, align 8, !tbaa !145
  %96 = load ptr, ptr %3, align 8, !tbaa !146
  %97 = load ptr, ptr %96, align 8, !tbaa !40
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %95)
          to label %103 unwind label %100

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #16
  unreachable

103:                                              ; preds = %90, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %128

104:                                              ; preds = %32
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %126

106:                                              ; preds = %50
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %126

108:                                              ; preds = %84
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %126

110:                                              ; preds = %59
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %112 = load ptr, ptr %111, align 8, !tbaa !57
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !60
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !134
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !135
  %119 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %119, ptr %111, align 8, !tbaa !57
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !60
  store i64 %121, ptr %113, align 8, !tbaa !60
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !134
  store i64 %123, ptr %115, align 8, !tbaa !134
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !135
  store ptr %125, ptr %117, align 8, !tbaa !135
  store ptr %112, ptr %2, align 8, !tbaa !57
  store i64 %114, ptr %120, align 8, !tbaa !60
  store i64 %116, ptr %122, align 8, !tbaa !134
  store ptr %118, ptr %124, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret void

126:                                              ; preds = %108, %106, %104
  %127 = phi { ptr, i32 } [ %107, %106 ], [ %105, %104 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br label %128

128:                                              ; preds = %126, %103
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %91, %103 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  resume { ptr, i32 } %129
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !56
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !61
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !69
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !56
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !61
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !65
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !69
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !61
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !56, !noalias !201
  %8 = load ptr, ptr %7, align 8, !tbaa !40, !noalias !201
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !201
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !201
  store ptr %11, ptr %3, align 8, !tbaa !61, !noalias !201
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !65, !noalias !201
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !69, !noalias !201
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !201
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !56
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !126
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !204
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  store ptr %33, ptr %31, align 8, !tbaa !59
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !59
  %35 = load ptr, ptr %32, align 8, !tbaa !69
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, xalanc_1_10::XalanVector<const xalanc_1_10::XalanNode *>>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !65
  store ptr %29, ptr %32, align 8, !tbaa !69
  store ptr %30, ptr %16, align 8, !tbaa !126
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !60
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !134
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !135
  %28 = load i64, ptr %12, align 8, !tbaa !60
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !60
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !60
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !206

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %42 = load ptr, ptr %0, align 8, !tbaa !57
  store ptr %42, ptr %5, align 8, !tbaa !57
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !60
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !134
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !40
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !135
  %51 = load i64, ptr %43, align 8, !tbaa !60
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !135
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !135
  %56 = load i64, ptr %43, align 8, !tbaa !60
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !135
  %60 = load i64, ptr %43, align 8, !tbaa !60
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !135
  %63 = load i64, ptr %12, align 8, !tbaa !60
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !57
  %67 = load i64, ptr %12, align 8, !tbaa !60
  %68 = load i64, ptr %19, align 8, !tbaa !134
  %69 = load ptr, ptr %15, align 8, !tbaa !135
  %70 = load ptr, ptr %5, align 8, !tbaa !57
  store ptr %70, ptr %0, align 8, !tbaa !57
  %71 = load i64, ptr %43, align 8, !tbaa !60
  store i64 %71, ptr %12, align 8, !tbaa !60
  %72 = load i64, ptr %44, align 8, !tbaa !134
  store i64 %72, ptr %19, align 8, !tbaa !134
  %73 = load ptr, ptr %50, align 8, !tbaa !135
  store ptr %73, ptr %15, align 8, !tbaa !135
  store ptr %66, ptr %5, align 8, !tbaa !57
  store i64 %67, ptr %43, align 8, !tbaa !60
  store i64 %68, ptr %44, align 8, !tbaa !134
  store ptr %69, ptr %50, align 8, !tbaa !135
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !207

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !208

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !209

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !210

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !193

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !209

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !134
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !60
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !60
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %22 = load ptr, ptr %0, align 8, !tbaa !57
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2ERKSQ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE10doPushBackERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !57
  %25 = load i64, ptr %4, align 8, !tbaa !60
  %26 = load i64, ptr %6, align 8, !tbaa !134
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !135
  %29 = load ptr, ptr %3, align 8, !tbaa !57
  store ptr %29, ptr %0, align 8, !tbaa !57
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !60
  store i64 %31, ptr %4, align 8, !tbaa !60
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !134
  store i64 %33, ptr %6, align 8, !tbaa !134
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !135
  store ptr %35, ptr %27, align 8, !tbaa !135
  store ptr %24, ptr %3, align 8, !tbaa !57
  store i64 %25, ptr %30, align 8, !tbaa !60
  store i64 %26, ptr %32, align 8, !tbaa !134
  store ptr %28, ptr %34, align 8, !tbaa !135
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2ERKSQ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = load ptr, ptr %3, align 8, !tbaa !57
  store ptr %12, ptr %0, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !60
  store i64 %14, ptr %6, align 8, !tbaa !60
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !134
  store i64 %16, ptr %8, align 8, !tbaa !134
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  store ptr %18, ptr %10, align 8, !tbaa !135
  store ptr %5, ptr %3, align 8, !tbaa !57
  store i64 %7, ptr %13, align 8, !tbaa !60
  store i64 %9, ptr %15, align 8, !tbaa !134
  store ptr %11, ptr %17, align 8, !tbaa !135
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2ERKSQ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !57
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !60
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !134
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !135
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = load i64, ptr %9, align 8, !tbaa !60
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_PKSN_ST_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !57
  %28 = load i64, ptr %6, align 8, !tbaa !60
  %29 = load i64, ptr %7, align 8, !tbaa !134
  %30 = load ptr, ptr %8, align 8, !tbaa !135
  %31 = load ptr, ptr %5, align 8, !tbaa !57
  store ptr %31, ptr %0, align 8, !tbaa !57
  %32 = load i64, ptr %14, align 8, !tbaa !60
  store i64 %32, ptr %6, align 8, !tbaa !60
  %33 = load i64, ptr %15, align 8, !tbaa !134
  store i64 %33, ptr %7, align 8, !tbaa !134
  %34 = load ptr, ptr %21, align 8, !tbaa !135
  store ptr %34, ptr %8, align 8, !tbaa !135
  store ptr %27, ptr %5, align 8, !tbaa !57
  store i64 %28, ptr %14, align 8, !tbaa !60
  store i64 %29, ptr %15, align 8, !tbaa !134
  store ptr %30, ptr %21, align 8, !tbaa !135
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !40
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !135
  store i64 %3, ptr %7, align 8, !tbaa !134
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !150
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !146
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !150
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !143
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !145
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !145
  %24 = load i64, ptr %9, align 8, !tbaa !150
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !146
  %28 = load i64, ptr %6, align 8, !tbaa !150
  %29 = load i64, ptr %7, align 8, !tbaa !143
  %30 = load ptr, ptr %8, align 8, !tbaa !145
  %31 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %31, ptr %0, align 8, !tbaa !146
  %32 = load i64, ptr %14, align 8, !tbaa !150
  store i64 %32, ptr %6, align 8, !tbaa !150
  %33 = load i64, ptr %15, align 8, !tbaa !143
  store i64 %33, ptr %7, align 8, !tbaa !143
  %34 = load ptr, ptr %21, align 8, !tbaa !145
  store ptr %34, ptr %8, align 8, !tbaa !145
  store ptr %27, ptr %5, align 8, !tbaa !146
  store i64 %28, ptr %14, align 8, !tbaa !150
  store i64 %29, ptr %15, align 8, !tbaa !143
  store ptr %30, ptr %21, align 8, !tbaa !145
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !143
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !145
  %50 = load ptr, ptr %5, align 8, !tbaa !146
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !40
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !145
  store i64 %3, ptr %7, align 8, !tbaa !143
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !150
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !143
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !145
  %28 = load i64, ptr %12, align 8, !tbaa !150
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !81
  store ptr %34, ptr %32, align 8, !tbaa !81
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !211

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %42 = load ptr, ptr %0, align 8, !tbaa !146
  store ptr %42, ptr %5, align 8, !tbaa !146
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !150
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !143
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !40
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !145
  %51 = load i64, ptr %43, align 8, !tbaa !150
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !145
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !145
  %56 = load i64, ptr %43, align 8, !tbaa !150
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !145
  %60 = load i64, ptr %43, align 8, !tbaa !150
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !145
  %63 = load i64, ptr %12, align 8, !tbaa !150
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !146
  %67 = load i64, ptr %12, align 8, !tbaa !150
  %68 = load i64, ptr %19, align 8, !tbaa !143
  %69 = load ptr, ptr %15, align 8, !tbaa !145
  %70 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %70, ptr %0, align 8, !tbaa !146
  %71 = load i64, ptr %43, align 8, !tbaa !150
  store i64 %71, ptr %12, align 8, !tbaa !150
  %72 = load i64, ptr %44, align 8, !tbaa !143
  store i64 %72, ptr %19, align 8, !tbaa !143
  %73 = load ptr, ptr %50, align 8, !tbaa !145
  store ptr %73, ptr %15, align 8, !tbaa !145
  store ptr %66, ptr %5, align 8, !tbaa !146
  store i64 %67, ptr %43, align 8, !tbaa !150
  store i64 %68, ptr %44, align 8, !tbaa !143
  store ptr %69, ptr %50, align 8, !tbaa !145
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !40
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #16
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !143
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !145
  %89 = load ptr, ptr %5, align 8, !tbaa !146
  %90 = load ptr, ptr %89, align 8, !tbaa !40
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #16
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !212

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !213

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !81
  store ptr %122, ptr %120, align 8, !tbaa !81
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !214

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !215

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
  %148 = load ptr, ptr %146, align 8, !tbaa !81
  store ptr %148, ptr %147, align 8, !tbaa !81
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !216

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !81
  store ptr %155, ptr %153, align 8, !tbaa !81
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !214

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !150
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !143
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !81
  store ptr %13, ptr %12, align 8, !tbaa !81
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !150
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE10doPushBackERKSL_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !146
  %24 = load i64, ptr %4, align 8, !tbaa !150
  %25 = load i64, ptr %6, align 8, !tbaa !143
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !145
  %28 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %28, ptr %0, align 8, !tbaa !146
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !150
  store i64 %30, ptr %4, align 8, !tbaa !150
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !143
  store i64 %32, ptr %6, align 8, !tbaa !143
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !145
  store ptr %34, ptr %26, align 8, !tbaa !145
  store ptr %23, ptr %3, align 8, !tbaa !146
  store i64 %24, ptr %29, align 8, !tbaa !150
  store i64 %25, ptr %31, align 8, !tbaa !143
  store ptr %27, ptr %33, align 8, !tbaa !145
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !143
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !145
  %52 = load ptr, ptr %3, align 8, !tbaa !146
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !143
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %12, ptr %0, align 8, !tbaa !146
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !150
  store i64 %14, ptr %6, align 8, !tbaa !150
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !143
  store i64 %16, ptr %8, align 8, !tbaa !143
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  store ptr %18, ptr %10, align 8, !tbaa !145
  store ptr %5, ptr %3, align 8, !tbaa !146
  store i64 %7, ptr %13, align 8, !tbaa !150
  store i64 %9, ptr %15, align 8, !tbaa !143
  store ptr %11, ptr %17, align 8, !tbaa !145
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !40
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #16
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEaSERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !143
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !150
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !146
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !150
  %16 = load i64, ptr %6, align 8, !tbaa !143
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  %19 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %19, ptr %0, align 8, !tbaa !146
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !150
  store i64 %21, ptr %14, align 8, !tbaa !150
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !143
  store i64 %23, ptr %6, align 8, !tbaa !143
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !145
  store ptr %25, ptr %17, align 8, !tbaa !145
  store ptr %13, ptr %3, align 8, !tbaa !146
  store i64 %15, ptr %20, align 8, !tbaa !150
  store i64 %16, ptr %22, align 8, !tbaa !143
  store ptr %18, ptr %24, align 8, !tbaa !145
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !145
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !150
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !145
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEE6insertEPSL_PKSL_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !150
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !150
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !145
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !145
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  store ptr %68, ptr %66, align 8, !tbaa !81
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !214

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEC2EmRKSN_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  store ptr %3, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEE6insertEPSN_mRKSN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = load i64, ptr %6, align 8, !tbaa !60
  %15 = load i64, ptr %12, align 8, !tbaa !134
  %16 = load ptr, ptr %11, align 8, !tbaa !135
  %17 = load ptr, ptr %5, align 8, !tbaa !57
  store ptr %17, ptr %0, align 8, !tbaa !57
  %18 = load i64, ptr %7, align 8, !tbaa !60
  store i64 %18, ptr %6, align 8, !tbaa !60
  %19 = load i64, ptr %10, align 8, !tbaa !134
  store i64 %19, ptr %12, align 8, !tbaa !134
  %20 = load ptr, ptr %9, align 8, !tbaa !135
  store ptr %20, ptr %11, align 8, !tbaa !135
  store ptr %13, ptr %5, align 8, !tbaa !57
  store i64 %14, ptr %7, align 8, !tbaa !60
  store i64 %15, ptr %10, align 8, !tbaa !134
  store ptr %16, ptr %9, align 8, !tbaa !135
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !142
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !90
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !142
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !90
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !141
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !92
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = load i64, ptr %9, align 8, !tbaa !90
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !142
  %28 = load i64, ptr %6, align 8, !tbaa !90
  %29 = load i64, ptr %7, align 8, !tbaa !141
  %30 = load ptr, ptr %8, align 8, !tbaa !92
  %31 = load ptr, ptr %5, align 8, !tbaa !142
  store ptr %31, ptr %0, align 8, !tbaa !142
  %32 = load i64, ptr %14, align 8, !tbaa !90
  store i64 %32, ptr %6, align 8, !tbaa !90
  %33 = load i64, ptr %15, align 8, !tbaa !141
  store i64 %33, ptr %7, align 8, !tbaa !141
  %34 = load ptr, ptr %21, align 8, !tbaa !92
  store ptr %34, ptr %8, align 8, !tbaa !92
  store ptr %27, ptr %5, align 8, !tbaa !142
  store i64 %28, ptr %14, align 8, !tbaa !90
  store i64 %29, ptr %15, align 8, !tbaa !141
  store ptr %30, ptr %21, align 8, !tbaa !92
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !141
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !92
  %50 = load ptr, ptr %5, align 8, !tbaa !142
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !40
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !92
  store i64 %3, ptr %7, align 8, !tbaa !141
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !90
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !141
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !92
  %28 = load i64, ptr %12, align 8, !tbaa !90
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !59
  store ptr %34, ptr %32, align 8, !tbaa !59
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !217

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %42 = load ptr, ptr %0, align 8, !tbaa !142
  store ptr %42, ptr %5, align 8, !tbaa !142
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !90
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !141
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !40
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !92
  %51 = load i64, ptr %43, align 8, !tbaa !90
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !92
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !92
  %56 = load i64, ptr %43, align 8, !tbaa !90
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !92
  %60 = load i64, ptr %43, align 8, !tbaa !90
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !92
  %63 = load i64, ptr %12, align 8, !tbaa !90
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !142
  %67 = load i64, ptr %12, align 8, !tbaa !90
  %68 = load i64, ptr %19, align 8, !tbaa !141
  %69 = load ptr, ptr %15, align 8, !tbaa !92
  %70 = load ptr, ptr %5, align 8, !tbaa !142
  store ptr %70, ptr %0, align 8, !tbaa !142
  %71 = load i64, ptr %43, align 8, !tbaa !90
  store i64 %71, ptr %12, align 8, !tbaa !90
  %72 = load i64, ptr %44, align 8, !tbaa !141
  store i64 %72, ptr %19, align 8, !tbaa !141
  %73 = load ptr, ptr %50, align 8, !tbaa !92
  store ptr %73, ptr %15, align 8, !tbaa !92
  store ptr %66, ptr %5, align 8, !tbaa !142
  store i64 %67, ptr %43, align 8, !tbaa !90
  store i64 %68, ptr %44, align 8, !tbaa !141
  store ptr %69, ptr %50, align 8, !tbaa !92
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !40
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #16
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !141
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !92
  %89 = load ptr, ptr %5, align 8, !tbaa !142
  %90 = load ptr, ptr %89, align 8, !tbaa !40
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #16
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !218

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !219

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !220

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
  store i64 %36, ptr %12, align 8, !tbaa !90
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !141
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %13, ptr %12, align 8, !tbaa !59
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !90
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !142
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !142
  %24 = load i64, ptr %4, align 8, !tbaa !90
  %25 = load i64, ptr %6, align 8, !tbaa !141
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = load ptr, ptr %3, align 8, !tbaa !142
  store ptr %28, ptr %0, align 8, !tbaa !142
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !90
  store i64 %30, ptr %4, align 8, !tbaa !90
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !141
  store i64 %32, ptr %6, align 8, !tbaa !141
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !92
  store ptr %34, ptr %26, align 8, !tbaa !92
  store ptr %23, ptr %3, align 8, !tbaa !142
  store i64 %24, ptr %29, align 8, !tbaa !90
  store i64 %25, ptr %31, align 8, !tbaa !141
  store ptr %27, ptr %33, align 8, !tbaa !92
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !141
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  %52 = load ptr, ptr %3, align 8, !tbaa !142
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load ptr, ptr %0, align 8, !tbaa !142
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !142
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !141
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = load ptr, ptr %3, align 8, !tbaa !142
  store ptr %12, ptr %0, align 8, !tbaa !142
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !90
  store i64 %14, ptr %6, align 8, !tbaa !90
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !141
  store i64 %16, ptr %8, align 8, !tbaa !141
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  store ptr %18, ptr %10, align 8, !tbaa !92
  store ptr %5, ptr %3, align 8, !tbaa !142
  store i64 %7, ptr %13, align 8, !tbaa !90
  store i64 %9, ptr %15, align 8, !tbaa !141
  store ptr %11, ptr %17, align 8, !tbaa !92
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !40
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #16
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 235253}
!36 = !{ptr @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 235253}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !47, i64 8}
!44 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !45, i64 0, !46, i64 1, !47, i64 8, !49, i64 16, !50, i64 24, !50, i64 32, !51, i64 40, !51, i64 64, !52, i64 88, !50, i64 120, !50, i64 128}
!45 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!46 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !42, i64 0}
!49 = !{!"float", !48, i64 0}
!50 = !{!"long", !48, i64 0}
!51 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !47, i64 0, !47, i64 8, !47, i64 16}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEENS_32ConstructWithMemoryManagerTraitsISN_EEEE", !47, i64 0, !50, i64 8, !50, i64 16, !47, i64 24}
!53 = !{!44, !49, i64 16}
!54 = !{!44, !50, i64 24}
!55 = !{!44, !50, i64 32}
!56 = !{!51, !47, i64 0}
!57 = !{!52, !47, i64 0}
!58 = !{!44, !50, i64 128}
!59 = !{!47, !47, i64 0}
!60 = !{!52, !50, i64 8}
!61 = !{!51, !47, i64 8}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!64 = distinct !{!64, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!65 = !{!66, !47, i64 24}
!66 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE4NodeE", !67, i64 0, !47, i64 16, !47, i64 24}
!67 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryE", !47, i64 0, !68, i64 8}
!68 = !{!"bool", !48, i64 0}
!69 = !{!66, !47, i64 16}
!70 = !{}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!73 = distinct !{!73, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!74 = !{!67, !47, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_: argument 0"}
!80 = distinct !{!80, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE4findERKS3_"}
!81 = !{!82, !47, i64 0}
!82 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEE", !47, i64 0}
!83 = !{!84, !86, !88}
!84 = distinct !{!84, !85, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!85 = distinct !{!85, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!86 = distinct !{!86, !87, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!88 = distinct !{!88, !89, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!89 = distinct !{!89, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!90 = !{!91, !50, i64 8}
!91 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS3_EEEE", !47, i64 0, !50, i64 8, !50, i64 16, !47, i64 24}
!92 = !{!91, !47, i64 24}
!93 = !{!94, !47, i64 8}
!94 = !{!"_ZTSN11xalanc_1_1027XalanDocumentPrefixResolver24NamespaceNodesTreeWalkerE", !95, i64 0, !47, i64 8}
!95 = !{!"_ZTSN11xalanc_1_1010TreeWalkerE"}
!96 = distinct !{!96, !76, !77}
!97 = !{!"function_entry_count", i64 235253}
!98 = !{!"VP", i32 0, i64 235253, i64 4904834064969965898, i64 235253}
!99 = !{!100, !50, i64 8}
!100 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !47, i64 0, !50, i64 8, !50, i64 16, !47, i64 24}
!101 = !{!"branch_weights", i32 0, i32 235253}
!102 = !{!103, !104, i64 32}
!103 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !100, i64 0, !104, i64 32}
!104 = !{!"int", !48, i64 0}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!107 = distinct !{!107, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!108 = distinct !{!108, !109, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!109 = distinct !{!109, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!110 = !{!"function_entry_count", i64 42470003}
!111 = !{!100, !50, i64 16}
!112 = !{!"branch_weights", i32 52000, i32 42418003}
!113 = !{!100, !47, i64 24}
!114 = !{!100, !47, i64 0}
!115 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!121 = distinct !{!121, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEppEi: argument 0"}
!124 = distinct !{!124, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEppEi"}
!125 = distinct !{!125, !76, !77}
!126 = !{!51, !47, i64 16}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!129 = distinct !{!129, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!130 = !{!131, !128}
!131 = distinct !{!131, !132, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!132 = distinct !{!132, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!133 = distinct !{!133, !76, !77}
!134 = !{!52, !50, i64 16}
!135 = !{!52, !47, i64 24}
!136 = distinct !{!136, !76, !77}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!139 = distinct !{!139, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!140 = !{!67, !68, i64 8}
!141 = !{!91, !50, i64 16}
!142 = !{!91, !47, i64 0}
!143 = !{!144, !50, i64 16}
!144 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS0_IPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISG_E4NodeEEENSA_ISL_EEEE", !47, i64 0, !50, i64 8, !50, i64 16, !47, i64 24}
!145 = !{!144, !47, i64 24}
!146 = !{!144, !47, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"short", !48, i64 0}
!149 = distinct !{!149, !76, !77}
!150 = !{!144, !50, i64 8}
!151 = !{i8 0, i8 2}
!152 = !{!153, !47, i64 0}
!153 = !{!"_ZTSSt4pairIKPKN11xalanc_1_1014XalanDOMStringENS0_11XalanVectorIPKNS0_9XalanNodeENS0_31MemoryManagedConstructionTraitsIS8_EEEEE", !47, i64 0, !91, i64 8}
!154 = distinct !{!154, !76, !77}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!157 = distinct !{!157, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!158 = !{!159, !156}
!159 = distinct !{!159, !160, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!160 = distinct !{!160, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!163 = distinct !{!163, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv: argument 0"}
!166 = distinct !{!166, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!169 = distinct !{!169, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv: argument 0"}
!175 = distinct !{!175, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!178 = distinct !{!178, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv: argument 0"}
!181 = distinct !{!181, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!184 = distinct !{!184, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv: argument 0"}
!187 = distinct !{!187, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS9_EEEENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISG_E4NodeEEmmEv"}
!188 = distinct !{!188, !76, !77}
!189 = distinct !{!189, !76, !77}
!190 = distinct !{!190, !76, !77}
!191 = distinct !{!191, !76, !77}
!192 = distinct !{!192, !76, !77}
!193 = distinct !{!193, !76, !77}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!196 = distinct !{!196, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!199 = distinct !{!199, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!200 = distinct !{!200, !76, !77}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!203 = distinct !{!203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringENS_11XalanVectorIPKNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!204 = !{i64 0, i64 8, !59, i64 8, i64 1, !205}
!205 = !{!68, !68, i64 0}
!206 = distinct !{!206, !76, !77}
!207 = distinct !{!207, !76, !77}
!208 = distinct !{!208, !76, !77}
!209 = distinct !{!209, !76, !77}
!210 = distinct !{!210, !76, !77}
!211 = distinct !{!211, !76, !77}
!212 = distinct !{!212, !76, !77}
!213 = distinct !{!213, !76, !77}
!214 = distinct !{!214, !76, !77}
!215 = distinct !{!215, !76, !77}
!216 = distinct !{!216, !76, !77}
!217 = distinct !{!217, !76, !77}
!218 = distinct !{!218, !76, !77}
!219 = distinct !{!219, !76, !77}
!220 = distinct !{!220, !76, !77}
