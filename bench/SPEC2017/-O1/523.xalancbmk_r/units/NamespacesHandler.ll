; ModuleID = 'NamespacesHandler.cpp'
source_filename = "NamespacesHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.4" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.6" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.7", %"class.xalanc_1_10::XalanVector.7" }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.11" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NameSpace" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::NamespacesHandler::Namespace" = type { ptr, ptr }
%"class.xalanc_1_10::NamespacesHandler::NamespaceExtended" = type { %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr }
%"struct.xalanc_1_10::XalanMapIterator.9" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_ = comdat any

$_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEixERKS3_ = comdat any

$_ZN11xalanc_1_1019addOrUpdateByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEaSERKS6_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEaSERKS6_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5clearEv = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4swapERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKS8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6insertERKS3_S8_ = comdat any

@_ZN11xalanc_1_1017NamespacesHandler9Namespace13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1017NamespacesHandler13PrefixCheckerE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017NamespacesHandler13PrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev, ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZN11xalanc_1_109Constants35DEFAULT_WHITESPACE_SEPARATOR_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants22ATTRVAL_DEFAULT_PREFIXE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017NamespacesHandler13PrefixCheckerE = dso_local constant [50 x i8] c"N11xalanc_1_1017NamespacesHandler13PrefixCheckerE\00", align 1
@_ZTIN11xalanc_1_1017NamespacesHandler13PrefixCheckerE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017NamespacesHandler13PrefixCheckerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_NamespacesHandler.cpp, ptr null }]

@_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev
@_ZN11xalanc_1_1017NamespacesHandlerC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017NamespacesHandlerC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017NamespacesHandlerC1ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017NamespacesHandlerC2ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1017NamespacesHandlerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017NamespacesHandlerD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !79 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1017NamespacesHandler13PrefixCheckerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !79 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler13PrefixCheckerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !78 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandlerC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  store ptr %1, ptr %0, align 8, !tbaa !84
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !89
  %5 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %1, ptr %8, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 3
  store float 7.500000e-01, ptr %9, align 8, !tbaa !100
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 4
  store i64 29, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 5
  store i64 0, ptr %11, align 8, !tbaa !102
  %12 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 6
  store ptr %1, ptr %12, align 8, !tbaa !103
  %13 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 6, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %1, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 7, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store ptr %1, ptr %16, align 8, !tbaa !104
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 8, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  store i64 50, ptr %18, align 8, !tbaa !105
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !107
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !108

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = load ptr, ptr %0, align 8, !tbaa !91
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !110

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = load ptr, ptr %0, align 8, !tbaa !89
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !114

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !116

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = load ptr, ptr %0, align 8, !tbaa !84
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !118

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandlerC2ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  store ptr %7, ptr %0, align 8, !tbaa !84
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %7, ptr %10, align 8, !tbaa !89
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store ptr %7, ptr %12, align 8, !tbaa !91
  %13 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store ptr %7, ptr %15, align 8, !tbaa !93
  %16 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 3
  store float 7.500000e-01, ptr %16, align 8, !tbaa !100
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 4
  store i64 29, ptr %17, align 8, !tbaa !101
  %18 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 5
  store i64 0, ptr %18, align 8, !tbaa !102
  %19 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 6
  store ptr %7, ptr %19, align 8, !tbaa !103
  %20 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 6, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store ptr %7, ptr %21, align 8, !tbaa !103
  %22 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 7, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store ptr %7, ptr %23, align 8, !tbaa !104
  %24 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 8, i32 1
  %25 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  store i64 50, ptr %25, align 8, !tbaa !105
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !122, !noalias !124
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %42, label %29, !prof !127

29:                                               ; preds = %5
  %30 = add i64 %27, -1
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !128, !noalias !124
  %33 = mul i64 %32, %30
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !130, !noalias !124
  %36 = getelementptr ptr, ptr %35, i64 %27
  %37 = getelementptr ptr, ptr %36, i64 -1
  %38 = load ptr, ptr %37, align 8, !tbaa !131, !noalias !124
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !132, !noalias !124
  %41 = add i64 %40, %33
  br label %42

42:                                               ; preds = %5, %29
  %43 = phi i64 [ %41, %29 ], [ 0, %5 ]
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %148, label %45, !prof !134

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 1
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 3
  br label %50

48:                                               ; preds = %145, %77
  %49 = icmp eq i64 %52, 0
  br i1 %49, label %148, label %50, !prof !135, !llvm.loop !136

50:                                               ; preds = %45, %48
  %51 = phi i64 [ %43, %45 ], [ %52, %48 ]
  %52 = add i64 %51, -1
  %53 = load i64, ptr %46, align 8, !tbaa !128
  %54 = udiv i64 %52, %53
  %55 = load ptr, ptr %47, align 8, !tbaa !130
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !131
  %58 = urem i64 %52, %53
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %57, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.6", ptr %60, i64 %58, i32 2, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !140
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %77, label %64, !prof !142

64:                                               ; preds = %50
  %65 = add i64 %62, -1
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.6", ptr %60, i64 %58, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !143
  %68 = mul i64 %67, %65
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.6", ptr %60, i64 %58, i32 2, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !145
  %71 = getelementptr ptr, ptr %70, i64 %62
  %72 = getelementptr ptr, ptr %71, i64 -1
  %73 = load ptr, ptr %72, align 8, !tbaa !131
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.11", ptr %73, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !146
  %76 = add i64 %75, %68
  br label %77

77:                                               ; preds = %50, %64
  %78 = phi i64 [ %76, %64 ], [ 0, %50 ]
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %48, label %80, !prof !148

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.6", ptr %60, i64 %58, i32 1
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.6", ptr %60, i64 %58, i32 2, i32 3
  br label %83

83:                                               ; preds = %80, %145
  %84 = phi i64 [ 0, %80 ], [ %146, %145 ]
  %85 = load i64, ptr %81, align 8, !tbaa !143
  %86 = udiv i64 %84, %85
  %87 = load ptr, ptr %82, align 8, !tbaa !145
  %88 = getelementptr inbounds ptr, ptr %87, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !131
  %90 = urem i64 %84, %85
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.11", ptr %89, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !149
  %93 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %92, i64 %90
  %94 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %92, i64 %90, i32 1
  %95 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %94, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %96 unwind label %138

96:                                               ; preds = %83
  br i1 %95, label %143, label %97, !prof !150

97:                                               ; preds = %96
  %98 = load ptr, ptr %14, align 8, !tbaa !109
  %99 = load i64, ptr %13, align 8, !tbaa !151
  %100 = getelementptr inbounds ptr, ptr %98, i64 %99
  br label %101

101:                                              ; preds = %107, %97
  %102 = phi ptr [ %98, %97 ], [ %110, %107 ]
  %103 = icmp eq ptr %102, %100
  br i1 %103, label %111, label %104, !prof !152

104:                                              ; preds = %101
  %105 = load ptr, ptr %102, align 8, !tbaa !131
  %106 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %94, ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %107 unwind label %136

107:                                              ; preds = %104
  %108 = xor i1 %106, true
  %109 = zext i1 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %102, i64 %109
  br i1 %106, label %143, label %101, !llvm.loop !153

111:                                              ; preds = %101
  %112 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8
  %113 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %94, ptr noundef nonnull align 8 dereferenceable(36) %112)
          to label %114 unwind label %138

114:                                              ; preds = %111
  br i1 %113, label %143, label %115, !prof !154

115:                                              ; preds = %114
  %116 = load ptr, ptr %9, align 8, !tbaa !117
  %117 = load i64, ptr %8, align 8, !tbaa !155
  %118 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %116, i64 %117
  %119 = icmp eq i64 %117, 0
  br i1 %119, label %132, label %120, !prof !156

120:                                              ; preds = %115, %126
  %121 = phi ptr [ %127, %126 ], [ %116, %115 ]
  %122 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !157
  %124 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %123, ptr noundef nonnull align 8 dereferenceable(36) %94)
          to label %125 unwind label %134

125:                                              ; preds = %120
  br i1 %124, label %129, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %121, i64 1
  %128 = icmp eq ptr %127, %118
  br i1 %128, label %129, label %120, !prof !156, !llvm.loop !159

129:                                              ; preds = %126, %125
  %130 = phi ptr [ %121, %125 ], [ null, %126 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %143, !prof !150

132:                                              ; preds = %115, %129
  %133 = invoke noundef zeroext i1 @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %93, ptr noundef nonnull align 8 dereferenceable(36) %94)
          to label %145 unwind label %138, !prof !152

134:                                              ; preds = %120
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %140

136:                                              ; preds = %104
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %140

138:                                              ; preds = %111, %83, %143, %132
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %140

140:                                              ; preds = %136, %138, %134
  %141 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ], [ %139, %138 ]
  %142 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %142) #21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  resume { ptr, i32 } %141

143:                                              ; preds = %107, %114, %96, %129
  %144 = invoke noundef zeroext i1 @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %93, ptr noundef nonnull align 8 dereferenceable(36) %94)
          to label %145 unwind label %138, !prof !152

145:                                              ; preds = %143, %132
  %146 = add nuw i64 %84, 1
  %147 = icmp eq i64 %146, %78
  br i1 %147, label %48, label %83, !prof !160, !llvm.loop !161

148:                                              ; preds = %48, %42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017NamespacesHandler32shouldExcludeResultNamespaceNodeERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #8 align 2 !prof !78 {
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %4, label %41, label %5, !prof !150

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !151
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  br label %11

11:                                               ; preds = %14, %5
  %12 = phi ptr [ %7, %5 ], [ %19, %14 ]
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %20, label %14, !prof !152

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !131
  %16 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %12, i64 %18
  br i1 %16, label %41, label %11, !llvm.loop !153

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !131
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %21)
  br i1 %22, label %41, label %23, !prof !154

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !155
  %28 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %25, i64 %27
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %41, label %30, !prof !156

30:                                               ; preds = %23, %35
  %31 = phi ptr [ %36, %35 ], [ %25, %23 ]
  %32 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !157
  %34 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %33, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %31, i64 1
  %37 = icmp eq ptr %36, %28
  br i1 %37, label %38, label %30, !prof !156, !llvm.loop !159

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %31, %30 ], [ null, %35 ]
  %40 = icmp ne ptr %39, null
  br label %41

41:                                               ; preds = %14, %23, %38, %3, %20
  %42 = phi i1 [ true, %20 ], [ true, %3 ], [ false, %23 ], [ %40, %38 ], [ true, %14 ]
  ret i1 %42
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #10 comdat !prof !162 {
  %5 = alloca %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %24, label %12, !prof !156

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !tbaa !164
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %19
  %16 = phi ptr [ %17, %19 ], [ %7, %12 ]
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %16, i64 1
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %24, label %19, !prof !156, !llvm.loop !165

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !164
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %21, label %22, label %15, !llvm.loop !165

22:                                               ; preds = %19, %12
  %23 = phi i1 [ %11, %12 ], [ %18, %19 ]
  br i1 %23, label %24, label %36, !prof !152

24:                                               ; preds = %15, %4, %22
  %25 = phi i1 [ %23, %22 ], [ %11, %4 ], [ %18, %15 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  %26 = load ptr, ptr %0, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef nonnull align 8 dereferenceable(36) ptr %28(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %2), !prof !166
  %30 = load ptr, ptr %0, align 8, !tbaa !80
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef nonnull align 8 dereferenceable(36) ptr %32(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %3), !prof !166
  store ptr %29, ptr %5, align 8, !tbaa !164
  %34 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %5, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !157
  %35 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %5, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1017NamespacesHandler9Namespace13s_emptyStringE, ptr %35, align 8, !tbaa !167
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  br label %36

36:                                               ; preds = %22, %24
  %37 = phi i1 [ %23, %22 ], [ %25, %24 ]
  ret i1 %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #10 comdat !prof !162 {
  %5 = alloca %"class.xalanc_1_10::NamespacesHandler::Namespace", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !155
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %24, label %12, !prof !156

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !tbaa !164
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %19
  %16 = phi ptr [ %17, %19 ], [ %7, %12 ]
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %16, i64 1
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %24, label %19, !prof !156, !llvm.loop !159

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !164
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %21, label %22, label %15, !llvm.loop !159

22:                                               ; preds = %19, %12
  %23 = phi i1 [ %11, %12 ], [ %18, %19 ]
  br i1 %23, label %24, label %35, !prof !152

24:                                               ; preds = %15, %4, %22
  %25 = phi i1 [ %23, %22 ], [ %11, %4 ], [ %18, %15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %26 = load ptr, ptr %0, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef nonnull align 8 dereferenceable(36) ptr %28(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %2), !prof !166
  %30 = load ptr, ptr %0, align 8, !tbaa !80
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef nonnull align 8 dereferenceable(36) ptr %32(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %3), !prof !166
  store ptr %29, ptr %5, align 8, !tbaa !164
  %34 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %5, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !157
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %35

35:                                               ; preds = %22, %24
  %36 = phi i1 [ %23, %22 ], [ %25, %24 ]
  ret i1 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !102
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %28, label %6, !prof !156

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %25, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %9 = load ptr, ptr %7, align 8, !tbaa !173, !noalias !174
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !103, !noalias !174
  %14 = load ptr, ptr %13, align 8, !tbaa !80, !noalias !174
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !174
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %103

18:                                               ; preds = %11
  store ptr %17, ptr %7, align 8, !tbaa !173, !noalias !174
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !177, !noalias !174
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !181, !noalias !174
  br label %21

21:                                               ; preds = %18, %8
  %22 = load ptr, ptr %7, align 8, !tbaa !173, !noalias !174
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !177, !noalias !174
  store ptr %24, ptr %2, align 8, !tbaa !182, !alias.scope !170
  invoke void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %25 unwind label %103

25:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %26 = load i64, ptr %3, align 8, !tbaa !102
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %8, !prof !156, !llvm.loop !184

28:                                               ; preds = %25, %1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !185
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %73, label %32, !prof !186

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !173, !noalias !187
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load ptr, ptr %33, align 8, !tbaa !103, !noalias !187
  %39 = load ptr, ptr %38, align 8, !tbaa !80, !noalias !187
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8, !noalias !187
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 32)
          to label %43 unwind label %105

43:                                               ; preds = %37
  store ptr %42, ptr %34, align 8, !tbaa !173, !noalias !187
  %44 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %42, i64 0, i32 2
  store ptr %42, ptr %44, align 8, !tbaa !177, !noalias !187
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %42, i64 0, i32 1
  store ptr %42, ptr %45, align 8, !tbaa !181, !noalias !187
  br label %46

46:                                               ; preds = %32, %43
  %47 = load ptr, ptr %34, align 8, !tbaa !173, !noalias !187
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %49

49:                                               ; preds = %67, %46
  %50 = phi ptr [ %47, %46 ], [ %52, %67 ]
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !177, !noalias !190
  %53 = load ptr, ptr %34, align 8, !tbaa !173, !noalias !191
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load ptr, ptr %33, align 8, !tbaa !103, !noalias !191
  %57 = load ptr, ptr %56, align 8, !tbaa !80, !noalias !191
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8, !noalias !191
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 32)
          to label %61 unwind label %101

61:                                               ; preds = %55
  store ptr %60, ptr %34, align 8, !tbaa !173, !noalias !191
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %60, i64 0, i32 2
  store ptr %60, ptr %62, align 8, !tbaa !177, !noalias !191
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %60, i64 0, i32 1
  store ptr %60, ptr %63, align 8, !tbaa !181, !noalias !191
  br label %64

64:                                               ; preds = %49, %61
  %65 = load ptr, ptr %34, align 8, !tbaa !173, !noalias !191
  %66 = icmp eq ptr %52, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %52, align 8, !tbaa !194
  %69 = load ptr, ptr %48, align 8, !tbaa !93
  %70 = load ptr, ptr %69, align 8, !tbaa !80
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %68)
          to label %49 unwind label %101, !llvm.loop !195

73:                                               ; preds = %64, %28
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !196
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %98, label %78, !prof !186

78:                                               ; preds = %73
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !197
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !185
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %80, i64 %82
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78, %85
  %86 = phi ptr [ %87, %85 ], [ %80, %78 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %86) #21
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %86, i64 1
  %88 = icmp eq ptr %87, %83
  br i1 %88, label %89, label %85, !llvm.loop !198

89:                                               ; preds = %85, %78
  %90 = load ptr, ptr %79, align 8, !tbaa !197
  %91 = load ptr, ptr %74, align 8, !tbaa !104
  %92 = load ptr, ptr %91, align 8, !tbaa !80
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef %90)
          to label %98 unwind label %95

95:                                               ; preds = %89
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  call void @__clang_call_terminate(ptr %97) #22
  unreachable

98:                                               ; preds = %73, %89
  %99 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %99) #21
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %100) #21
  ret void

101:                                              ; preds = %55, %67
  %102 = landingpad { ptr, i32 }
          catch ptr null
  br label %107

103:                                              ; preds = %21, %11
  %104 = landingpad { ptr, i32 }
          catch ptr null
  br label %107

105:                                              ; preds = %37
  %106 = landingpad { ptr, i32 }
          catch ptr null
  br label %107

107:                                              ; preds = %103, %105, %101
  %108 = phi { ptr, i32 } [ %102, %101 ], [ %104, %103 ], [ %106, %105 ]
  %109 = extractvalue { ptr, i32 } %108, 0
  call void @__clang_call_terminate(ptr %109) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #21
  %3 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !107
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6, !prof !108

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %9)
          to label %17 unwind label %14, !prof !110

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #22
  unreachable

17:                                               ; preds = %1, %6
  %18 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !111
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %32, label %21, !prof !112

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = load ptr, ptr %22, align 8, !tbaa !89
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24)
          to label %32 unwind label %29, !prof !114

29:                                               ; preds = %21
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #22
  unreachable

32:                                               ; preds = %17, %21
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !115
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36, !prof !116

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !117
  %39 = load ptr, ptr %0, align 8, !tbaa !84
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  invoke void %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %38)
          to label %46 unwind label %43, !prof !118

43:                                               ; preds = %36
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #22
  unreachable

46:                                               ; preds = %32, %36
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler24addExtensionNamespaceURIERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #10 align 2 !prof !78 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  store ptr %9, ptr %4, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler12getNamespaceERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #10 align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !155
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %4, i64 %6
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %13
  %10 = phi ptr [ %14, %13 ], [ %4, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %10, i64 1
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %9, !llvm.loop !159

16:                                               ; preds = %9, %13, %2
  %17 = phi ptr [ null, %2 ], [ %10, %9 ], [ null, %13 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !113
  %22 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !163
  %24 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %21, i64 %23
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19, %30
  %27 = phi ptr [ %31, %30 ], [ %21, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !164
  %29 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %27, i64 1
  %32 = icmp eq ptr %31, %24
  br i1 %32, label %33, label %26, !llvm.loop !165

33:                                               ; preds = %30, %26, %19
  %34 = phi ptr [ null, %19 ], [ null, %30 ], [ %27, %26 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %16
  %37 = phi ptr [ %17, %16 ], [ %34, %33 ]
  %38 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !157
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi ptr [ null, %33 ], [ %39, %36 ]
  ret ptr %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler20copyNamespaceAliasesERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #10 align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1017NamespacesHandler20copyNamespaceAliasesERKNS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(136) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler20copyNamespaceAliasesERKNS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #10 align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !102
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %50, label %6, !prof !200

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !102
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %50

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !173, !noalias !201
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !103, !noalias !201
  %20 = load ptr, ptr %19, align 8, !tbaa !80, !noalias !201
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8, !noalias !201
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32), !noalias !201
  store ptr %23, ptr %14, align 8, !tbaa !173, !noalias !201
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !177, !noalias !201
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !181, !noalias !201
  br label %26

26:                                               ; preds = %13, %17
  %27 = load ptr, ptr %14, align 8, !tbaa !173, !noalias !190
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !103, !noalias !208
  %32 = load ptr, ptr %31, align 8, !tbaa !80, !noalias !208
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !noalias !208
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32), !noalias !208
  store ptr %35, ptr %14, align 8, !tbaa !173, !noalias !208
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !177, !noalias !208
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %35, i64 0, i32 1
  store ptr %35, ptr %37, align 8, !tbaa !181, !noalias !208
  br label %38

38:                                               ; preds = %26, %29
  %39 = load ptr, ptr %14, align 8, !tbaa !173, !noalias !208
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !177, !noalias !190
  %42 = icmp eq ptr %41, %27
  br i1 %42, label %50, label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %48, %43 ], [ %41, %38 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !194
  %46 = getelementptr inbounds %"struct.std::pair", ptr %45, i64 0, i32 1
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6insertERKS3_S8_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %46)
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !177, !noalias !190
  %49 = icmp eq ptr %48, %27
  br i1 %49, label %50, label %43, !llvm.loop !215

50:                                               ; preds = %43, %38, %11, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler17getNamespaceAliasERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #10 align 2 !prof !216 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !102
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %30, label %8, !prof !217

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr %1, ptr %4, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21, !noalias !218
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !218
  %10 = load ptr, ptr %3, align 8, !tbaa !182, !noalias !218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21, !noalias !218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 6, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !173, !noalias !221
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !103, !noalias !221
  %17 = load ptr, ptr %16, align 8, !tbaa !80, !noalias !221
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8, !noalias !221
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 32), !noalias !221
  store ptr %20, ptr %11, align 8, !tbaa !173, !noalias !221
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %20, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !177, !noalias !221
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %20, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !181, !noalias !221
  br label %23

23:                                               ; preds = %8, %14
  %24 = load ptr, ptr %11, align 8, !tbaa !173, !noalias !221
  %25 = icmp eq ptr %10, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %10, align 8, !tbaa !194
  %28 = getelementptr inbounds %"struct.std::pair", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !228
  br label %30

30:                                               ; preds = %26, %23, %2
  %31 = phi ptr [ null, %2 ], [ %29, %26 ], [ null, %23 ]
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler17setNamespaceAliasERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringES5_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #10 align 2 !prof !78 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %11 = load ptr, ptr %1, align 8, !tbaa !80
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  store ptr %14, ptr %5, align 8, !tbaa !131
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr %9, ptr %15, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEixERKS3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !173, !noalias !230
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !103, !noalias !230
  %11 = load ptr, ptr %10, align 8, !tbaa !80, !noalias !230
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !230
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !230
  store ptr %14, ptr %5, align 8, !tbaa !173, !noalias !230
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !177, !noalias !230
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !181, !noalias !230
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !173, !noalias !230
  %19 = load ptr, ptr %3, align 8, !tbaa !182
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PS7_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !182
  store ptr %22, ptr %3, align 8, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !182
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %6 = load ptr, ptr @_ZN11xalanc_1_109Constants35DEFAULT_WHITESPACE_SEPARATOR_STRINGE, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1015StringTokenizerC1EPKtRKNS_14XalanDOMStringEb(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %6, i1 noundef zeroext false)
  %7 = load ptr, ptr %1, align 8, !tbaa !80
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %11 unwind label %45

11:                                               ; preds = %4
  %12 = load ptr, ptr @_ZN11xalanc_1_109Constants22ATTRVAL_DEFAULT_PREFIXE, align 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %12, i64 0, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  br label %19

19:                                               ; preds = %11, %85
  %20 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %21 unwind label %47

21:                                               ; preds = %19
  br i1 %20, label %22, label %87

22:                                               ; preds = %21
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %23 unwind label %47

23:                                               ; preds = %22
  %24 = load i32, ptr %13, align 8, !tbaa !235
  %25 = load i32, ptr %14, align 8, !tbaa !235
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i64, ptr %15, align 8, !tbaa !239
  %29 = icmp eq i64 %28, 0
  %30 = load ptr, ptr %16, align 8
  %31 = select i1 %29, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %30
  %32 = load i64, ptr %17, align 8, !tbaa !239
  %33 = icmp eq i64 %32, 0
  %34 = load ptr, ptr %18, align 8
  %35 = select i1 %33, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %34
  %36 = invoke noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %31, ptr noundef %35, i32 noundef %24)
          to label %37 unwind label %47

37:                                               ; preds = %27
  br i1 %36, label %38, label %49

38:                                               ; preds = %37
  %39 = load i64, ptr %15, align 8, !tbaa !239
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, ptr %15, align 8, !tbaa !239
  %43 = sub i64 %42, %39
  store i64 %43, ptr %15, align 8, !tbaa !239
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, ptr %13, align 8, !tbaa !235
  br label %49

45:                                               ; preds = %4
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %105

47:                                               ; preds = %27, %22, %19
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %96

49:                                               ; preds = %23, %44, %37
  %50 = invoke noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %51 unwind label %72

51:                                               ; preds = %49
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %51
  %54 = load ptr, ptr %1, align 8, !tbaa !80
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef nonnull align 8 dereferenceable(36) ptr %56(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %58 unwind label %74

58:                                               ; preds = %53
  %59 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %57, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %60 unwind label %76

60:                                               ; preds = %58
  %61 = load ptr, ptr %1, align 8, !tbaa !80
  %62 = getelementptr inbounds ptr, ptr %61, i64 48
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %59, ptr noundef null, ptr noundef null)
          to label %64 unwind label %76

64:                                               ; preds = %60
  %65 = load ptr, ptr %1, align 8, !tbaa !80
  %66 = getelementptr inbounds ptr, ptr %65, i64 6
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef zeroext i1 %67(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %85 unwind label %69

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #22
  unreachable

72:                                               ; preds = %85, %49
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %96

74:                                               ; preds = %53
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %96

76:                                               ; preds = %60, %58
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load ptr, ptr %1, align 8, !tbaa !80
  %79 = getelementptr inbounds ptr, ptr %78, i64 6
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef zeroext i1 %80(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %96 unwind label %82

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  call void @__clang_call_terminate(ptr %84) #22
  unreachable

85:                                               ; preds = %64, %51
  %86 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019addOrUpdateByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %50)
          to label %19 unwind label %72, !llvm.loop !240

87:                                               ; preds = %21
  %88 = load ptr, ptr %1, align 8, !tbaa !80
  %89 = getelementptr inbounds ptr, ptr %88, i64 6
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %95 unwind label %92

92:                                               ; preds = %87
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #22
  unreachable

95:                                               ; preds = %87
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

96:                                               ; preds = %47, %72, %76, %74
  %97 = phi { ptr, i32 } [ %48, %47 ], [ %73, %72 ], [ %75, %74 ], [ %77, %76 ]
  %98 = load ptr, ptr %1, align 8, !tbaa !80
  %99 = getelementptr inbounds ptr, ptr %98, i64 6
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef zeroext i1 %100(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %105 unwind label %102

102:                                              ; preds = %96
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #22
  unreachable

105:                                              ; preds = %96, %45
  %106 = phi { ptr, i32 } [ %46, %45 ], [ %97, %96 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %106
}

declare void @_ZN11xalanc_1_1015StringTokenizerC1EPKtRKNS_14XalanDOMStringEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i1 noundef zeroext) unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1019addOrUpdateByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #10 comdat !prof !78 {
  %5 = alloca %"class.xalanc_1_10::NamespacesHandler::Namespace", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !155
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4, %16
  %13 = phi ptr [ %17, %16 ], [ %7, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %13, i64 1
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %19, label %12, !llvm.loop !241

19:                                               ; preds = %12, %16, %4
  %20 = phi ptr [ null, %4 ], [ %13, %12 ], [ null, %16 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %23 = load ptr, ptr %0, align 8, !tbaa !80
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef nonnull align 8 dereferenceable(36) ptr %25(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %27 = load ptr, ptr %0, align 8, !tbaa !80
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef nonnull align 8 dereferenceable(36) ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %3)
  store ptr %26, ptr %5, align 8, !tbaa !164
  %31 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %5, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !157
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %41

32:                                               ; preds = %19
  %33 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !157
  %35 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %34, ptr noundef nonnull align 8 dereferenceable(36) %3)
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef nonnull align 8 dereferenceable(36) ptr %39(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %3)
  store ptr %40, ptr %33, align 8, !tbaa !157
  br label %41

41:                                               ; preds = %32, %36, %22
  %42 = phi i1 [ true, %22 ], [ true, %36 ], [ false, %32 ]
  ret i1 %42
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler31processExtensionElementPrefixesERNS_29StylesheetConstructionContextEPKtRKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %7 = load ptr, ptr @_ZN11xalanc_1_109Constants35DEFAULT_WHITESPACE_SEPARATOR_STRINGE, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1015StringTokenizerC1EPKtRKNS_14XalanDOMStringEb(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %7, i1 noundef zeroext false)
  %8 = load ptr, ptr %1, align 8, !tbaa !80
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %12 unwind label %47

12:                                               ; preds = %4
  %13 = load ptr, ptr @_ZN11xalanc_1_109Constants22ATTRVAL_DEFAULT_PREFIXE, align 8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %20 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  br label %21

21:                                               ; preds = %12, %93
  %22 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %23 unwind label %49

23:                                               ; preds = %21
  br i1 %22, label %24, label %96

24:                                               ; preds = %23
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %25 unwind label %49

25:                                               ; preds = %24
  %26 = load i32, ptr %14, align 8, !tbaa !235
  %27 = load i32, ptr %15, align 8, !tbaa !235
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i64, ptr %16, align 8, !tbaa !239
  %31 = icmp eq i64 %30, 0
  %32 = load ptr, ptr %17, align 8
  %33 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %32
  %34 = load i64, ptr %18, align 8, !tbaa !239
  %35 = icmp eq i64 %34, 0
  %36 = load ptr, ptr %19, align 8
  %37 = select i1 %35, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36
  %38 = invoke noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %33, ptr noundef %37, i32 noundef %26)
          to label %39 unwind label %49

39:                                               ; preds = %29
  br i1 %38, label %40, label %51

40:                                               ; preds = %39
  %41 = load i64, ptr %16, align 8, !tbaa !239
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %16, align 8, !tbaa !239
  %45 = sub i64 %44, %41
  store i64 %45, ptr %16, align 8, !tbaa !239
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, ptr %14, align 8, !tbaa !235
  br label %51

47:                                               ; preds = %4
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %114

49:                                               ; preds = %29, %24, %21
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %105

51:                                               ; preds = %25, %46, %39
  %52 = invoke noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %53 unwind label %74

53:                                               ; preds = %51
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %53
  %56 = load ptr, ptr %1, align 8, !tbaa !80
  %57 = getelementptr inbounds ptr, ptr %56, i64 5
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef nonnull align 8 dereferenceable(36) ptr %58(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %60 unwind label %76

60:                                               ; preds = %55
  %61 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %59, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %62 unwind label %78

62:                                               ; preds = %60
  %63 = load ptr, ptr %1, align 8, !tbaa !80
  %64 = getelementptr inbounds ptr, ptr %63, i64 48
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %61, ptr noundef null, ptr noundef null)
          to label %66 unwind label %78

66:                                               ; preds = %62
  %67 = load ptr, ptr %1, align 8, !tbaa !80
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef zeroext i1 %69(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %59)
          to label %87 unwind label %71

71:                                               ; preds = %66
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #22
  unreachable

74:                                               ; preds = %51
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %105

76:                                               ; preds = %55
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %105

78:                                               ; preds = %62, %60
  %79 = landingpad { ptr, i32 }
          cleanup
  %80 = load ptr, ptr %1, align 8, !tbaa !80
  %81 = getelementptr inbounds ptr, ptr %80, i64 6
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef zeroext i1 %82(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %59)
          to label %105 unwind label %84

84:                                               ; preds = %78
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #22
  unreachable

87:                                               ; preds = %66, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %88 = load ptr, ptr %1, align 8, !tbaa !80
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef nonnull align 8 dereferenceable(36) ptr %90(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %52)
          to label %92 unwind label %94

92:                                               ; preds = %87
  store ptr %91, ptr %6, align 8, !tbaa !131
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %93 unwind label %94

93:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %21, !llvm.loop !242

94:                                               ; preds = %92, %87
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %105

96:                                               ; preds = %23
  %97 = load ptr, ptr %1, align 8, !tbaa !80
  %98 = getelementptr inbounds ptr, ptr %97, i64 6
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef zeroext i1 %99(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %104 unwind label %101

101:                                              ; preds = %96
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #22
  unreachable

104:                                              ; preds = %96
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

105:                                              ; preds = %49, %94, %74, %78, %76
  %106 = phi { ptr, i32 } [ %50, %49 ], [ %95, %94 ], [ %75, %74 ], [ %77, %76 ], [ %79, %78 ]
  %107 = load ptr, ptr %1, align 8, !tbaa !80
  %108 = getelementptr inbounds ptr, ptr %107, i64 6
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef zeroext i1 %109(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %114 unwind label %111

111:                                              ; preds = %105
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  call void @__clang_call_terminate(ptr %113) #22
  unreachable

114:                                              ; preds = %105, %47
  %115 = phi { ptr, i32 } [ %48, %47 ], [ %106, %105 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %115
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !243 {
  %7 = icmp eq ptr %4, null
  br i1 %7, label %11, label %8, !prof !244

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %4, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1017NamespacesHandler20copyNamespaceAliasesERKNS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(136) %9)
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %4, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1017NamespacesHandler26copyExtensionNamespaceURIsERKNS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
  tail call void @_ZN11xalanc_1_1017NamespacesHandler25copyExcludeResultPrefixesERKNS_11XalanVectorINS0_9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %11

11:                                               ; preds = %8, %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !235
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15, !prof !244

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !239
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20, !prof !245
  br label %22

22:                                               ; preds = %25, %15
  %23 = phi ptr [ %21, %15 ], [ %26, %25 ]
  %24 = load i16, ptr %23, align 2, !tbaa !246
  switch i16 %24, label %25 [
    i16 58, label %27
    i16 0, label %27
  ], !prof !248

25:                                               ; preds = %22
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  br label %22, !llvm.loop !249

27:                                               ; preds = %22, %22
  %28 = ptrtoint ptr %23 to i64
  %29 = ptrtoint ptr %21 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %11, %27
  %34 = phi i32 [ %32, %27 ], [ 0, %11 ]
  %35 = load ptr, ptr %1, align 8, !tbaa !80
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef nonnull align 8 dereferenceable(36) ptr %37(ptr noundef nonnull align 8 dereferenceable(16) %1), !prof !250
  %39 = load i32, ptr %12, align 8, !tbaa !235
  %40 = icmp ult i32 %34, %39
  br i1 %40, label %41, label %56, !prof !251

41:                                               ; preds = %33
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %38, i32 noundef 0, i32 noundef %34)
          to label %56 unwind label %44, !prof !252

42:                                               ; preds = %66
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %41, %56, %77
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %43, %42 ], [ %45, %44 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !80
  %49 = getelementptr inbounds ptr, ptr %48, i64 6
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %38)
          to label %55 unwind label %52

52:                                               ; preds = %46
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #22
  unreachable

55:                                               ; preds = %46
  resume { ptr, i32 } %47

56:                                               ; preds = %41, %33
  invoke void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringEPKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef %5)
          to label %57 unwind label %44, !prof !253

57:                                               ; preds = %56
  br i1 %2, label %58, label %77, !prof !253

58:                                               ; preds = %57
  %59 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !163
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62, !prof !254

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !113
  %65 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %64, i64 %60
  br label %66

66:                                               ; preds = %62, %74
  %67 = phi ptr [ %75, %74 ], [ %64, %62 ]
  %68 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !157
  %70 = invoke noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler17getNamespaceAliasERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(36) %69)
          to label %71 unwind label %42, !prof !217

71:                                               ; preds = %66
  %72 = icmp eq ptr %70, null
  br i1 %72, label %74, label %73, !prof !217

73:                                               ; preds = %71
  store ptr %70, ptr %68, align 8, !tbaa !157
  br label %74

74:                                               ; preds = %73, %71
  %75 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %67, i64 1
  %76 = icmp eq ptr %75, %65
  br i1 %76, label %77, label %66, !prof !255, !llvm.loop !256

77:                                               ; preds = %74, %58, %57
  invoke void @_ZN11xalanc_1_1017NamespacesHandler26createResultAttributeNamesERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %78 unwind label %44, !prof !253

78:                                               ; preds = %77
  %79 = load ptr, ptr %1, align 8, !tbaa !80
  %80 = getelementptr inbounds ptr, ptr %79, i64 6
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef zeroext i1 %81(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %38)
          to label %86 unwind label %83, !prof !257

83:                                               ; preds = %78
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  tail call void @__clang_call_terminate(ptr %85) #22
  unreachable

86:                                               ; preds = %78
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler26copyExtensionNamespaceURIsERKNS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !151
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %37, label %6, !prof !200

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !151
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %37

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds ptr, ptr %15, i64 %4
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 3
  br label %18

18:                                               ; preds = %13, %34
  %19 = phi ptr [ %15, %13 ], [ %35, %34 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  %21 = load ptr, ptr %17, align 8, !tbaa !109
  %22 = load i64, ptr %8, align 8, !tbaa !151
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  br label %24

24:                                               ; preds = %27, %18
  %25 = phi ptr [ %21, %18 ], [ %32, %27 ]
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !131
  %29 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %28)
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %25, i64 %31
  br i1 %29, label %34, label %24, !llvm.loop !153

33:                                               ; preds = %24
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %34

34:                                               ; preds = %27, %33
  %35 = getelementptr inbounds ptr, ptr %19, i64 1
  %36 = icmp eq ptr %35, %16
  br i1 %36, label %37, label %18, !llvm.loop !258

37:                                               ; preds = %34, %11, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler25copyExcludeResultPrefixesERKNS_11XalanVectorINS0_9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !155
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %40, label %6, !prof !259

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !155
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12, !prof !260

10:                                               ; preds = %6
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %40

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %14, i64 %4
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %12, %37
  %18 = phi ptr [ %14, %12 ], [ %38, %37 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = load ptr, ptr %16, align 8, !tbaa !117
  %21 = load i64, ptr %7, align 8, !tbaa !155
  %22 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %20, i64 %21
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %36, label %24, !prof !261

24:                                               ; preds = %17
  %25 = load ptr, ptr %20, align 8, !tbaa !164
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef nonnull align 8 dereferenceable(36) %19)
  br i1 %26, label %34, label %27, !prof !156

27:                                               ; preds = %24, %31
  %28 = phi ptr [ %29, %31 ], [ %20, %24 ]
  %29 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %28, i64 1
  %30 = icmp eq ptr %29, %22
  br i1 %30, label %36, label %31, !prof !262, !llvm.loop !159

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !164
  %33 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %19)
  br i1 %33, label %34, label %27, !prof !156, !llvm.loop !159

34:                                               ; preds = %31, %24
  %35 = phi i1 [ %23, %24 ], [ %30, %31 ]
  br i1 %35, label %36, label %37, !prof !262

36:                                               ; preds = %27, %17, %34
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %18)
  br label %37

37:                                               ; preds = %36, %34
  %38 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %18, i64 1
  %39 = icmp eq ptr %38, %15
  br i1 %39, label %40, label %17, !prof !263, !llvm.loop !264

40:                                               ; preds = %37, %10, %2
  ret void
}

declare void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringEPKNS0_13PrefixCheckerE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #8 align 2 !prof !243 {
  %5 = alloca %"class.xalanc_1_10::NamespacesHandler::Namespace", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !155
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %91, label %9, !prof !244

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !163
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %91, label %14, !prof !265

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8, !tbaa !113
  br label %16

16:                                               ; preds = %14, %85
  %17 = phi ptr [ %15, %14 ], [ %86, %85 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  %19 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !157
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %21, label %80, label %22, !prof !266

22:                                               ; preds = %16
  %23 = icmp eq ptr %3, null
  br i1 %23, label %29, label %24, !prof !267

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %18), !prof !268
  br i1 %28, label %80, label %29, !prof !269

29:                                               ; preds = %24, %22
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !117
  %32 = load i64, ptr %6, align 8, !tbaa !155
  %33 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %31, i64 %32
  %34 = icmp eq i64 %32, 0
  br i1 %34, label %43, label %35, !prof !270

35:                                               ; preds = %29, %40
  %36 = phi ptr [ %41, %40 ], [ %31, %29 ]
  %37 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !157
  %39 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef nonnull align 8 dereferenceable(36) %20)
  br i1 %39, label %43, label %40, !prof !266

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %36, i64 1
  %42 = icmp eq ptr %41, %33
  br i1 %42, label %43, label %35, !prof !255, !llvm.loop !159

43:                                               ; preds = %35, %40, %29
  %44 = phi ptr [ null, %29 ], [ %36, %35 ], [ null, %40 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %61, !prof !217

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 3
  %48 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %49 = load ptr, ptr %47, align 8, !tbaa !109
  %50 = load i64, ptr %48, align 8, !tbaa !151
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  br label %52

52:                                               ; preds = %55, %46
  %53 = phi ptr [ %49, %46 ], [ %60, %55 ]
  %54 = icmp eq ptr %53, %51
  br i1 %54, label %80, label %55, !prof !217

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 8, !tbaa !131
  %57 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %56)
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %53, i64 %59
  br i1 %57, label %61, label %52, !llvm.loop !153

61:                                               ; preds = %55, %43
  %62 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %5, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %63 = load ptr, ptr %1, align 8, !tbaa !80
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef nonnull align 8 dereferenceable(36) ptr %65(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %18)
  %67 = load ptr, ptr %1, align 8, !tbaa !80
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  %70 = call noundef nonnull align 8 dereferenceable(36) ptr %69(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %20)
  store ptr %66, ptr %5, align 8, !tbaa !164
  store ptr %70, ptr %62, align 8, !tbaa !157
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  %71 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %17, i64 1
  %72 = load ptr, ptr %10, align 8, !tbaa !113
  %73 = load i64, ptr %11, align 8, !tbaa !163
  %74 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %72, i64 %73
  %75 = icmp eq ptr %74, %71
  br i1 %75, label %82, label %76

76:                                               ; preds = %61
  %77 = ptrtoint ptr %71 to i64
  %78 = ptrtoint ptr %74 to i64
  %79 = sub i64 %78, %77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %17, ptr nonnull align 8 %71, i64 %79, i1 false)
  br label %82

80:                                               ; preds = %52, %24, %16
  %81 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %17, i64 1
  br label %85

82:                                               ; preds = %61, %76
  %83 = load i64, ptr %11, align 8, !tbaa !163
  %84 = add i64 %83, -1
  store i64 %84, ptr %11, align 8, !tbaa !163
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi ptr [ %81, %80 ], [ %17, %82 ]
  %87 = load ptr, ptr %10, align 8, !tbaa !113
  %88 = load i64, ptr %11, align 8, !tbaa !163
  %89 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %87, i64 %88
  %90 = icmp eq ptr %86, %89
  br i1 %90, label %91, label %16, !prof !217, !llvm.loop !271

91:                                               ; preds = %85, %9, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler23processNamespaceAliasesEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #10 align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !163
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %7, i64 %3
  br label %9

9:                                                ; preds = %5, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %5 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1017NamespacesHandler17getNamespaceAliasERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(36) %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store ptr %13, ptr %11, align 8, !tbaa !157
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %10, i64 1
  %18 = icmp eq ptr %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !256

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler26createResultAttributeNamesERNS_29StylesheetConstructionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !243 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !163
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %77, label %6, !prof !254

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %8, i64 %4
  %10 = load ptr, ptr %1, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(16) %1), !prof !272
  %14 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE, align 8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 2
  %16 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8
  %17 = icmp eq ptr %16, %13
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %16, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %20 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  br label %21

21:                                               ; preds = %6, %64
  %22 = phi ptr [ %8, %6 ], [ %67, %64 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !164
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !235
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %64, label %27, !prof !266

27:                                               ; preds = %21
  %28 = load i32, ptr %14, align 4, !tbaa !273
  %29 = add i32 %25, 2
  %30 = add i32 %29, %28
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr %15, align 8, !tbaa !274
  %33 = icmp ult i64 %32, %31
  br i1 %33, label %34, label %35, !prof !266

34:                                               ; preds = %27
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %31)
          to label %35 unwind label %54

35:                                               ; preds = %27, %34
  br i1 %17, label %40, label %36, !prof !266

36:                                               ; preds = %35
  %37 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %38 unwind label %54, !prof !217

38:                                               ; preds = %36
  %39 = load i32, ptr %18, align 8, !tbaa !235
  store i32 %39, ptr %19, align 8, !tbaa !235
  br label %40

40:                                               ; preds = %35, %38
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !239
  %43 = icmp eq i64 %42, 0
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = select i1 %43, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %45, !prof !266
  %47 = load i32, ptr %24, align 8, !tbaa !235
  %48 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef %46, i32 noundef %47)
          to label %49 unwind label %54, !prof !217

49:                                               ; preds = %40
  %50 = load ptr, ptr %1, align 8, !tbaa !80
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef nonnull align 8 dereferenceable(36) ptr %52(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %64 unwind label %54, !prof !275

54:                                               ; preds = %40, %36, %34, %49
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load ptr, ptr %1, align 8, !tbaa !80
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %63 unwind label %60

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #22
  unreachable

63:                                               ; preds = %54
  resume { ptr, i32 } %55

64:                                               ; preds = %21, %49
  %65 = phi ptr [ %53, %49 ], [ %20, %21 ]
  %66 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %22, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !167
  %67 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %22, i64 1
  %68 = icmp eq ptr %67, %9
  br i1 %68, label %69, label %21, !prof !255, !llvm.loop !276

69:                                               ; preds = %64
  %70 = load ptr, ptr %1, align 8, !tbaa !80
  %71 = getelementptr inbounds ptr, ptr %70, i64 6
  %72 = load ptr, ptr %71, align 8
  %73 = invoke noundef zeroext i1 %72(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %77 unwind label %74, !prof !277

74:                                               ; preds = %69
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  tail call void @__clang_call_terminate(ptr %76) #22
  unreachable

77:                                               ; preds = %69, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(232) ptr @_ZN11xalanc_1_1017NamespacesHandleraSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #10 align 2 !prof !78 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %9 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
  %12 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  %14 = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 8 dereferenceable(136) %12)
  br label %15

15:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !279

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !155
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !280

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !84
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !84
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !155
  %16 = load i64, ptr %6, align 8, !tbaa !115
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  %19 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %19, ptr %0, align 8, !tbaa !84
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !155
  store i64 %21, ptr %14, align 8, !tbaa !155
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !115
  store i64 %23, ptr %6, align 8, !tbaa !115
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  store ptr %25, ptr %17, align 8, !tbaa !117
  store ptr %13, ptr %3, align 8, !tbaa !84
  store i64 %15, ptr %20, align 8, !tbaa !155
  store i64 %16, ptr %22, align 8, !tbaa !115
  store ptr %18, ptr %24, align 8, !tbaa !117
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !280

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !117
  %38 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !155
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !117
  %48 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !155
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !155
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !117
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !117
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !89
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !89
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !163
  %16 = load i64, ptr %6, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = load ptr, ptr %3, align 8, !tbaa !89
  store ptr %19, ptr %0, align 8, !tbaa !89
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !163
  store i64 %21, ptr %14, align 8, !tbaa !163
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !111
  store i64 %23, ptr %6, align 8, !tbaa !111
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  store ptr %25, ptr %17, align 8, !tbaa !113
  store ptr %13, ptr %3, align 8, !tbaa !89
  store i64 %15, ptr %20, align 8, !tbaa !163
  store i64 %16, ptr %22, align 8, !tbaa !111
  store ptr %18, ptr %24, align 8, !tbaa !113
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !163
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  %48 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !163
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !163
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !113
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !151
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !91
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !91
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !151
  %16 = load i64, ptr %6, align 8, !tbaa !107
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = load ptr, ptr %3, align 8, !tbaa !91
  store ptr %19, ptr %0, align 8, !tbaa !91
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !151
  store i64 %21, ptr %14, align 8, !tbaa !151
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !107
  store i64 %23, ptr %6, align 8, !tbaa !107
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  store ptr %25, ptr %17, align 8, !tbaa !109
  store ptr %13, ptr %3, align 8, !tbaa !91
  store i64 %15, ptr %20, align 8, !tbaa !151
  store i64 %16, ptr %22, align 8, !tbaa !107
  store ptr %18, ptr %24, align 8, !tbaa !109
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !151
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds ptr, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !109
  %48 = getelementptr inbounds ptr, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !151
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !151
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !109
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !109
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanMap", align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #21
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !102
  store i64 %9, ptr %6, align 8, !tbaa !102
  store i64 %7, ptr %8, align 8, !tbaa !102
  %10 = load ptr, ptr %4, align 8, !tbaa !93
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  store ptr %12, ptr %4, align 8, !tbaa !93
  store ptr %10, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  %14 = load i64, ptr %13, align 8, !tbaa !281
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 9
  %16 = load i64, ptr %15, align 8, !tbaa !281
  store i64 %16, ptr %13, align 8, !tbaa !281
  store i64 %14, ptr %15, align 8, !tbaa !281
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 10
  %20 = load i64, ptr %19, align 8, !tbaa !105
  store i64 %20, ptr %17, align 8, !tbaa !105
  store i64 %18, ptr %19, align 8, !tbaa !105
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 6
  %23 = load ptr, ptr %21, align 8, !tbaa !131
  %24 = load ptr, ptr %22, align 8, !tbaa !131
  store ptr %24, ptr %21, align 8, !tbaa !131
  store ptr %23, ptr %22, align 8, !tbaa !131
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 6, i32 1
  %27 = load ptr, ptr %25, align 8, !tbaa !131
  %28 = load ptr, ptr %26, align 8, !tbaa !131
  store ptr %28, ptr %25, align 8, !tbaa !131
  store ptr %27, ptr %26, align 8, !tbaa !131
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 2
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 6, i32 2
  %31 = load ptr, ptr %29, align 8, !tbaa !131
  %32 = load ptr, ptr %30, align 8, !tbaa !131
  store ptr %32, ptr %29, align 8, !tbaa !131
  store ptr %31, ptr %30, align 8, !tbaa !131
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 7
  %35 = load ptr, ptr %33, align 8, !tbaa !131
  %36 = load ptr, ptr %34, align 8, !tbaa !131
  store ptr %36, ptr %33, align 8, !tbaa !131
  store ptr %35, ptr %34, align 8, !tbaa !131
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 7, i32 1
  %39 = load ptr, ptr %37, align 8, !tbaa !131
  %40 = load ptr, ptr %38, align 8, !tbaa !131
  store ptr %40, ptr %37, align 8, !tbaa !131
  store ptr %39, ptr %38, align 8, !tbaa !131
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 2
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 7, i32 2
  %43 = load ptr, ptr %41, align 8, !tbaa !131
  %44 = load ptr, ptr %42, align 8, !tbaa !131
  store ptr %44, ptr %41, align 8, !tbaa !131
  store ptr %43, ptr %42, align 8, !tbaa !131
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8
  %47 = load ptr, ptr %45, align 8, !tbaa !104
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !185
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !196
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !197
  %54 = load ptr, ptr %46, align 8, !tbaa !104
  store ptr %54, ptr %45, align 8, !tbaa !104
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !185
  store i64 %56, ptr %48, align 8, !tbaa !185
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !196
  store i64 %58, ptr %50, align 8, !tbaa !196
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %3, i64 0, i32 8, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !197
  store ptr %60, ptr %52, align 8, !tbaa !197
  store ptr %47, ptr %46, align 8, !tbaa !104
  store i64 %49, ptr %55, align 8, !tbaa !185
  store i64 %51, ptr %57, align 8, !tbaa !196
  store ptr %53, ptr %59, align 8, !tbaa !197
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %3) #21
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #21
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017NamespacesHandler22isExcludedNamespaceURIERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #10 align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !155
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %4, i64 %6
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %14
  %10 = phi ptr [ %15, %14 ], [ %4, %2 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !llvm.loop !159

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %10, %9 ], [ null, %14 ]
  %19 = icmp ne ptr %18, null
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ false, %2 ], [ %19, %17 ]
  ret i1 %21
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 !prof !282 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !163
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %37, label %7, !prof !283

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %9, i64 %5
  br label %11

11:                                               ; preds = %7, %34
  %12 = phi ptr [ %35, %34 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  br i1 %2, label %14, label %18, !prof !283

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !235
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %14, %11
  %19 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !157
  %21 = load ptr, ptr %1, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 72
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %13), !prof !284
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !285

26:                                               ; preds = %18
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %24)
  br i1 %27, label %34, label %28, !prof !286

28:                                               ; preds = %26, %18
  %29 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %12, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !167
  %31 = load ptr, ptr %1, align 8, !tbaa !80
  %32 = getelementptr inbounds ptr, ptr %31, i64 68
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull align 8 dereferenceable(36) %20), !prof !287
  br label %34

34:                                               ; preds = %14, %26, %28
  %35 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %12, i64 1
  %36 = icmp eq ptr %35, %10
  br i1 %36, label %37, label %11, !prof !288, !llvm.loop !289

37:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017NamespacesHandler10findStringERKNS_14XalanDOMStringERKNS_11XalanVectorIPS2_NS_31MemoryManagedConstructionTraitsIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #10 align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !151
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  br label %8

8:                                                ; preds = %11, %2
  %9 = phi ptr [ %4, %2 ], [ %16, %11 ]
  %10 = icmp ne ptr %9, %7
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !131
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %12)
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %9, i64 %15
  br i1 %13, label %17, label %8, !llvm.loop !153

17:                                               ; preds = %11, %8
  ret i1 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler5clearEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #10 align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !155
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !tbaa !155
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !163
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i64 0, ptr %7, align 8, !tbaa !163
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !151
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i64 0, ptr %12, align 8, !tbaa !151
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %17)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #10 comdat align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1, %14
  %9 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !290
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i64 0, ptr %10, align 8, !tbaa !290
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %9, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !292

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  store i64 0, ptr %18, align 8, !tbaa !281
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017NamespacesHandler4swapERS0_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #10 align 2 !prof !78 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %10, ptr %0, align 8, !tbaa !84
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !155
  store i64 %12, ptr %4, align 8, !tbaa !155
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !115
  store i64 %14, ptr %6, align 8, !tbaa !115
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  store ptr %16, ptr %8, align 8, !tbaa !117
  store ptr %3, ptr %1, align 8, !tbaa !84
  store i64 %5, ptr %11, align 8, !tbaa !155
  store i64 %7, ptr %13, align 8, !tbaa !115
  store ptr %9, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %17, align 8, !tbaa !89
  %20 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !163
  %22 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !111
  %24 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = load ptr, ptr %18, align 8, !tbaa !89
  store ptr %26, ptr %17, align 8, !tbaa !89
  %27 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !163
  store i64 %28, ptr %20, align 8, !tbaa !163
  %29 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 1, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !111
  store i64 %30, ptr %22, align 8, !tbaa !111
  %31 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !113
  store ptr %32, ptr %24, align 8, !tbaa !113
  store ptr %19, ptr %18, align 8, !tbaa !89
  store i64 %21, ptr %27, align 8, !tbaa !163
  store i64 %23, ptr %29, align 8, !tbaa !111
  store ptr %25, ptr %31, align 8, !tbaa !113
  %33 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %33, align 8, !tbaa !91
  %36 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !151
  %38 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !107
  %40 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 2, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !109
  %42 = load ptr, ptr %34, align 8, !tbaa !91
  store ptr %42, ptr %33, align 8, !tbaa !91
  %43 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 2, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !151
  store i64 %44, ptr %36, align 8, !tbaa !151
  %45 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 2, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !107
  store i64 %46, ptr %38, align 8, !tbaa !107
  %47 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 2, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !109
  store ptr %48, ptr %40, align 8, !tbaa !109
  store ptr %35, ptr %34, align 8, !tbaa !91
  store i64 %37, ptr %43, align 8, !tbaa !151
  store i64 %39, ptr %45, align 8, !tbaa !107
  store ptr %41, ptr %47, align 8, !tbaa !109
  %49 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %0, i64 0, i32 3
  %50 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler", ptr %1, i64 0, i32 3
  tail call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(136) %49, ptr noundef nonnull align 8 dereferenceable(136) %50)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !102
  store i64 %6, ptr %3, align 8, !tbaa !102
  store i64 %4, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  store ptr %10, ptr %7, align 8, !tbaa !93
  store ptr %8, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !281
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 9
  %14 = load i64, ptr %13, align 8, !tbaa !281
  store i64 %14, ptr %11, align 8, !tbaa !281
  store i64 %12, ptr %13, align 8, !tbaa !281
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !105
  store i64 %18, ptr %15, align 8, !tbaa !105
  store i64 %16, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %21 = load ptr, ptr %19, align 8, !tbaa !131
  %22 = load ptr, ptr %20, align 8, !tbaa !131
  store ptr %22, ptr %19, align 8, !tbaa !131
  store ptr %21, ptr %20, align 8, !tbaa !131
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %25 = load ptr, ptr %23, align 8, !tbaa !131
  %26 = load ptr, ptr %24, align 8, !tbaa !131
  store ptr %26, ptr %23, align 8, !tbaa !131
  store ptr %25, ptr %24, align 8, !tbaa !131
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 2
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 2
  %29 = load ptr, ptr %27, align 8, !tbaa !131
  %30 = load ptr, ptr %28, align 8, !tbaa !131
  store ptr %30, ptr %27, align 8, !tbaa !131
  store ptr %29, ptr %28, align 8, !tbaa !131
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %33 = load ptr, ptr %31, align 8, !tbaa !131
  %34 = load ptr, ptr %32, align 8, !tbaa !131
  store ptr %34, ptr %31, align 8, !tbaa !131
  store ptr %33, ptr %32, align 8, !tbaa !131
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %37 = load ptr, ptr %35, align 8, !tbaa !131
  %38 = load ptr, ptr %36, align 8, !tbaa !131
  store ptr %38, ptr %35, align 8, !tbaa !131
  store ptr %37, ptr %36, align 8, !tbaa !131
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 2
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 2
  %41 = load ptr, ptr %39, align 8, !tbaa !131
  %42 = load ptr, ptr %40, align 8, !tbaa !131
  store ptr %42, ptr %39, align 8, !tbaa !131
  store ptr %41, ptr %40, align 8, !tbaa !131
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %43, align 8, !tbaa !104
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !185
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !196
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !197
  %52 = load ptr, ptr %44, align 8, !tbaa !104
  store ptr %52, ptr %43, align 8, !tbaa !104
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !185
  store i64 %54, ptr %46, align 8, !tbaa !185
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !196
  store i64 %56, ptr %48, align 8, !tbaa !196
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  store ptr %58, ptr %50, align 8, !tbaa !197
  store ptr %45, ptr %44, align 8, !tbaa !104
  store i64 %47, ptr %53, align 8, !tbaa !185
  store i64 %49, ptr %55, align 8, !tbaa !196
  store ptr %51, ptr %57, align 8, !tbaa !197
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !293 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !274
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !294

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = load ptr, ptr %0, align 8, !tbaa !296
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !297

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !78 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !296
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !239
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !299

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !296
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !239
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !274
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !300
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !295
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !295
  %20 = load i64, ptr %5, align 8, !tbaa !239
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !301

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !296
  %24 = load i64, ptr %10, align 8, !tbaa !239
  %25 = load i64, ptr %11, align 8, !tbaa !274
  %26 = load ptr, ptr %17, align 8, !tbaa !295
  store ptr %4, ptr %3, align 8, !tbaa !296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !274
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !295
  %33 = load ptr, ptr %3, align 8, !tbaa !296
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !302

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !80
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !303
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !296
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !274
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !295
  store ptr %53, ptr %0, align 8, !tbaa !296
  store i64 %52, ptr %5, align 8, !tbaa !239
  store i64 %51, ptr %55, align 8, !tbaa !274
  store ptr %50, ptr %57, align 8, !tbaa !295
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !304

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !80
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !305

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #22
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !306 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !296
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !239
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !299

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !296
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !239
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !274
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !307
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !295
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !295
  %24 = load i64, ptr %9, align 8, !tbaa !239
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !301

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !296
  %28 = load i64, ptr %6, align 8, !tbaa !239
  %29 = load i64, ptr %7, align 8, !tbaa !274
  %30 = load ptr, ptr %8, align 8, !tbaa !295
  %31 = load ptr, ptr %5, align 8, !tbaa !296
  store ptr %31, ptr %0, align 8, !tbaa !296
  %32 = load i64, ptr %14, align 8, !tbaa !239
  store i64 %32, ptr %6, align 8, !tbaa !239
  %33 = load i64, ptr %15, align 8, !tbaa !274
  store i64 %33, ptr %7, align 8, !tbaa !274
  %34 = load ptr, ptr %21, align 8, !tbaa !295
  store ptr %34, ptr %8, align 8, !tbaa !295
  store ptr %27, ptr %5, align 8, !tbaa !296
  store i64 %28, ptr %14, align 8, !tbaa !239
  store i64 %29, ptr %15, align 8, !tbaa !274
  store ptr %30, ptr %21, align 8, !tbaa !295
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !301

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !274
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !295
  %50 = load ptr, ptr %5, align 8, !tbaa !296
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !302

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !80
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !308
  store ptr %65, ptr %8, align 8, !tbaa !295
  store i64 %3, ptr %7, align 8, !tbaa !274
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !309 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !310

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !239
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !295
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !274
  br i1 %18, label %21, label %39, !prof !311

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !312

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !313

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !295
  %28 = load i64, ptr %12, align 8, !tbaa !239
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !246
  store i16 %34, ptr %32, align 2, !tbaa !246
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !314, !llvm.loop !315

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !316

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !296
  store ptr %42, ptr %5, align 8, !tbaa !296
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !239
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !274
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !317
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !295
  %51 = load i64, ptr %43, align 8, !tbaa !239
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !295
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !318

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !295
  %56 = load i64, ptr %43, align 8, !tbaa !239
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !318

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !295
  %60 = load i64, ptr %43, align 8, !tbaa !239
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !295
  %63 = load i64, ptr %12, align 8, !tbaa !239
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !318

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !296
  %67 = load i64, ptr %12, align 8, !tbaa !239
  %68 = load i64, ptr %19, align 8, !tbaa !274
  %69 = load ptr, ptr %15, align 8, !tbaa !295
  %70 = load ptr, ptr %5, align 8, !tbaa !296
  store ptr %70, ptr %0, align 8, !tbaa !296
  %71 = load i64, ptr %43, align 8, !tbaa !239
  store i64 %71, ptr %12, align 8, !tbaa !239
  %72 = load i64, ptr %44, align 8, !tbaa !274
  store i64 %72, ptr %19, align 8, !tbaa !274
  %73 = load ptr, ptr %50, align 8, !tbaa !295
  store ptr %73, ptr %15, align 8, !tbaa !295
  store ptr %66, ptr %5, align 8, !tbaa !296
  store i64 %67, ptr %43, align 8, !tbaa !239
  store i64 %68, ptr %44, align 8, !tbaa !274
  store ptr %69, ptr %50, align 8, !tbaa !295
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !319

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !80
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !320

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !274
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !295
  %89 = load ptr, ptr %5, align 8, !tbaa !296
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !321

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !322

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !322

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !323, !llvm.loop !324

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !325, !llvm.loop !326

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !327
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
  br i1 %123, label %124, label %120, !llvm.loop !328

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
  store i64 %36, ptr %12, align 8, !tbaa !239
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !329 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !239
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !274
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !330

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !295
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !246
  store i16 %13, ptr %12, align 2, !tbaa !246
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !239
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !296
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !296
  %24 = load i64, ptr %4, align 8, !tbaa !239
  %25 = load i64, ptr %6, align 8, !tbaa !274
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !295
  %28 = load ptr, ptr %3, align 8, !tbaa !296
  store ptr %28, ptr %0, align 8, !tbaa !296
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !239
  store i64 %30, ptr %4, align 8, !tbaa !239
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !274
  store i64 %32, ptr %6, align 8, !tbaa !274
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !295
  store ptr %34, ptr %26, align 8, !tbaa !295
  store ptr %23, ptr %3, align 8, !tbaa !296
  store i64 %24, ptr %29, align 8, !tbaa !239
  store i64 %25, ptr %31, align 8, !tbaa !274
  store ptr %27, ptr %33, align 8, !tbaa !295
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !274
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !295
  %52 = load ptr, ptr %3, align 8, !tbaa !296
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !331 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !332

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !274
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !239
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !333

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !296
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !296
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !239
  %16 = load i64, ptr %6, align 8, !tbaa !274
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !295
  %19 = load ptr, ptr %3, align 8, !tbaa !296
  store ptr %19, ptr %0, align 8, !tbaa !296
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !239
  store i64 %21, ptr %14, align 8, !tbaa !239
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !274
  store i64 %23, ptr %6, align 8, !tbaa !274
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !295
  store ptr %25, ptr %17, align 8, !tbaa !295
  store ptr %13, ptr %3, align 8, !tbaa !296
  store i64 %15, ptr %20, align 8, !tbaa !239
  store i64 %16, ptr %22, align 8, !tbaa !274
  store ptr %18, ptr %24, align 8, !tbaa !295
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !334

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !335

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !295
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !239
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !336

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !337

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !295
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !239
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !239
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !295
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !338

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !295
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !339
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !341

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !177, !noalias !342
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !173, !noalias !345
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !103, !noalias !345
  %14 = load ptr, ptr %13, align 8, !tbaa !80, !noalias !345
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !345
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !173, !noalias !345
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !177, !noalias !345
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !181, !noalias !345
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !173, !noalias !345
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !177, !noalias !348
  %27 = load ptr, ptr %0, align 8, !tbaa !103
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !351

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !352
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !177
  %40 = load ptr, ptr %0, align 8, !tbaa !103
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !173
  %46 = load ptr, ptr %0, align 8, !tbaa !103
  %47 = load ptr, ptr %46, align 8, !tbaa !80
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
  tail call void @__clang_call_terminate(ptr %59) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #8 comdat align 2 !prof !78 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !102
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !156

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %9 = load ptr, ptr %7, align 8, !tbaa !173, !noalias !356
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !103, !noalias !356
  %14 = load ptr, ptr %13, align 8, !tbaa !80, !noalias !356
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !356
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !356
  store ptr %17, ptr %7, align 8, !tbaa !173, !noalias !356
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !177, !noalias !356
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !181, !noalias !356
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !173, !noalias !356
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !177, !noalias !356
  store ptr %23, ptr %2, align 8, !tbaa !182, !alias.scope !353
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %24 = load i64, ptr %3, align 8, !tbaa !102
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !156, !llvm.loop !184

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !196
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !186

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #21
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !198

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !197
  %18 = load ptr, ptr %0, align 8, !tbaa !104
  %19 = load ptr, ptr %18, align 8, !tbaa !80
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
  tail call void @__clang_call_terminate(ptr %25) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS3_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !173, !noalias !359
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !103, !noalias !359
  %9 = load ptr, ptr %8, align 8, !tbaa !80, !noalias !359
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !359
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !359
  store ptr %12, ptr %3, align 8, !tbaa !173, !noalias !359
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !177, !noalias !359
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !181, !noalias !359
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !173, !noalias !359
  %17 = load ptr, ptr %1, align 8, !tbaa !182
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !177
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !177
  %25 = load ptr, ptr %20, align 8, !tbaa !177
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %25, i64 0, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !181
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  store ptr %28, ptr %22, align 8, !tbaa !181
  store ptr %16, ptr %20, align 8, !tbaa !177
  %29 = load ptr, ptr %27, align 8, !tbaa !181
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %17, ptr %30, align 8, !tbaa !177
  store ptr %17, ptr %27, align 8, !tbaa !181
  br label %31

31:                                               ; preds = %15, %19
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry", ptr %17, i64 0, i32 1
  store i8 1, ptr %32, align 8, !tbaa !362
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !102
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !102
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !363
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !364
  %8 = load ptr, ptr %0, align 8, !tbaa !365
  %9 = load ptr, ptr %8, align 8, !tbaa !80
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
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !366 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !150

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %13 = load i64, ptr %4, align 8, !tbaa !163
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !163
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !152
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !89
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %22 unwind label %44, !prof !152

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !89
  %24 = load i64, ptr %4, align 8, !tbaa !163
  %25 = load i64, ptr %6, align 8, !tbaa !111
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = load ptr, ptr %3, align 8, !tbaa !89
  store ptr %28, ptr %0, align 8, !tbaa !89
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !163
  store i64 %30, ptr %4, align 8, !tbaa !163
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !111
  store i64 %32, ptr %6, align 8, !tbaa !111
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !113
  store ptr %34, ptr %26, align 8, !tbaa !113
  store ptr %23, ptr %3, align 8, !tbaa !89
  store i64 %24, ptr %29, align 8, !tbaa !163
  store i64 %25, ptr %31, align 8, !tbaa !111
  store ptr %27, ptr %33, align 8, !tbaa !113
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !152

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !111
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = load ptr, ptr %3, align 8, !tbaa !89
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !89
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !163
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !152

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !89
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !163
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !111
  %16 = mul i64 %13, 24
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !113
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = load i64, ptr %9, align 8, !tbaa !163
  %25 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !89
  %28 = load i64, ptr %6, align 8, !tbaa !163
  %29 = load i64, ptr %7, align 8, !tbaa !111
  %30 = load ptr, ptr %8, align 8, !tbaa !113
  %31 = load ptr, ptr %5, align 8, !tbaa !89
  store ptr %31, ptr %0, align 8, !tbaa !89
  %32 = load i64, ptr %14, align 8, !tbaa !163
  store i64 %32, ptr %6, align 8, !tbaa !163
  %33 = load i64, ptr %15, align 8, !tbaa !111
  store i64 %33, ptr %7, align 8, !tbaa !111
  %34 = load ptr, ptr %21, align 8, !tbaa !113
  store ptr %34, ptr %8, align 8, !tbaa !113
  store ptr %27, ptr %5, align 8, !tbaa !89
  store i64 %28, ptr %14, align 8, !tbaa !163
  store i64 %29, ptr %15, align 8, !tbaa !111
  store ptr %30, ptr %21, align 8, !tbaa !113
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !111
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !113
  %50 = load ptr, ptr %5, align 8, !tbaa !89
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !154

60:                                               ; preds = %58
  %61 = mul i64 %3, 24
  %62 = load ptr, ptr %2, align 8, !tbaa !80
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !367
  store ptr %65, ptr %8, align 8, !tbaa !113
  store i64 %3, ptr %7, align 8, !tbaa !111
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 24
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %131, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !163
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !111
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %131, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !113
  %28 = load i64, ptr %12, align 8, !tbaa !163
  %29 = getelementptr %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false)
  %33 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !163
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !163
  %36 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %131, label %30, !llvm.loop !368

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %41 = load ptr, ptr %0, align 8, !tbaa !89
  store ptr %41, ptr %5, align 8, !tbaa !89
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !163
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !111
  %44 = mul i64 %14, 24
  %45 = load ptr, ptr %41, align 8, !tbaa !80
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !113
  %50 = load i64, ptr %42, align 8, !tbaa !163
  %51 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !113
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !113
  %55 = load i64, ptr %42, align 8, !tbaa !163
  %56 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !113
  %59 = load i64, ptr %42, align 8, !tbaa !163
  %60 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !113
  %62 = load i64, ptr %12, align 8, !tbaa !163
  %63 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !89
  %66 = load i64, ptr %12, align 8, !tbaa !163
  %67 = load i64, ptr %19, align 8, !tbaa !111
  %68 = load ptr, ptr %15, align 8, !tbaa !113
  %69 = load ptr, ptr %5, align 8, !tbaa !89
  store ptr %69, ptr %0, align 8, !tbaa !89
  %70 = load i64, ptr %42, align 8, !tbaa !163
  store i64 %70, ptr %12, align 8, !tbaa !163
  %71 = load i64, ptr %43, align 8, !tbaa !111
  store i64 %71, ptr %19, align 8, !tbaa !111
  %72 = load ptr, ptr %49, align 8, !tbaa !113
  store ptr %72, ptr %15, align 8, !tbaa !113
  store ptr %65, ptr %5, align 8, !tbaa !89
  store i64 %66, ptr %42, align 8, !tbaa !163
  store i64 %67, ptr %43, align 8, !tbaa !111
  store ptr %68, ptr %49, align 8, !tbaa !113
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !80
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #22
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %131

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !111
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !113
  %88 = load ptr, ptr %5, align 8, !tbaa !89
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #22
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %107)
  %108 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !369

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !370

114:                                              ; preds = %110, %104
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %99, i1 false)
  br label %131

115:                                              ; preds = %96
  %116 = sub nsw i64 0, %9
  %117 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %17, i64 %116
  %118 = icmp eq ptr %3, %2
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %120)
  %121 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %120, i64 1
  %122 = icmp eq ptr %121, %17
  br i1 %122, label %123, label %119, !llvm.loop !371

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %130, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %98
  %128 = sdiv exact i64 %127, -24
  %129 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::NamespaceExtended", ptr %17, i64 %128
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %129, ptr align 8 %1, i64 %127, i1 false)
  br label %130

130:                                              ; preds = %125, %123
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %131

131:                                              ; preds = %30, %24, %81, %114, %130, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !89
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !163
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = load ptr, ptr %3, align 8, !tbaa !89
  store ptr %12, ptr %0, align 8, !tbaa !89
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !163
  store i64 %14, ptr %6, align 8, !tbaa !163
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !111
  store i64 %16, ptr %8, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  store ptr %18, ptr %10, align 8, !tbaa !113
  store ptr %5, ptr %3, align 8, !tbaa !89
  store i64 %7, ptr %13, align 8, !tbaa !163
  store i64 %9, ptr %15, align 8, !tbaa !111
  store ptr %11, ptr %17, align 8, !tbaa !113
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !372 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !151
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !107
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !373

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !131
  store ptr %13, ptr %12, align 8, !tbaa !131
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !151
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !374
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !91
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !375

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !91
  %24 = load i64, ptr %4, align 8, !tbaa !151
  %25 = load i64, ptr %6, align 8, !tbaa !107
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !109
  %28 = load ptr, ptr %3, align 8, !tbaa !91
  store ptr %28, ptr %0, align 8, !tbaa !91
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !151
  store i64 %30, ptr %4, align 8, !tbaa !151
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !107
  store i64 %32, ptr %6, align 8, !tbaa !107
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  store ptr %34, ptr %26, align 8, !tbaa !109
  store ptr %23, ptr %3, align 8, !tbaa !91
  store i64 %24, ptr %29, align 8, !tbaa !151
  store i64 %25, ptr %31, align 8, !tbaa !107
  store ptr %27, ptr %33, align 8, !tbaa !109
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !374

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !376

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !107
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = load ptr, ptr %3, align 8, !tbaa !91
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !151
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !378

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !91
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !151
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !107
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !379
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !109
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = load i64, ptr %9, align 8, !tbaa !151
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !375

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !91
  %28 = load i64, ptr %6, align 8, !tbaa !151
  %29 = load i64, ptr %7, align 8, !tbaa !107
  %30 = load ptr, ptr %8, align 8, !tbaa !109
  %31 = load ptr, ptr %5, align 8, !tbaa !91
  store ptr %31, ptr %0, align 8, !tbaa !91
  %32 = load i64, ptr %14, align 8, !tbaa !151
  store i64 %32, ptr %6, align 8, !tbaa !151
  %33 = load i64, ptr %15, align 8, !tbaa !107
  store i64 %33, ptr %7, align 8, !tbaa !107
  %34 = load ptr, ptr %21, align 8, !tbaa !109
  store ptr %34, ptr %8, align 8, !tbaa !109
  store ptr %27, ptr %5, align 8, !tbaa !91
  store i64 %28, ptr %14, align 8, !tbaa !151
  store i64 %29, ptr %15, align 8, !tbaa !107
  store ptr %30, ptr %21, align 8, !tbaa !109
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !375

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !107
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !109
  %50 = load ptr, ptr %5, align 8, !tbaa !91
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !380

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !80
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !381
  store ptr %65, ptr %8, align 8, !tbaa !109
  store i64 %3, ptr %7, align 8, !tbaa !107
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !382 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !374

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !151
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !107
  br i1 %18, label %21, label %39, !prof !375

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !374

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !383

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !109
  %28 = load i64, ptr %12, align 8, !tbaa !151
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !131
  store ptr %34, ptr %32, align 8, !tbaa !131
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !384, !llvm.loop !385

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !91
  store ptr %42, ptr %5, align 8, !tbaa !91
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !151
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !107
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !109
  %51 = load i64, ptr %43, align 8, !tbaa !151
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !109
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !109
  %56 = load i64, ptr %43, align 8, !tbaa !151
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !109
  %60 = load i64, ptr %43, align 8, !tbaa !151
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !109
  %63 = load i64, ptr %12, align 8, !tbaa !151
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !91
  %67 = load i64, ptr %12, align 8, !tbaa !151
  %68 = load i64, ptr %19, align 8, !tbaa !107
  %69 = load ptr, ptr %15, align 8, !tbaa !109
  %70 = load ptr, ptr %5, align 8, !tbaa !91
  store ptr %70, ptr %0, align 8, !tbaa !91
  %71 = load i64, ptr %43, align 8, !tbaa !151
  store i64 %71, ptr %12, align 8, !tbaa !151
  %72 = load i64, ptr %44, align 8, !tbaa !107
  store i64 %72, ptr %19, align 8, !tbaa !107
  %73 = load ptr, ptr %50, align 8, !tbaa !109
  store ptr %73, ptr %15, align 8, !tbaa !109
  store ptr %66, ptr %5, align 8, !tbaa !91
  store i64 %67, ptr %43, align 8, !tbaa !151
  store i64 %68, ptr %44, align 8, !tbaa !107
  store ptr %69, ptr %50, align 8, !tbaa !109
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !80
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !107
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !109
  %89 = load ptr, ptr %5, align 8, !tbaa !91
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !386

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !387

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !388

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
  store i64 %36, ptr %12, align 8, !tbaa !151
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !389 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = load ptr, ptr %3, align 8, !tbaa !91
  store ptr %12, ptr %0, align 8, !tbaa !91
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !151
  store i64 %14, ptr %6, align 8, !tbaa !151
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !107
  store i64 %16, ptr %8, align 8, !tbaa !107
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  store ptr %18, ptr %10, align 8, !tbaa !109
  store ptr %5, ptr %3, align 8, !tbaa !91
  store i64 %7, ptr %13, align 8, !tbaa !151
  store i64 %9, ptr %15, align 8, !tbaa !107
  store ptr %11, ptr %17, align 8, !tbaa !109
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !390

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !102
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !185
  %10 = load ptr, ptr %2, align 8, !tbaa !131
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !239
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  %17 = load i16, ptr %16, align 2, !tbaa !246
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
  %27 = load i16, ptr %26, align 2, !tbaa !246
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !391

29:                                               ; preds = %19
  %30 = add i64 %25, 1
  br label %31

31:                                               ; preds = %29, %7
  %32 = phi i64 [ 1, %7 ], [ %30, %29 ]
  %33 = urem i64 %32, %9
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !197
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %35, i64 %33, i32 3
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %35, i64 %33, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !290
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %36, align 8, !tbaa !364
  br label %42

42:                                               ; preds = %40, %56
  %43 = phi i1 [ %61, %56 ], [ %39, %40 ]
  %44 = phi ptr [ %57, %56 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !182
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry", ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !362, !range !392, !noundef !190
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load ptr, ptr %2, align 8, !tbaa !131
  %51 = load ptr, ptr %45, align 8, !tbaa !194
  %52 = load ptr, ptr %51, align 8, !tbaa !393
  %53 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %52)
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load ptr, ptr %44, align 8, !tbaa !182
  store ptr %55, ptr %0, align 8, !tbaa !182
  br i1 %43, label %62, label %77

56:                                               ; preds = %49, %42
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %44, i64 1
  %58 = load ptr, ptr %36, align 8, !tbaa !364
  %59 = load i64, ptr %37, align 8, !tbaa !290
  %60 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %58, i64 %59
  %61 = icmp eq ptr %57, %60
  br i1 %61, label %62, label %42, !llvm.loop !394

62:                                               ; preds = %56, %31, %54, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !173, !noalias !398
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !103, !noalias !398
  %69 = load ptr, ptr %68, align 8, !tbaa !80, !noalias !398
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8, !noalias !398
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef 32), !noalias !398
  store ptr %72, ptr %63, align 8, !tbaa !173, !noalias !398
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %72, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !177, !noalias !398
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %72, i64 0, i32 1
  store ptr %72, ptr %74, align 8, !tbaa !181, !noalias !398
  br label %75

75:                                               ; preds = %62, %66
  %76 = load ptr, ptr %63, align 8, !tbaa !173, !noalias !398
  store ptr %76, ptr %0, align 8, !tbaa !182, !alias.scope !395
  br label %77

77:                                               ; preds = %54, %75
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PS7_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !185
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !197
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  store ptr %18, ptr %5, align 8, !tbaa !365
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !363
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !364
  %27 = load ptr, ptr %5, align 8, !tbaa !365
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !363
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !364
  %41 = load ptr, ptr %5, align 8, !tbaa !365
  %42 = load ptr, ptr %41, align 8, !tbaa !80
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #22
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !100
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !102
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !185
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !185
  %62 = load ptr, ptr %2, align 8, !tbaa !131
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !239
  %65 = icmp eq i64 %64, 0
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = select i1 %65, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %67
  %69 = load i16, ptr %68, align 2, !tbaa !246
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
  %79 = load i16, ptr %78, align 2, !tbaa !246
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %71, !llvm.loop !391

81:                                               ; preds = %71
  %82 = add i64 %77, 1
  br label %83

83:                                               ; preds = %81, %60
  %84 = phi i64 [ 1, %60 ], [ %82, %81 ]
  %85 = urem i64 %84, %61
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %87 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %86)
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = load ptr, ptr %90, align 8, !tbaa !80
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef 16)
  store ptr %94, ptr %6, align 8, !tbaa !194
  %95 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %95, align 8, !tbaa !362
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %96

96:                                               ; preds = %88, %83
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !173, !noalias !401
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load ptr, ptr %86, align 8, !tbaa !103, !noalias !401
  %102 = load ptr, ptr %101, align 8, !tbaa !80, !noalias !401
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8, !noalias !401
  %105 = call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %101, i64 noundef 32), !noalias !401
  store ptr %105, ptr %97, align 8, !tbaa !173, !noalias !401
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %105, i64 0, i32 2
  store ptr %105, ptr %106, align 8, !tbaa !177, !noalias !401
  %107 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %105, i64 0, i32 1
  store ptr %105, ptr %107, align 8, !tbaa !181, !noalias !401
  br label %108

108:                                              ; preds = %96, %100
  %109 = load ptr, ptr %97, align 8, !tbaa !173, !noalias !401
  %110 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !181, !noalias !404
  %112 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry", ptr %111, i64 0, i32 1
  store i8 0, ptr %112, align 8, !tbaa !362
  %113 = load ptr, ptr %111, align 8, !tbaa !194
  %114 = load ptr, ptr %2, align 8, !tbaa !131
  store ptr %114, ptr %113, align 8, !tbaa !131
  %115 = icmp eq ptr %3, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr %111, align 8, !tbaa !194
  %118 = getelementptr inbounds %"struct.std::pair", ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %3, align 8, !tbaa !131
  store ptr %119, ptr %118, align 8, !tbaa !131
  br label %120

120:                                              ; preds = %108, %116
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !173, !noalias !407
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !103, !noalias !407
  %127 = load ptr, ptr %126, align 8, !tbaa !80, !noalias !407
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !407
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !407
  store ptr %130, ptr %122, align 8, !tbaa !173, !noalias !407
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !177, !noalias !407
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !181, !noalias !407
  br label %133

133:                                              ; preds = %120, %125
  %134 = load ptr, ptr %122, align 8, !tbaa !173, !noalias !407
  %135 = load ptr, ptr %97, align 8, !tbaa !173, !noalias !410
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load ptr, ptr %86, align 8, !tbaa !103, !noalias !410
  %139 = load ptr, ptr %138, align 8, !tbaa !80, !noalias !410
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8, !noalias !410
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef 32), !noalias !410
  store ptr %142, ptr %97, align 8, !tbaa !173, !noalias !410
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !177, !noalias !410
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %142, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !181, !noalias !410
  br label %145

145:                                              ; preds = %133, %137
  %146 = load ptr, ptr %97, align 8, !tbaa !173, !noalias !410
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !181, !noalias !413
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %162, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %148, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !177
  %153 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !181
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %152, ptr %155, align 8, !tbaa !177
  %156 = load ptr, ptr %151, align 8, !tbaa !177
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %156, i64 0, i32 1
  store ptr %154, ptr %157, align 8, !tbaa !181
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %134, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !181
  store ptr %159, ptr %153, align 8, !tbaa !181
  store ptr %134, ptr %151, align 8, !tbaa !177
  %160 = load ptr, ptr %158, align 8, !tbaa !181
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %148, ptr %161, align 8, !tbaa !177
  store ptr %148, ptr %158, align 8, !tbaa !181
  br label %162

162:                                              ; preds = %145, %150
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !197
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %164, i64 %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %166 = load ptr, ptr %122, align 8, !tbaa !173, !noalias !416
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load ptr, ptr %121, align 8, !tbaa !103, !noalias !416
  %170 = load ptr, ptr %169, align 8, !tbaa !80, !noalias !416
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8, !noalias !416
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169, i64 noundef 32), !noalias !416
  store ptr %173, ptr %122, align 8, !tbaa !173, !noalias !416
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !177, !noalias !416
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %173, i64 0, i32 1
  store ptr %173, ptr %175, align 8, !tbaa !181, !noalias !416
  br label %176

176:                                              ; preds = %162, %168
  %177 = load ptr, ptr %122, align 8, !tbaa !173, !noalias !416
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !181, !noalias !419
  store ptr %179, ptr %7, align 8, !tbaa !182, !alias.scope !419
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  %180 = load i64, ptr %52, align 8, !tbaa !102
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !102
  %182 = load ptr, ptr %122, align 8, !tbaa !173, !noalias !422
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load ptr, ptr %121, align 8, !tbaa !103, !noalias !422
  %186 = load ptr, ptr %185, align 8, !tbaa !80, !noalias !422
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !noalias !422
  %189 = call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %185, i64 noundef 32), !noalias !422
  store ptr %189, ptr %122, align 8, !tbaa !173, !noalias !422
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %189, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !177, !noalias !422
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %189, i64 0, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !181, !noalias !422
  br label %192

192:                                              ; preds = %176, %184
  %193 = load ptr, ptr %122, align 8, !tbaa !173, !noalias !422
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !181, !noalias !425
  store ptr %195, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !185
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !196
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !197
  %22 = load i64, ptr %6, align 8, !tbaa !185
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !185
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !185
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !428

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !104
  store ptr %36, ptr %5, align 8, !tbaa !104
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !185
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !196
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !80
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !197
  %45 = load i64, ptr %37, align 8, !tbaa !185
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !197
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !197
  %50 = load i64, ptr %37, align 8, !tbaa !185
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !197
  %54 = load i64, ptr %37, align 8, !tbaa !185
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !197
  %57 = load i64, ptr %6, align 8, !tbaa !185
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !104
  %61 = load i64, ptr %6, align 8, !tbaa !185
  %62 = load i64, ptr %13, align 8, !tbaa !196
  %63 = load ptr, ptr %9, align 8, !tbaa !197
  %64 = load ptr, ptr %5, align 8, !tbaa !104
  store ptr %64, ptr %0, align 8, !tbaa !104
  %65 = load i64, ptr %37, align 8, !tbaa !185
  store i64 %65, ptr %6, align 8, !tbaa !185
  %66 = load i64, ptr %38, align 8, !tbaa !196
  store i64 %66, ptr %13, align 8, !tbaa !196
  %67 = load ptr, ptr %44, align 8, !tbaa !197
  store ptr %67, ptr %9, align 8, !tbaa !197
  store ptr %60, ptr %5, align 8, !tbaa !104
  store i64 %61, ptr %37, align 8, !tbaa !185
  store i64 %62, ptr %38, align 8, !tbaa !196
  store ptr %63, ptr %44, align 8, !tbaa !197
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !429

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !430

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !431

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !432

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !433

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !431

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !102
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  store ptr %11, ptr %3, align 8, !tbaa !365
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %90

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !363
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !364
  %20 = load ptr, ptr %3, align 8, !tbaa !365
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !173, !noalias !434
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !103, !noalias !434
  %34 = load ptr, ptr %33, align 8, !tbaa !80, !noalias !434
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !434
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %104

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !173, !noalias !434
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !177, !noalias !434
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !181, !noalias !434
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %84, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %84 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !131, !noalias !190
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !177, !noalias !190
  store ptr %47, ptr %4, align 8, !tbaa !182
  %48 = load ptr, ptr %29, align 8, !tbaa !173, !noalias !437
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !103, !noalias !437
  %52 = load ptr, ptr %51, align 8, !tbaa !80, !noalias !437
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !437
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %106

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !173, !noalias !437
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !177, !noalias !437
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !181, !noalias !437
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !173, !noalias !437
  %61 = load ptr, ptr %4, align 8, !tbaa !182
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %110, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !194
  %65 = load ptr, ptr %64, align 8, !tbaa !131
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !239
  %68 = icmp eq i64 %67, 0
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %65, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = select i1 %68, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %70
  %72 = load i16, ptr %71, align 2, !tbaa !246
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
  %82 = load i16, ptr %81, align 2, !tbaa !246
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %74, !llvm.loop !391

84:                                               ; preds = %74, %63
  %85 = phi i64 [ 0, %63 ], [ %80, %74 ]
  %86 = add i64 %85, 1
  %87 = urem i64 %86, %9
  %88 = load ptr, ptr %42, align 8, !tbaa !197
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %88, i64 %87
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %108, !llvm.loop !440

90:                                               ; preds = %1
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load i64, ptr %13, align 8, !tbaa !363
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %14, align 8, !tbaa !364
  %96 = load ptr, ptr %3, align 8, !tbaa !365
  %97 = load ptr, ptr %96, align 8, !tbaa !80
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %95)
          to label %103 unwind label %100

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #22
  unreachable

103:                                              ; preds = %90, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
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
  %112 = load ptr, ptr %111, align 8, !tbaa !104
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !185
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !196
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !197
  %119 = load ptr, ptr %2, align 8, !tbaa !104
  store ptr %119, ptr %111, align 8, !tbaa !104
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !185
  store i64 %121, ptr %113, align 8, !tbaa !185
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !196
  store i64 %123, ptr %115, align 8, !tbaa !196
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !197
  store ptr %125, ptr %117, align 8, !tbaa !197
  store ptr %112, ptr %2, align 8, !tbaa !104
  store i64 %114, ptr %120, align 8, !tbaa !185
  store i64 %116, ptr %122, align 8, !tbaa !196
  store ptr %118, ptr %124, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret void

126:                                              ; preds = %108, %106, %104
  %127 = phi { ptr, i32 } [ %107, %106 ], [ %105, %104 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  br label %128

128:                                              ; preds = %126, %103
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %91, %103 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  resume { ptr, i32 } %129
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !103
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !173
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !177
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !181
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !173
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !103
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !173
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !177
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !181
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !173
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !173, !noalias !441
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !103, !noalias !441
  %8 = load ptr, ptr %7, align 8, !tbaa !80, !noalias !441
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !441
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !441
  store ptr %11, ptr %3, align 8, !tbaa !173, !noalias !441
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !177, !noalias !441
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !181, !noalias !441
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !173, !noalias !441
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !352
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !177
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !103
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !352
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !444
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  store ptr %33, ptr %31, align 8, !tbaa !131
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !131
  %35 = load ptr, ptr %32, align 8, !tbaa !181
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !177
  store ptr %29, ptr %32, align 8, !tbaa !181
  store ptr %30, ptr %16, align 8, !tbaa !352
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !185
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !196
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !197
  %28 = load i64, ptr %12, align 8, !tbaa !185
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !185
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !185
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !446

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !104
  store ptr %42, ptr %5, align 8, !tbaa !104
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !185
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !196
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !197
  %51 = load i64, ptr %43, align 8, !tbaa !185
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !197
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !197
  %56 = load i64, ptr %43, align 8, !tbaa !185
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !197
  %60 = load i64, ptr %43, align 8, !tbaa !185
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !197
  %63 = load i64, ptr %12, align 8, !tbaa !185
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !104
  %67 = load i64, ptr %12, align 8, !tbaa !185
  %68 = load i64, ptr %19, align 8, !tbaa !196
  %69 = load ptr, ptr %15, align 8, !tbaa !197
  %70 = load ptr, ptr %5, align 8, !tbaa !104
  store ptr %70, ptr %0, align 8, !tbaa !104
  %71 = load i64, ptr %43, align 8, !tbaa !185
  store i64 %71, ptr %12, align 8, !tbaa !185
  %72 = load i64, ptr %44, align 8, !tbaa !196
  store i64 %72, ptr %19, align 8, !tbaa !196
  %73 = load ptr, ptr %50, align 8, !tbaa !197
  store ptr %73, ptr %15, align 8, !tbaa !197
  store ptr %66, ptr %5, align 8, !tbaa !104
  store i64 %67, ptr %43, align 8, !tbaa !185
  store i64 %68, ptr %44, align 8, !tbaa !196
  store ptr %69, ptr %50, align 8, !tbaa !197
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !447

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !448

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !449

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !450

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !433

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !449

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !196
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !185
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !185
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !104
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !104
  %25 = load i64, ptr %4, align 8, !tbaa !185
  %26 = load i64, ptr %6, align 8, !tbaa !196
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !197
  %29 = load ptr, ptr %3, align 8, !tbaa !104
  store ptr %29, ptr %0, align 8, !tbaa !104
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !185
  store i64 %31, ptr %4, align 8, !tbaa !185
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !196
  store i64 %33, ptr %6, align 8, !tbaa !196
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !197
  store ptr %35, ptr %27, align 8, !tbaa !197
  store ptr %24, ptr %3, align 8, !tbaa !104
  store i64 %25, ptr %30, align 8, !tbaa !185
  store i64 %26, ptr %32, align 8, !tbaa !196
  store ptr %28, ptr %34, align 8, !tbaa !197
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !104
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !196
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = load ptr, ptr %3, align 8, !tbaa !104
  store ptr %12, ptr %0, align 8, !tbaa !104
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !185
  store i64 %14, ptr %6, align 8, !tbaa !185
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !196
  store i64 %16, ptr %8, align 8, !tbaa !196
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  store ptr %18, ptr %10, align 8, !tbaa !197
  store ptr %5, ptr %3, align 8, !tbaa !104
  store i64 %7, ptr %13, align 8, !tbaa !185
  store i64 %9, ptr %15, align 8, !tbaa !196
  store ptr %11, ptr %17, align 8, !tbaa !197
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !185
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !104
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !185
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !196
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !197
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = load i64, ptr %9, align 8, !tbaa !185
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !104
  %28 = load i64, ptr %6, align 8, !tbaa !185
  %29 = load i64, ptr %7, align 8, !tbaa !196
  %30 = load ptr, ptr %8, align 8, !tbaa !197
  %31 = load ptr, ptr %5, align 8, !tbaa !104
  store ptr %31, ptr %0, align 8, !tbaa !104
  %32 = load i64, ptr %14, align 8, !tbaa !185
  store i64 %32, ptr %6, align 8, !tbaa !185
  %33 = load i64, ptr %15, align 8, !tbaa !196
  store i64 %33, ptr %7, align 8, !tbaa !196
  %34 = load ptr, ptr %21, align 8, !tbaa !197
  store ptr %34, ptr %8, align 8, !tbaa !197
  store ptr %27, ptr %5, align 8, !tbaa !104
  store i64 %28, ptr %14, align 8, !tbaa !185
  store i64 %29, ptr %15, align 8, !tbaa !196
  store ptr %30, ptr %21, align 8, !tbaa !197
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !80
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !197
  store i64 %3, ptr %7, align 8, !tbaa !196
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  store ptr %2, ptr %0, align 8, !tbaa !365
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !290
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !365
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !290
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !363
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !364
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !364
  %24 = load i64, ptr %9, align 8, !tbaa !290
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !365
  %28 = load i64, ptr %6, align 8, !tbaa !290
  %29 = load i64, ptr %7, align 8, !tbaa !363
  %30 = load ptr, ptr %8, align 8, !tbaa !364
  %31 = load ptr, ptr %5, align 8, !tbaa !365
  store ptr %31, ptr %0, align 8, !tbaa !365
  %32 = load i64, ptr %14, align 8, !tbaa !290
  store i64 %32, ptr %6, align 8, !tbaa !290
  %33 = load i64, ptr %15, align 8, !tbaa !363
  store i64 %33, ptr %7, align 8, !tbaa !363
  %34 = load ptr, ptr %21, align 8, !tbaa !364
  store ptr %34, ptr %8, align 8, !tbaa !364
  store ptr %27, ptr %5, align 8, !tbaa !365
  store i64 %28, ptr %14, align 8, !tbaa !290
  store i64 %29, ptr %15, align 8, !tbaa !363
  store ptr %30, ptr %21, align 8, !tbaa !364
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !363
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !364
  %50 = load ptr, ptr %5, align 8, !tbaa !365
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !80
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !364
  store i64 %3, ptr %7, align 8, !tbaa !363
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !290
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !364
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !363
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !364
  %28 = load i64, ptr %12, align 8, !tbaa !290
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !182
  store ptr %34, ptr %32, align 8, !tbaa !182
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !451

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !365
  store ptr %42, ptr %5, align 8, !tbaa !365
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !290
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !363
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !364
  %51 = load i64, ptr %43, align 8, !tbaa !290
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !364
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !364
  %56 = load i64, ptr %43, align 8, !tbaa !290
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !364
  %60 = load i64, ptr %43, align 8, !tbaa !290
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !364
  %63 = load i64, ptr %12, align 8, !tbaa !290
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !365
  %67 = load i64, ptr %12, align 8, !tbaa !290
  %68 = load i64, ptr %19, align 8, !tbaa !363
  %69 = load ptr, ptr %15, align 8, !tbaa !364
  %70 = load ptr, ptr %5, align 8, !tbaa !365
  store ptr %70, ptr %0, align 8, !tbaa !365
  %71 = load i64, ptr %43, align 8, !tbaa !290
  store i64 %71, ptr %12, align 8, !tbaa !290
  %72 = load i64, ptr %44, align 8, !tbaa !363
  store i64 %72, ptr %19, align 8, !tbaa !363
  %73 = load ptr, ptr %50, align 8, !tbaa !364
  store ptr %73, ptr %15, align 8, !tbaa !364
  store ptr %66, ptr %5, align 8, !tbaa !365
  store i64 %67, ptr %43, align 8, !tbaa !290
  store i64 %68, ptr %44, align 8, !tbaa !363
  store ptr %69, ptr %50, align 8, !tbaa !364
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !80
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !363
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !364
  %89 = load ptr, ptr %5, align 8, !tbaa !365
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !452

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !453

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !182
  store ptr %122, ptr %120, align 8, !tbaa !182
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !454

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !455

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
  %148 = load ptr, ptr %146, align 8, !tbaa !182
  store ptr %148, ptr %147, align 8, !tbaa !182
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !456

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !182
  store ptr %155, ptr %153, align 8, !tbaa !182
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !454

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !290
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !290
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !363
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !182
  store ptr %13, ptr %12, align 8, !tbaa !182
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !290
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !365
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !365
  %24 = load i64, ptr %4, align 8, !tbaa !290
  %25 = load i64, ptr %6, align 8, !tbaa !363
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !364
  %28 = load ptr, ptr %3, align 8, !tbaa !365
  store ptr %28, ptr %0, align 8, !tbaa !365
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !290
  store i64 %30, ptr %4, align 8, !tbaa !290
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !363
  store i64 %32, ptr %6, align 8, !tbaa !363
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !364
  store ptr %34, ptr %26, align 8, !tbaa !364
  store ptr %23, ptr %3, align 8, !tbaa !365
  store i64 %24, ptr %29, align 8, !tbaa !290
  store i64 %25, ptr %31, align 8, !tbaa !363
  store ptr %27, ptr %33, align 8, !tbaa !364
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !363
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !364
  %52 = load ptr, ptr %3, align 8, !tbaa !365
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !365
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !365
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !290
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = load ptr, ptr %3, align 8, !tbaa !365
  store ptr %12, ptr %0, align 8, !tbaa !365
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !290
  store i64 %14, ptr %6, align 8, !tbaa !290
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !363
  store i64 %16, ptr %8, align 8, !tbaa !363
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !364
  store ptr %18, ptr %10, align 8, !tbaa !364
  store ptr %5, ptr %3, align 8, !tbaa !365
  store i64 %7, ptr %13, align 8, !tbaa !290
  store i64 %9, ptr %15, align 8, !tbaa !363
  store ptr %11, ptr %17, align 8, !tbaa !364
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !363
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !290
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !365
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !365
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !290
  %16 = load i64, ptr %6, align 8, !tbaa !363
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !364
  %19 = load ptr, ptr %3, align 8, !tbaa !365
  store ptr %19, ptr %0, align 8, !tbaa !365
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !290
  store i64 %21, ptr %14, align 8, !tbaa !290
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !363
  store i64 %23, ptr %6, align 8, !tbaa !363
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !364
  store ptr %25, ptr %17, align 8, !tbaa !364
  store ptr %13, ptr %3, align 8, !tbaa !365
  store i64 %15, ptr %20, align 8, !tbaa !290
  store i64 %16, ptr %22, align 8, !tbaa !363
  store ptr %18, ptr %24, align 8, !tbaa !364
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !364
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !290
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !364
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !290
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !290
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !364
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !364
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !182
  store ptr %68, ptr %66, align 8, !tbaa !182
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !454

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %3, ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  store ptr %3, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !104
  %14 = load i64, ptr %6, align 8, !tbaa !185
  %15 = load i64, ptr %12, align 8, !tbaa !196
  %16 = load ptr, ptr %11, align 8, !tbaa !197
  %17 = load ptr, ptr %5, align 8, !tbaa !104
  store ptr %17, ptr %0, align 8, !tbaa !104
  %18 = load i64, ptr %7, align 8, !tbaa !185
  store i64 %18, ptr %6, align 8, !tbaa !185
  %19 = load i64, ptr %10, align 8, !tbaa !196
  store i64 %19, ptr %12, align 8, !tbaa !196
  %20 = load ptr, ptr %9, align 8, !tbaa !197
  store ptr %20, ptr %11, align 8, !tbaa !197
  store ptr %13, ptr %5, align 8, !tbaa !104
  store i64 %14, ptr %7, align 8, !tbaa !185
  store i64 %15, ptr %10, align 8, !tbaa !196
  store ptr %16, ptr %9, align 8, !tbaa !197
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !457 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !155
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !458

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !84
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !155
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !115
  %16 = shl i64 %13, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !459
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !117
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !117
  %24 = load i64, ptr %9, align 8, !tbaa !155
  %25 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !280

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !84
  %28 = load i64, ptr %6, align 8, !tbaa !155
  %29 = load i64, ptr %7, align 8, !tbaa !115
  %30 = load ptr, ptr %8, align 8, !tbaa !117
  %31 = load ptr, ptr %5, align 8, !tbaa !84
  store ptr %31, ptr %0, align 8, !tbaa !84
  %32 = load i64, ptr %14, align 8, !tbaa !155
  store i64 %32, ptr %6, align 8, !tbaa !155
  %33 = load i64, ptr %15, align 8, !tbaa !115
  store i64 %33, ptr %7, align 8, !tbaa !115
  %34 = load ptr, ptr %21, align 8, !tbaa !117
  store ptr %34, ptr %8, align 8, !tbaa !117
  store ptr %27, ptr %5, align 8, !tbaa !84
  store i64 %28, ptr %14, align 8, !tbaa !155
  store i64 %29, ptr %15, align 8, !tbaa !115
  store ptr %30, ptr %21, align 8, !tbaa !117
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !280

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !115
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !117
  %50 = load ptr, ptr %5, align 8, !tbaa !84
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !154

60:                                               ; preds = %58
  %61 = shl i64 %3, 4
  %62 = load ptr, ptr %2, align 8, !tbaa !80
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !367
  store ptr %65, ptr %8, align 8, !tbaa !117
  store i64 %3, ptr %7, align 8, !tbaa !115
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %132, label %11, !prof !279

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !155
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !115
  br i1 %18, label %21, label %38, !prof !280

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !279

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %132, label %26, !prof !460

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !117
  %28 = load i64, ptr %12, align 8, !tbaa !155
  %29 = getelementptr %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !461
  %33 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !155
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !155
  %36 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %132, label %30, !prof !462, !llvm.loop !463

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %41 = load ptr, ptr %0, align 8, !tbaa !84
  store ptr %41, ptr %5, align 8, !tbaa !84
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !155
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !115
  %44 = shl i64 %14, 4
  %45 = load ptr, ptr %41, align 8, !tbaa !80
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !117
  %50 = load i64, ptr %42, align 8, !tbaa !155
  %51 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !117
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !117
  %55 = load i64, ptr %42, align 8, !tbaa !155
  %56 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !117
  %59 = load i64, ptr %42, align 8, !tbaa !155
  %60 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !117
  %62 = load i64, ptr %12, align 8, !tbaa !155
  %63 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !84
  %66 = load i64, ptr %12, align 8, !tbaa !155
  %67 = load i64, ptr %19, align 8, !tbaa !115
  %68 = load ptr, ptr %15, align 8, !tbaa !117
  %69 = load ptr, ptr %5, align 8, !tbaa !84
  store ptr %69, ptr %0, align 8, !tbaa !84
  %70 = load i64, ptr %42, align 8, !tbaa !155
  store i64 %70, ptr %12, align 8, !tbaa !155
  %71 = load i64, ptr %43, align 8, !tbaa !115
  store i64 %71, ptr %19, align 8, !tbaa !115
  %72 = load ptr, ptr %49, align 8, !tbaa !117
  store ptr %72, ptr %15, align 8, !tbaa !117
  store ptr %65, ptr %5, align 8, !tbaa !84
  store i64 %66, ptr %42, align 8, !tbaa !155
  store i64 %67, ptr %43, align 8, !tbaa !115
  store ptr %68, ptr %49, align 8, !tbaa !117
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !80
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #22
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %132

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !115
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !117
  %88 = load ptr, ptr %5, align 8, !tbaa !84
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #22
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %107)
  %108 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !464

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !465

114:                                              ; preds = %110, %104
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %99, i1 false)
  br label %132

115:                                              ; preds = %96
  %116 = sub nsw i64 0, %9
  %117 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %17, i64 %116
  %118 = icmp eq ptr %3, %2
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %120)
  %121 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %120, i64 1
  %122 = icmp eq ptr %121, %17
  br i1 %122, label %123, label %119, !llvm.loop !466

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %98
  %128 = ashr exact i64 %127, 4
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %17, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %130, ptr align 8 %1, i64 %127, i1 false)
  br label %131

131:                                              ; preds = %125, %123
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %132

132:                                              ; preds = %30, %24, %81, %114, %131, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !366 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !150

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = getelementptr inbounds %"class.xalanc_1_10::NamespacesHandler::Namespace", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !461
  %13 = load i64, ptr %4, align 8, !tbaa !155
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !155
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !152
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !84
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %22 unwind label %44, !prof !152

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !84
  %24 = load i64, ptr %4, align 8, !tbaa !155
  %25 = load i64, ptr %6, align 8, !tbaa !115
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  %28 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %28, ptr %0, align 8, !tbaa !84
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !155
  store i64 %30, ptr %4, align 8, !tbaa !155
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !115
  store i64 %32, ptr %6, align 8, !tbaa !115
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  store ptr %34, ptr %26, align 8, !tbaa !117
  store ptr %23, ptr %3, align 8, !tbaa !84
  store i64 %24, ptr %29, align 8, !tbaa !155
  store i64 %25, ptr %31, align 8, !tbaa !115
  store ptr %27, ptr %33, align 8, !tbaa !117
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !152

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !80
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !115
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !117
  %52 = load ptr, ptr %3, align 8, !tbaa !84
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !84
  call void @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %12, ptr %0, align 8, !tbaa !84
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !155
  store i64 %14, ptr %6, align 8, !tbaa !155
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !115
  store i64 %16, ptr %8, align 8, !tbaa !115
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  store ptr %18, ptr %10, align 8, !tbaa !117
  store ptr %5, ptr %3, align 8, !tbaa !84
  store i64 %7, ptr %13, align 8, !tbaa !155
  store i64 %9, ptr %15, align 8, !tbaa !115
  store ptr %11, ptr %17, align 8, !tbaa !117
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !80
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %4 = alloca %"class.xalanc_1_10::XalanVector.10", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %8 = load float, ptr %7, align 8, !tbaa !100
  store float %8, ptr %6, align 8, !tbaa !100
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !101
  store i64 %11, ptr %9, align 8, !tbaa !101
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  store i64 0, ptr %12, align 8, !tbaa !102
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  store ptr %2, ptr %13, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %2, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %19 = load i64, ptr %18, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  store ptr %2, ptr %4, align 8, !tbaa !365
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %4, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.10", ptr %4, i64 0, i32 3
  %23 = uitofp i64 %19 to float
  %24 = fmul float %8, %23
  %25 = fptoui float %24 to i64
  %26 = add i64 %25, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %26, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %27 unwind label %81

27:                                               ; preds = %3
  %28 = load i64, ptr %21, align 8, !tbaa !363
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %22, align 8, !tbaa !364
  %32 = load ptr, ptr %4, align 8, !tbaa !365
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #22
  unreachable

39:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  store i64 0, ptr %40, align 8, !tbaa !281
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 10
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 10
  %43 = load i64, ptr %42, align 8, !tbaa !105
  store i64 %43, ptr %41, align 8, !tbaa !105
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !173, !noalias !467
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !103, !noalias !467
  %50 = load ptr, ptr %49, align 8, !tbaa !80, !noalias !467
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !noalias !467
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef 32)
          to label %54 unwind label %97

54:                                               ; preds = %47
  store ptr %53, ptr %44, align 8, !tbaa !173, !noalias !467
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %53, i64 0, i32 2
  store ptr %53, ptr %55, align 8, !tbaa !177, !noalias !467
  %56 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %53, i64 0, i32 1
  store ptr %53, ptr %56, align 8, !tbaa !181, !noalias !467
  br label %57

57:                                               ; preds = %39, %54
  %58 = load ptr, ptr %44, align 8, !tbaa !173, !noalias !467
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  br label %60

60:                                               ; preds = %78, %57
  %61 = phi ptr [ %58, %57 ], [ %63, %78 ]
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !177, !noalias !190
  %64 = load ptr, ptr %44, align 8, !tbaa !173, !noalias !474
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load ptr, ptr %59, align 8, !tbaa !103, !noalias !474
  %68 = load ptr, ptr %67, align 8, !tbaa !80, !noalias !474
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8, !noalias !474
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef 32)
          to label %72 unwind label %99

72:                                               ; preds = %66
  store ptr %71, ptr %44, align 8, !tbaa !173, !noalias !474
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %71, i64 0, i32 2
  store ptr %71, ptr %73, align 8, !tbaa !177, !noalias !474
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %71, i64 0, i32 1
  store ptr %71, ptr %74, align 8, !tbaa !181, !noalias !474
  br label %75

75:                                               ; preds = %60, %72
  %76 = load ptr, ptr %44, align 8, !tbaa !173, !noalias !474
  %77 = icmp eq ptr %63, %76
  br i1 %77, label %101, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %63, align 8, !tbaa !194
  %80 = getelementptr inbounds %"struct.std::pair", ptr %79, i64 0, i32 1
  invoke void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6insertERKS3_S8_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull align 8 dereferenceable(8) %80)
          to label %60 unwind label %95

81:                                               ; preds = %3
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %21, align 8, !tbaa !363
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %22, align 8, !tbaa !364
  %87 = load ptr, ptr %4, align 8, !tbaa !365
  %88 = load ptr, ptr %87, align 8, !tbaa !80
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #22
  unreachable

94:                                               ; preds = %85, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %104

95:                                               ; preds = %78
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %102

97:                                               ; preds = %47
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %102

99:                                               ; preds = %66
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %102

101:                                              ; preds = %75
  ret void

102:                                              ; preds = %95, %97, %99
  %103 = phi { ptr, i32 } [ %100, %99 ], [ %96, %95 ], [ %98, %97 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #21
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %82, %94 ]
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #21
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #21
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE6insertERKS3_S8_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #10 comdat align 2 !prof !78 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.9", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !173, !noalias !481
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !103, !noalias !481
  %13 = load ptr, ptr %12, align 8, !tbaa !80, !noalias !481
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !481
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !481
  store ptr %16, ptr %7, align 8, !tbaa !173, !noalias !481
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !177, !noalias !481
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const xalanc_1_10::XalanDOMString *, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !181, !noalias !481
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !173, !noalias !481
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE13doCreateEntryERKS3_PS7_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.9") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_NamespacesHandler.cpp() #17 section ".text.startup" !prof !486 !PGOFuncName !487 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1017NamespacesHandler9Namespace13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1017NamespacesHandler9Namespace13s_emptyStringE, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!77}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!35 = !{ptr @_ZN11xalanc_1_1017NamespacesHandlerC2ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 1167}
!36 = !{ptr @_ZN11xalanc_1_1017NamespacesHandlerC2ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_, i64 389}
!37 = !{ptr @_ZN11xalanc_1_1017NamespacesHandlerC2ERNS_29StylesheetConstructionContextERKS0_RKNS_10XalanDequeINS5_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS6_EEEENS7_IS9_EEEERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_, i64 389}
!38 = !{ptr @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 389}
!39 = !{ptr @_ZN11xalanc_1_1011addByPrefixINS_11XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS3_EEEEEEbRNS_29StylesheetConstructionContextERT_RKNS_14XalanDOMStringESD_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 389}
!40 = !{ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEED2Ev, i64 1702}
!41 = !{ptr @_ZN11xalanc_1_1017NamespacesHandlerD2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEED2Ev, i64 851}
!42 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler20copyNamespaceAliasesERKNS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEEE, i64 433}
!43 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler26copyExtensionNamespaceURIsERKNS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEE, i64 433}
!44 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler25copyExcludeResultPrefixesERKNS_11XalanVectorINS0_9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE, i64 433}
!45 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj, i64 245}
!46 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringEPKNS0_13PrefixCheckerE, i64 434}
!47 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZNK11xalanc_1_1017NamespacesHandler17getNamespaceAliasERKNS_14XalanDOMStringE, i64 359}
!48 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler16postConstructionERNS_29StylesheetConstructionContextEbRKNS_14XalanDOMStringEPKS0_PKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_1017NamespacesHandler26createResultAttributeNamesERNS_29StylesheetConstructionContextE, i64 434}
!49 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler25copyExcludeResultPrefixesERKNS_11XalanVectorINS0_9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_, i64 75}
!50 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler25copyExcludeResultPrefixesERKNS_11XalanVectorINS0_9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 332}
!51 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler28processExcludeResultPrefixesERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringEPKNS0_13PrefixCheckerE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 716}
!52 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler26createResultAttributeNamesERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 359}
!53 = !{ptr @_ZN11xalanc_1_1017NamespacesHandler26createResultAttributeNamesERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 359}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 75}
!55 = !{ptr @_ZNK11xalanc_1_1017NamespacesHandler22outputResultNamespacesERNS_26StylesheetExecutionContextEb, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 1048804}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 389}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 389}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 2226}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 2226}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_, i64 2226}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 1142}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 75}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 389}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 389}
!74 = !{ptr @_GLOBAL__sub_I_NamespacesHandler.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!75 = !{ptr @_GLOBAL__sub_I_NamespacesHandler.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!76 = !{ptr @_GLOBAL__sub_I_NamespacesHandler.cpp, ptr @__cxa_atexit, i64 1}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = !{!"function_entry_count", i64 0}
!79 = !{!"function_entry_count", i64 188}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !82, i64 0}
!82 = !{!"Simple C++ TBAA"}
!83 = !{!"function_entry_count", i64 456}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !82, i64 0}
!88 = !{!"long", !87, i64 0}
!89 = !{!90, !86, i64 0}
!90 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!91 = !{!92, !86, i64 0}
!92 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!93 = !{!94, !86, i64 8}
!94 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !95, i64 0, !96, i64 1, !86, i64 8, !97, i64 16, !88, i64 24, !88, i64 32, !98, i64 40, !98, i64 64, !99, i64 88, !88, i64 120, !88, i64 128}
!95 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!96 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!97 = !{!"float", !87, i64 0}
!98 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !86, i64 0, !86, i64 8, !86, i64 16}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!100 = !{!94, !97, i64 16}
!101 = !{!94, !88, i64 24}
!102 = !{!94, !88, i64 32}
!103 = !{!98, !86, i64 0}
!104 = !{!99, !86, i64 0}
!105 = !{!94, !88, i64 128}
!106 = !{!"function_entry_count", i64 2399}
!107 = !{!92, !88, i64 16}
!108 = !{!"branch_weights", i32 2108, i32 1142}
!109 = !{!92, !86, i64 24}
!110 = !{!"VP", i32 0, i64 1142, i64 -7405368087501025645, i64 1142}
!111 = !{!90, !88, i64 16}
!112 = !{!"branch_weights", i32 462, i32 389}
!113 = !{!90, !86, i64 24}
!114 = !{!"VP", i32 0, i64 389, i64 -7405368087501025645, i64 389}
!115 = !{!85, !88, i64 16}
!116 = !{!"branch_weights", i32 387, i32 464}
!117 = !{!85, !86, i64 24}
!118 = !{!"VP", i32 0, i64 464, i64 -7405368087501025645, i64 464}
!119 = !{!"function_entry_count", i64 395}
!120 = !{!121, !86, i64 8}
!121 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !86, i64 8}
!122 = !{!123, !88, i64 8}
!123 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEE6rbeginEv: argument 0"}
!126 = distinct !{!126, !"_ZNK11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEE6rbeginEv"}
!127 = !{!"branch_weights", i32 6, i32 389}
!128 = !{!129, !88, i64 8}
!129 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !86, i64 0, !88, i64 8, !123, i64 16, !123, i64 48}
!130 = !{!123, !86, i64 24}
!131 = !{!86, !86, i64 0}
!132 = !{!133, !88, i64 8}
!133 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!134 = !{!"branch_weights", i32 1, i32 394}
!135 = !{!"branch_weights", i32 394, i32 1584}
!136 = distinct !{!136, !137, !138}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = !{!133, !86, i64 24}
!140 = !{!141, !88, i64 8}
!141 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!142 = !{!"branch_weights", i32 1589, i32 389}
!143 = !{!144, !88, i64 8}
!144 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !86, i64 0, !88, i64 8, !141, i64 16, !141, i64 48}
!145 = !{!141, !86, i64 24}
!146 = !{!147, !88, i64 8}
!147 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!148 = !{!"branch_weights", i32 1200, i32 778}
!149 = !{!147, !86, i64 24}
!150 = !{!"branch_weights", i32 389, i32 389}
!151 = !{!92, !88, i64 8}
!152 = !{!"branch_weights", i32 389, i32 0}
!153 = distinct !{!153, !137, !138}
!154 = !{!"branch_weights", i32 0, i32 389}
!155 = !{!85, !88, i64 8}
!156 = !{!"branch_weights", i32 1, i32 0}
!157 = !{!158, !86, i64 8}
!158 = !{!"_ZTSN11xalanc_1_1017NamespacesHandler9NamespaceE", !86, i64 0, !86, i64 8}
!159 = distinct !{!159, !137, !138}
!160 = !{!"branch_weights", i32 778, i32 0}
!161 = distinct !{!161, !137, !138}
!162 = !{!"function_entry_count", i64 389}
!163 = !{!90, !88, i64 8}
!164 = !{!158, !86, i64 0}
!165 = distinct !{!165, !137, !138}
!166 = !{!"VP", i32 0, i64 389, i64 -2492984370683079149, i64 389}
!167 = !{!168, !86, i64 16}
!168 = !{!"_ZTSN11xalanc_1_1017NamespacesHandler17NamespaceExtendedE", !158, i64 0, !86, i64 16}
!169 = !{!"function_entry_count", i64 851}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!173 = !{!98, !86, i64 8}
!174 = !{!175, !171}
!175 = distinct !{!175, !176, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!176 = distinct !{!176, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!177 = !{!178, !86, i64 24}
!178 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE4NodeE", !179, i64 0, !86, i64 16, !86, i64 24}
!179 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryE", !86, i64 0, !180, i64 8}
!180 = !{!"bool", !87, i64 0}
!181 = !{!178, !86, i64 16}
!182 = !{!183, !86, i64 0}
!183 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEE", !86, i64 0}
!184 = distinct !{!184, !137, !138}
!185 = !{!99, !88, i64 8}
!186 = !{!"branch_weights", i32 851, i32 0}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!189 = distinct !{!189, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!190 = !{}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!193 = distinct !{!193, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!194 = !{!179, !86, i64 0}
!195 = distinct !{!195, !137, !138}
!196 = !{!99, !88, i64 16}
!197 = !{!99, !86, i64 24}
!198 = distinct !{!198, !137, !138}
!199 = !{!"function_entry_count", i64 433}
!200 = !{!"branch_weights", i32 433, i32 0}
!201 = !{!202, !204, !206}
!202 = distinct !{!202, !203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!203 = distinct !{!203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!204 = distinct !{!204, !205, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!205 = distinct !{!205, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!206 = distinct !{!206, !207, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!207 = distinct !{!207, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!208 = !{!209, !211, !213}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!211 = distinct !{!211, !212, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!212 = distinct !{!212, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!213 = distinct !{!213, !214, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!214 = distinct !{!214, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!215 = distinct !{!215, !137, !138}
!216 = !{!"function_entry_count", i64 358}
!217 = !{!"branch_weights", i32 358, i32 0}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_: argument 0"}
!220 = distinct !{!220, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE4findERKS3_"}
!221 = !{!222, !224, !226}
!222 = distinct !{!222, !223, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!223 = distinct !{!223, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!224 = distinct !{!224, !225, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!225 = distinct !{!225, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!226 = distinct !{!226, !227, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!227 = distinct !{!227, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!228 = !{!229, !86, i64 8}
!229 = !{!"_ZTSSt4pairIKPKN11xalanc_1_1014XalanDOMStringES3_E", !86, i64 0, !86, i64 8}
!230 = !{!231, !233}
!231 = distinct !{!231, !232, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!232 = distinct !{!232, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!233 = distinct !{!233, !234, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!234 = distinct !{!234, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!235 = !{!236, !238, i64 32}
!236 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !237, i64 0, !238, i64 32}
!237 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!238 = !{!"int", !87, i64 0}
!239 = !{!237, !88, i64 8}
!240 = distinct !{!240, !137, !138}
!241 = distinct !{!241, !137, !138}
!242 = distinct !{!242, !137, !138}
!243 = !{!"function_entry_count", i64 434}
!244 = !{!"branch_weights", i32 1, i32 433}
!245 = !{!"branch_weights", i32 0, i32 433}
!246 = !{!247, !247, i64 0}
!247 = !{!"short", !87, i64 0}
!248 = !{!"branch_weights", i32 1106, i32 245, i32 188}
!249 = distinct !{!249, !137, !138}
!250 = !{!"VP", i32 0, i64 434, i64 5287555200792350651, i64 434}
!251 = !{!"branch_weights", i32 245, i32 189}
!252 = !{!"branch_weights", i32 245, i32 0}
!253 = !{!"branch_weights", i32 434, i32 0}
!254 = !{!"branch_weights", i32 76, i32 358}
!255 = !{!"branch_weights", i32 357, i32 1}
!256 = distinct !{!256, !137, !138}
!257 = !{!"VP", i32 0, i64 434, i64 8649632521824085322, i64 434}
!258 = distinct !{!258, !137, !138}
!259 = !{!"branch_weights", i32 27, i32 406}
!260 = !{!"branch_weights", i32 75, i32 331}
!261 = !{!"branch_weights", i32 0, i32 1}
!262 = !{!"branch_weights", i32 0, i32 331}
!263 = !{!"branch_weights", i32 330, i32 1}
!264 = distinct !{!264, !137, !138}
!265 = !{!"branch_weights", i32 75, i32 358}
!266 = !{!"branch_weights", i32 0, i32 358}
!267 = !{!"branch_weights", i32 170, i32 188}
!268 = !{!"VP", i32 0, i64 188, i64 501706780453575689, i64 188}
!269 = !{!"branch_weights", i32 0, i32 188}
!270 = !{!"branch_weights", i32 1, i32 357}
!271 = distinct !{!271, !137, !138}
!272 = !{!"VP", i32 0, i64 358, i64 5287555200792350651, i64 358}
!273 = !{!238, !238, i64 0}
!274 = !{!237, !88, i64 16}
!275 = !{!"VP", i32 0, i64 358, i64 -2492984370683079149, i64 358}
!276 = distinct !{!276, !137, !138}
!277 = !{!"VP", i32 0, i64 358, i64 8649632521824085322, i64 358}
!278 = !{!"function_entry_count", i64 75}
!279 = !{!"branch_weights", i32 0, i32 75}
!280 = !{!"branch_weights", i32 75, i32 0}
!281 = !{!94, !88, i64 120}
!282 = !{!"function_entry_count", i64 1048804}
!283 = !{!"branch_weights", i32 0, i32 1048804}
!284 = !{!"VP", i32 0, i64 1048804, i64 6851338409076929298, i64 1048804}
!285 = !{!"branch_weights", i32 1, i32 1048803}
!286 = !{!"branch_weights", i32 1048803, i32 0}
!287 = !{!"VP", i32 0, i64 1, i64 -3500381797682012745, i64 1}
!288 = !{!"branch_weights", i32 1048803, i32 1}
!289 = distinct !{!289, !137, !138}
!290 = !{!291, !88, i64 8}
!291 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!292 = distinct !{!292, !137, !138}
!293 = !{!"function_entry_count", i64 42470003}
!294 = !{!"branch_weights", i32 52000, i32 42418003}
!295 = !{!237, !86, i64 24}
!296 = !{!237, !86, i64 0}
!297 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!298 = !{!"function_entry_count", i64 64551586}
!299 = !{!"branch_weights", i32 64551590, i32 18}
!300 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!301 = !{!"branch_weights", i32 18, i32 0}
!302 = !{!"branch_weights", i32 4, i32 64551586}
!303 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!304 = !{!"branch_weights", i32 42418193, i32 22133393}
!305 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!306 = !{!"function_entry_count", i64 22}
!307 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!308 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!309 = !{!"function_entry_count", i64 155828046}
!310 = !{!"branch_weights", i32 0, i32 155828046}
!311 = !{!"branch_weights", i32 133170777, i32 22657269}
!312 = !{!"branch_weights", i32 20, i32 133170757}
!313 = !{!"branch_weights", i32 1, i32 19024395}
!314 = !{!"branch_weights", i32 19024395, i32 -26420601}
!315 = distinct !{!315, !137, !138}
!316 = !{!"branch_weights", i32 20748786, i32 1908483}
!317 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!318 = !{!"branch_weights", i32 20748786, i32 0}
!319 = !{!"branch_weights", i32 0, i32 20748786}
!320 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!321 = !{!"branch_weights", i32 0, i32 1908483}
!322 = !{!"branch_weights", i32 1, i32 1908482}
!323 = !{!"branch_weights", i32 1908482, i32 49797853}
!324 = distinct !{!324, !137, !138}
!325 = !{!"branch_weights", i32 1908482, i32 1}
!326 = distinct !{!326, !137, !138}
!327 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!328 = distinct !{!328, !137, !138}
!329 = !{!"function_entry_count", i64 124150652}
!330 = !{!"branch_weights", i32 124150652, i32 0}
!331 = !{!"function_entry_count", i64 41614}
!332 = !{!"branch_weights", i32 0, i32 41614}
!333 = !{!"branch_weights", i32 12, i32 41602}
!334 = !{!"branch_weights", i32 5, i32 7}
!335 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!336 = !{!"branch_weights", i32 354, i32 41248}
!337 = !{!"branch_weights", i32 40889, i32 359}
!338 = !{!"branch_weights", i32 40581, i32 1021}
!339 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!340 = !{!"function_entry_count", i64 1702}
!341 = !{!"branch_weights", i32 1702, i32 0}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!344 = distinct !{!344, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!347 = distinct !{!347, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi: argument 0"}
!350 = distinct !{!350, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi"}
!351 = distinct !{!351, !137, !138}
!352 = !{!98, !86, i64 16}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!355 = distinct !{!355, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!356 = !{!357, !354}
!357 = distinct !{!357, !358, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!358 = distinct !{!358, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!361 = distinct !{!361, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!362 = !{!179, !180, i64 8}
!363 = !{!291, !88, i64 16}
!364 = !{!291, !86, i64 24}
!365 = !{!291, !86, i64 0}
!366 = !{!"function_entry_count", i64 778}
!367 = !{!"VP", i32 0, i64 389, i64 8345045103670217670, i64 389}
!368 = distinct !{!368, !137, !138}
!369 = distinct !{!369, !137, !138}
!370 = distinct !{!370, !137, !138}
!371 = distinct !{!371, !137, !138}
!372 = !{!"function_entry_count", i64 38126}
!373 = !{!"branch_weights", i32 35900, i32 2226}
!374 = !{!"branch_weights", i32 0, i32 2226}
!375 = !{!"branch_weights", i32 2226, i32 0}
!376 = !{!"VP", i32 0, i64 2226, i64 -7405368087501025645, i64 2226}
!377 = !{!"function_entry_count", i64 3368}
!378 = !{!"branch_weights", i32 1142, i32 2226}
!379 = !{!"VP", i32 0, i64 2226, i64 8345045103670217670, i64 2226}
!380 = !{!"branch_weights", i32 0, i32 1142}
!381 = !{!"VP", i32 0, i64 1142, i64 8345045103670217670, i64 1142}
!382 = !{!"function_entry_count", i64 2226}
!383 = !{!"branch_weights", i32 1, i32 2225}
!384 = !{!"branch_weights", i32 2225, i32 45474}
!385 = distinct !{!385, !137, !138}
!386 = distinct !{!386, !137, !138}
!387 = distinct !{!387, !137, !138}
!388 = distinct !{!388, !137, !138}
!389 = !{!"function_entry_count", i64 1142}
!390 = !{!"branch_weights", i32 1142, i32 0}
!391 = distinct !{!391, !137, !138}
!392 = !{i8 0, i8 2}
!393 = !{!229, !86, i64 0}
!394 = distinct !{!394, !137, !138}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!397 = distinct !{!397, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!398 = !{!399, !396}
!399 = distinct !{!399, !400, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!400 = distinct !{!400, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!403 = distinct !{!403, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!406 = distinct !{!406, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!409 = distinct !{!409, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!412 = distinct !{!412, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!415 = distinct !{!415, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!418 = distinct !{!418, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!421 = distinct !{!421, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!424 = distinct !{!424, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!427 = distinct !{!427, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES5_NS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!428 = distinct !{!428, !137, !138}
!429 = distinct !{!429, !137, !138}
!430 = distinct !{!430, !137, !138}
!431 = distinct !{!431, !137, !138}
!432 = distinct !{!432, !137, !138}
!433 = distinct !{!433, !137, !138}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!436 = distinct !{!436, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!439 = distinct !{!439, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!440 = distinct !{!440, !137, !138}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!443 = distinct !{!443, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!444 = !{i64 0, i64 8, !131, i64 8, i64 1, !445}
!445 = !{!180, !180, i64 0}
!446 = distinct !{!446, !137, !138}
!447 = distinct !{!447, !137, !138}
!448 = distinct !{!448, !137, !138}
!449 = distinct !{!449, !137, !138}
!450 = distinct !{!450, !137, !138}
!451 = distinct !{!451, !137, !138}
!452 = distinct !{!452, !137, !138}
!453 = distinct !{!453, !137, !138}
!454 = distinct !{!454, !137, !138}
!455 = distinct !{!455, !137, !138}
!456 = distinct !{!456, !137, !138}
!457 = !{!"function_entry_count", i64 464}
!458 = !{!"branch_weights", i32 389, i32 75}
!459 = !{!"VP", i32 0, i64 75, i64 8345045103670217670, i64 75}
!460 = !{!"branch_weights", i32 1, i32 149}
!461 = !{i64 0, i64 8, !131, i64 8, i64 8, !131}
!462 = !{!"branch_weights", i32 149, i32 1}
!463 = distinct !{!463, !137, !138}
!464 = distinct !{!464, !137, !138}
!465 = distinct !{!465, !137, !138}
!466 = distinct !{!466, !137, !138}
!467 = !{!468, !470, !472}
!468 = distinct !{!468, !469, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv: argument 0"}
!469 = distinct !{!469, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE5beginEv"}
!470 = distinct !{!470, !471, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!471 = distinct !{!471, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!472 = distinct !{!472, !473, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv: argument 0"}
!473 = distinct !{!473, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5beginEv"}
!474 = !{!475, !477, !479}
!475 = distinct !{!475, !476, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!476 = distinct !{!476, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!477 = distinct !{!477, !478, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!478 = distinct !{!478, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!479 = distinct !{!479, !480, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!480 = distinct !{!480, !"_ZNK11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!481 = !{!482, !484}
!482 = distinct !{!482, !483, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv: argument 0"}
!483 = distinct !{!483, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEE3endEv"}
!484 = distinct !{!484, !485, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv: argument 0"}
!485 = distinct !{!485, !"_ZN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE3endEv"}
!486 = !{!"function_entry_count", i64 1}
!487 = !{!"NamespacesHandler.cpp;_GLOBAL__sub_I_NamespacesHandler.cpp"}
