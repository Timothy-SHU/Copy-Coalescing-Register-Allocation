; ModuleID = 'XPathProcessorImpl.cpp'
source_filename = "XPathProcessorImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" = type { ptr, i32 }
%"class.xalanc_1_10::XPathProcessorImpl" = type <{ %"class.xalanc_1_10::XPathProcessor", %"class.xalanc_1_10::XalanDOMString", i16, [6 x i8], ptr, ptr, ptr, ptr, i8, i8, [6 x i8], ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanMap", i8, i8, [6 x i8] }>
%"class.xalanc_1_10::XPathProcessor" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.1", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.2", i32, %"class.xalanc_1_10::XalanVector.3", i32, ptr, %"class.xalanc_1_10::XalanVector.4" }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator.7" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.std::pair.5" = type { %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::DOMStringPrintWriter" = type { %"class.xalanc_1_10::PrintWriter", ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv = comdat any

$_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEixERS2_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_RKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_ = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIS2_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISE_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1018XPathProcessorImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018XPathProcessorImplE, ptr @_ZN11xalanc_1_1018XPathProcessorImplD2Ev, ptr @_ZN11xalanc_1_1018XPathProcessorImplD0Ev, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb] }, align 8
@_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZTIN11xalanc_1_1020XPathParserExceptionE = external constant ptr
@_ZN11xalanc_1_1018XPathFunctionTable5s_keyE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable10s_positionE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_lastE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_countE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable5s_notE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_trueE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_falseE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable6s_nameE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable8s_numberE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_floorE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable7s_roundE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable8s_stringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable5s_sumE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable14s_namespaceUriE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl12s_dummyEntryE = dso_local constant %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr null, i32 -1 }, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1018XPathProcessorImpl18s_functionIDStringE = dso_local constant [3 x i16] [i16 105, i16 100, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl19s_functionKeyStringE = dso_local constant [4 x i16] [i16 107, i16 101, i16 121, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl10s_orStringE = dso_local constant [3 x i16] [i16 111, i16 114, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl11s_andStringE = dso_local constant [4 x i16] [i16 97, i16 110, i16 100, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl11s_divStringE = dso_local constant [4 x i16] [i16 100, i16 105, i16 118, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl11s_modStringE = dso_local constant [4 x i16] [i16 109, i16 111, i16 100, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl11s_dotStringE = dso_local constant [2 x i16] [i16 46, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl14s_dotDotStringE = dso_local constant [3 x i16] [i16 46, i16 46, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl12s_axisStringE = dso_local constant [3 x i16] [i16 58, i16 58, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl17s_attributeStringE = dso_local constant [10 x i16] [i16 97, i16 116, i16 116, i16 114, i16 105, i16 98, i16 117, i16 116, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl13s_childStringE = dso_local constant [6 x i16] [i16 99, i16 104, i16 105, i16 108, i16 100, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl12s_lastStringE = dso_local constant [5 x i16] [i16 108, i16 97, i16 115, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl16s_positionStringE = dso_local constant [9 x i16] [i16 112, i16 111, i16 115, i16 105, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl16s_asteriskStringE = dso_local constant [2 x i16] [i16 42, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl15s_commentStringE = dso_local constant [8 x i16] [i16 99, i16 111, i16 109, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl10s_piStringE = dso_local constant [23 x i16] [i16 112, i16 114, i16 111, i16 99, i16 101, i16 115, i16 115, i16 105, i16 110, i16 103, i16 45, i16 105, i16 110, i16 115, i16 116, i16 114, i16 117, i16 99, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl12s_nodeStringE = dso_local constant [5 x i16] [i16 110, i16 111, i16 100, i16 101, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl12s_textStringE = dso_local constant [5 x i16] [i16 116, i16 101, i16 120, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl16s_ancestorStringE = dso_local constant [9 x i16] [i16 97, i16 110, i16 99, i16 101, i16 115, i16 116, i16 111, i16 114, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl22s_ancestorOrSelfStringE = dso_local constant [17 x i16] [i16 97, i16 110, i16 99, i16 101, i16 115, i16 116, i16 111, i16 114, i16 45, i16 111, i16 114, i16 45, i16 115, i16 101, i16 108, i16 102, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl18s_descendantStringE = dso_local constant [11 x i16] [i16 100, i16 101, i16 115, i16 99, i16 101, i16 110, i16 100, i16 97, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl24s_descendantOrSelfStringE = dso_local constant [19 x i16] [i16 100, i16 101, i16 115, i16 99, i16 101, i16 110, i16 100, i16 97, i16 110, i16 116, i16 45, i16 111, i16 114, i16 45, i16 115, i16 101, i16 108, i16 102, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl17s_followingStringE = dso_local constant [10 x i16] [i16 102, i16 111, i16 108, i16 108, i16 111, i16 119, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl24s_followingSiblingStringE = dso_local constant [18 x i16] [i16 102, i16 111, i16 108, i16 108, i16 111, i16 119, i16 105, i16 110, i16 103, i16 45, i16 115, i16 105, i16 98, i16 108, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl14s_parentStringE = dso_local constant [7 x i16] [i16 112, i16 97, i16 114, i16 101, i16 110, i16 116, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl17s_precedingStringE = dso_local constant [10 x i16] [i16 112, i16 114, i16 101, i16 99, i16 101, i16 100, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl24s_precedingSiblingStringE = dso_local constant [18 x i16] [i16 112, i16 114, i16 101, i16 99, i16 101, i16 100, i16 105, i16 110, i16 103, i16 45, i16 115, i16 105, i16 98, i16 108, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl12s_selfStringE = dso_local constant [5 x i16] [i16 115, i16 101, i16 108, i16 102, i16 0], align 2
@_ZN11xalanc_1_1018XPathProcessorImpl17s_namespaceStringE = dso_local constant [10 x i16] [i16 110, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl15s_functionTableE = dso_local constant [19 x %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry"] [%"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_notE, i32 59 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE, i32 78 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl12s_lastStringE, i32 57 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE, i32 63 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl12s_nodeStringE, i32 30 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl12s_textStringE, i32 28 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE, i32 60 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_countE, i32 58 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE, i32 61 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE, i32 67 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE, i32 69 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE, i32 70 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE, i32 62 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE, i32 68 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl15s_commentStringE, i32 27 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl16s_positionStringE, i32 56 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE, i32 65 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE, i32 74 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl10s_piStringE, i32 29 }], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl19s_functionTableSizeE = dso_local local_unnamed_addr constant i64 19, align 8
@_ZN11xalanc_1_1018XPathProcessorImpl15s_nodeTypeTableE = dso_local constant [5 x %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry"] [%"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl16s_asteriskStringE, i32 33 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl12s_nodeStringE, i32 30 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl12s_textStringE, i32 28 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl15s_commentStringE, i32 27 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl10s_piStringE, i32 29 }], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl19s_nodeTypeTableSizeE = dso_local local_unnamed_addr constant i64 5, align 8
@_ZN11xalanc_1_1018XPathProcessorImpl11s_axisTableE = dso_local constant [13 x %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry"] [%"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl12s_selfStringE, i32 45 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl13s_childStringE, i32 37 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl14s_parentStringE, i32 42 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl16s_ancestorStringE, i32 34 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl17s_attributeStringE, i32 36 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl17s_followingStringE, i32 40 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl17s_namespaceStringE, i32 46 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl17s_precedingStringE, i32 43 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl18s_descendantStringE, i32 38 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl22s_ancestorOrSelfStringE, i32 35 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl24s_followingSiblingStringE, i32 41 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl24s_precedingSiblingStringE, i32 44 }, %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry" { ptr @_ZN11xalanc_1_1018XPathProcessorImpl24s_descendantOrSelfStringE, i32 39 }], align 16
@_ZN11xalanc_1_1018XPathProcessorImpl15s_axisTableSizeE = dso_local local_unnamed_addr constant i64 13, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018XPathProcessorImplE = dso_local constant [36 x i8] c"N11xalanc_1_1018XPathProcessorImplE\00", align 1
@_ZTIN11xalanc_1_1014XPathProcessorE = external constant ptr
@_ZTIN11xalanc_1_1018XPathProcessorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018XPathProcessorImplE, ptr @_ZTIN11xalanc_1_1014XPathProcessorE }, align 8
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPathProcessorImpl.cpp, ptr null }]

@_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018XPathProcessorImplC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018XPathProcessorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XPathProcessorImplD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !266 {
  tail call void @_ZN11xalanc_1_1014XPathProcessorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1018XPathProcessorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !267
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %22, !prof !270

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  store i16 0, ptr %5, align 8, !tbaa !271
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %6, i8 0, i64 34, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !289
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !290
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 3
  store float 7.500000e-01, ptr %10, align 8, !tbaa !291
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 4
  store i64 29, ptr %11, align 8, !tbaa !292
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 5
  store i64 0, ptr %12, align 8, !tbaa !293
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 6
  store ptr %1, ptr %13, align 8, !tbaa !294
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 6, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %1, ptr %15, align 8, !tbaa !294
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 7, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store ptr %1, ptr %17, align 8, !tbaa !295
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 8, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  store i64 50, ptr %19, align 8, !tbaa !296
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 14
  store i8 1, ptr %20, align 8, !tbaa !297
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 15
  store i8 1, ptr %21, align 1, !tbaa !298
  ret void

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XPathProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %23
}

declare void @_ZN11xalanc_1_1014XPathProcessorC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !299 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !300
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !301

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !302
  %8 = load ptr, ptr %0, align 8, !tbaa !289
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !303

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !304 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XPathProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !266 {
  %2 = load ptr, ptr %0, align 8, !tbaa !267
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 280), !prof !305
  invoke void @_ZN11xalanc_1_1018XPathProcessorImplC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %7, !prof !270

6:                                                ; preds = %1
  ret ptr %5

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !267
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %17 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #21
  unreachable

17:                                               ; preds = %7, %10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(274) %0) unnamed_addr #2 align 2 !prof !266 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1018XPathProcessorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !267
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #20
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  tail call void @_ZN11xalanc_1_1014XPathProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !266 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !270

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !306
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !307

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !308, !noalias !309
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !312

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !294, !noalias !309
  %13 = load ptr, ptr %12, align 8, !tbaa !267, !noalias !309
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !309
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !308, !noalias !309
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !313, !noalias !309
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !316, !noalias !309
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !308, !noalias !309
  br label %22

22:                                               ; preds = %40, %20
  %23 = phi ptr [ %21, %20 ], [ %25, %40 ]
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !313, !noalias !317
  %26 = load ptr, ptr %8, align 8, !tbaa !308, !noalias !318
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37, !prof !321

28:                                               ; preds = %22
  %29 = load ptr, ptr %7, align 8, !tbaa !294, !noalias !318
  %30 = load ptr, ptr %29, align 8, !tbaa !267, !noalias !318
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !noalias !318
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 32)
          to label %34 unwind label %51

34:                                               ; preds = %28
  store ptr %33, ptr %8, align 8, !tbaa !308, !noalias !318
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %33, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !313, !noalias !318
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %33, i64 0, i32 1
  store ptr %33, ptr %36, align 8, !tbaa !316, !noalias !318
  br label %37

37:                                               ; preds = %22, %34
  %38 = load ptr, ptr %8, align 8, !tbaa !308, !noalias !318
  %39 = icmp eq ptr %25, %38
  br i1 %39, label %47, label %40, !prof !307

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %25, align 8, !tbaa !322
  %43 = load ptr, ptr %41, align 8, !tbaa !290
  %44 = load ptr, ptr %43, align 8, !tbaa !267
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %22 unwind label %51, !prof !323, !llvm.loop !324

47:                                               ; preds = %37, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #20
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #20
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #20
  ret void

51:                                               ; preds = %28, %40
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
  tail call void @__clang_call_terminate(ptr %57) #21
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(274) %0) unnamed_addr #2 align 2 !prof !304 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1018XPathProcessorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !267
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #20
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  tail call void @_ZN11xalanc_1_1014XPathProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 align 2 !prof !327 {
  %9 = zext i1 %6 to i8
  %10 = zext i1 %7 to i8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %11, align 1, !tbaa !328
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 8
  store i8 0, ptr %12, align 8, !tbaa !329
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 14
  store i8 %9, ptr %13, align 8, !tbaa !297
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 15
  store i8 %10, ptr %14, align 1, !tbaa !298
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !330
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  store ptr %2, ptr %16, align 8, !tbaa !331
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %17, align 8, !tbaa !332
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 7
  store ptr %4, ptr %18, align 8, !tbaa !333
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 11
  store ptr %5, ptr %19, align 8, !tbaa !334
  tail call void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %20 = load ptr, ptr %17, align 8, !tbaa !332
  %21 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %20, i32 noundef 1)
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !335
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !336

26:                                               ; preds = %8
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 22)
  unreachable

27:                                               ; preds = %8
  store ptr null, ptr %19, align 8, !tbaa !334
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %29 = load i64, ptr %28, align 8, !tbaa !337
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %32, label %31, !prof !336

31:                                               ; preds = %27
  store i64 0, ptr %28, align 8, !tbaa !337
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %33)
  ret void
}

declare void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  %7 = load ptr, ptr %6, align 8, !tbaa !267
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %1), !prof !339
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %4, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !340
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !335
  %14 = load ptr, ptr %5, align 8, !tbaa !331
  %15 = load ptr, ptr %14, align 8, !tbaa !267
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %14), !prof !345
  %19 = icmp sgt i32 %13, 0
  br i1 %19, label %20, label %22, !prof !346

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  br label %28

22:                                               ; preds = %279, %2
  %23 = phi i32 [ -1, %2 ], [ %280, %279 ]
  %24 = phi i32 [ -1, %2 ], [ %282, %279 ]
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %298, label %285, !prof !347

26:                                               ; preds = %297, %290, %304, %289, %287
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %317

28:                                               ; preds = %20, %279
  %29 = phi i32 [ -1, %20 ], [ %282, %279 ]
  %30 = phi i32 [ 0, %20 ], [ %283, %279 ]
  %31 = phi i32 [ -1, %20 ], [ %280, %279 ]
  %32 = zext i32 %30 to i64
  %33 = load ptr, ptr %21, align 8, !tbaa !348
  %34 = getelementptr inbounds i16, ptr %33, i64 %32
  %35 = load i16, ptr %34, align 2, !tbaa !349
  switch i16 %35, label %232 [
    i16 34, label %40
    i16 39, label %101
    i16 10, label %160
    i16 13, label %160
    i16 32, label %160
    i16 9, label %160
    i16 45, label %177
    i16 64, label %179
    i16 40, label %179
    i16 91, label %179
    i16 41, label %179
    i16 93, label %179
    i16 124, label %179
    i16 47, label %179
    i16 42, label %179
    i16 43, label %179
    i16 61, label %179
    i16 44, label %179
    i16 92, label %179
    i16 94, label %179
    i16 33, label %179
    i16 36, label %179
    i16 60, label %179
    i16 62, label %179
    i16 58, label %205
  ], !prof !350

36:                                               ; preds = %174, %44, %46, %89, %105, %107, %150, %164, %166, %183, %185, %194, %214, %223, %47, %54, %91, %98, %108, %115, %152, %159, %167, %186, %193, %197, %204, %215, %222, %225
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %317

38:                                               ; preds = %99
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %317

40:                                               ; preds = %28
  %41 = icmp eq i32 %29, -1
  br i1 %41, label %55, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %31, -1
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %29, i32 noundef %31, i32 noundef %30)
          to label %55 unwind label %36

46:                                               ; preds = %42
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %29, i32 noundef %30)
          to label %47 unwind label %36

47:                                               ; preds = %46
  %48 = load ptr, ptr %3, align 8, !tbaa !332
  %49 = load ptr, ptr %5, align 8, !tbaa !331
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef nonnull align 8 dereferenceable(36) ptr %52(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %54 unwind label %36

54:                                               ; preds = %47
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %48, ptr noundef nonnull align 8 dereferenceable(36) %53)
          to label %55 unwind label %36

55:                                               ; preds = %44, %54, %40
  %56 = phi i32 [ %31, %40 ], [ -1, %54 ], [ -1, %44 ]
  %57 = add nsw i32 %30, 1
  %58 = icmp sge i32 %57, %13
  br i1 %58, label %82, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %21, align 8, !tbaa !348
  %61 = zext i32 %57 to i64
  %62 = getelementptr inbounds i16, ptr %60, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !349
  %64 = icmp eq i16 %63, 34
  br i1 %64, label %82, label %65, !llvm.loop !351

65:                                               ; preds = %59
  %66 = add nsw i32 %13, -1
  br label %67

67:                                               ; preds = %65, %72
  %68 = phi i16 [ %75, %72 ], [ %63, %65 ]
  %69 = phi i32 [ %70, %72 ], [ %57, %65 ]
  %70 = add i32 %69, 1
  %71 = icmp eq i32 %70, %13
  br i1 %71, label %77, label %72, !llvm.loop !351

72:                                               ; preds = %67
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds i16, ptr %60, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !349
  %76 = icmp eq i16 %75, 34
  br i1 %76, label %77, label %67, !llvm.loop !351

77:                                               ; preds = %67, %72
  %78 = phi i32 [ %66, %67 ], [ %69, %72 ]
  %79 = phi i32 [ %13, %67 ], [ %70, %72 ]
  %80 = phi i16 [ %68, %67 ], [ %75, %72 ]
  %81 = icmp sge i32 %70, %13
  br label %82

82:                                               ; preds = %77, %59, %55
  %83 = phi i32 [ %30, %55 ], [ %30, %59 ], [ %78, %77 ]
  %84 = phi i32 [ %57, %55 ], [ %57, %59 ], [ %79, %77 ]
  %85 = phi i1 [ %58, %55 ], [ %58, %59 ], [ %81, %77 ]
  %86 = phi i16 [ %35, %55 ], [ %63, %59 ], [ %80, %77 ]
  %87 = icmp ne i16 %86, 34
  %88 = or i1 %85, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %82
  %90 = add nsw i32 %83, 2
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %30, i32 noundef %90)
          to label %91 unwind label %36

91:                                               ; preds = %89
  %92 = load ptr, ptr %3, align 8, !tbaa !332
  %93 = load ptr, ptr %5, align 8, !tbaa !331
  %94 = load ptr, ptr %93, align 8, !tbaa !267
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef nonnull align 8 dereferenceable(36) ptr %96(ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %98 unwind label %36

98:                                               ; preds = %91
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %92, ptr noundef nonnull align 8 dereferenceable(36) %97)
          to label %279 unwind label %36

99:                                               ; preds = %143, %82
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 23)
          to label %100 unwind label %38

100:                                              ; preds = %99
  unreachable

101:                                              ; preds = %28
  %102 = icmp eq i32 %29, -1
  br i1 %102, label %116, label %103, !prof !352

103:                                              ; preds = %101
  %104 = icmp eq i32 %31, -1
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %29, i32 noundef %31, i32 noundef %30)
          to label %116 unwind label %36

107:                                              ; preds = %103
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %29, i32 noundef %30)
          to label %108 unwind label %36

108:                                              ; preds = %107
  %109 = load ptr, ptr %3, align 8, !tbaa !332
  %110 = load ptr, ptr %5, align 8, !tbaa !331
  %111 = load ptr, ptr %110, align 8, !tbaa !267
  %112 = getelementptr inbounds ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef nonnull align 8 dereferenceable(36) ptr %113(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %115 unwind label %36

115:                                              ; preds = %108
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %109, ptr noundef nonnull align 8 dereferenceable(36) %114)
          to label %116 unwind label %36

116:                                              ; preds = %105, %115, %101
  %117 = phi i32 [ %31, %101 ], [ -1, %115 ], [ -1, %105 ]
  %118 = add nsw i32 %30, 1
  %119 = icmp sge i32 %118, %13
  br i1 %119, label %143, label %120, !prof !312

120:                                              ; preds = %116
  %121 = load ptr, ptr %21, align 8, !tbaa !348
  %122 = zext i32 %118 to i64
  %123 = getelementptr inbounds i16, ptr %121, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !349
  %125 = icmp eq i16 %124, 39
  br i1 %125, label %143, label %126, !prof !353, !llvm.loop !354

126:                                              ; preds = %120
  %127 = add nsw i32 %13, -1
  br label %128

128:                                              ; preds = %126, %133
  %129 = phi i16 [ %136, %133 ], [ %124, %126 ]
  %130 = phi i32 [ %131, %133 ], [ %118, %126 ]
  %131 = add i32 %130, 1
  %132 = icmp eq i32 %131, %13
  br i1 %132, label %138, label %133, !prof !355, !llvm.loop !354

133:                                              ; preds = %128
  %134 = zext i32 %131 to i64
  %135 = getelementptr inbounds i16, ptr %121, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !349
  %137 = icmp eq i16 %136, 39
  br i1 %137, label %138, label %128, !prof !356, !llvm.loop !354

138:                                              ; preds = %128, %133
  %139 = phi i32 [ %127, %128 ], [ %130, %133 ]
  %140 = phi i32 [ %13, %128 ], [ %131, %133 ]
  %141 = phi i16 [ %129, %128 ], [ %136, %133 ]
  %142 = icmp sge i32 %131, %13
  br label %143

143:                                              ; preds = %138, %120, %116
  %144 = phi i32 [ %30, %116 ], [ %30, %120 ], [ %139, %138 ]
  %145 = phi i32 [ %118, %116 ], [ %118, %120 ], [ %140, %138 ]
  %146 = phi i1 [ %119, %116 ], [ %119, %120 ], [ %142, %138 ]
  %147 = phi i16 [ %35, %116 ], [ %124, %120 ], [ %141, %138 ]
  %148 = icmp ne i16 %147, 39
  %149 = or i1 %146, %148
  br i1 %149, label %99, label %150, !prof !357

150:                                              ; preds = %143
  %151 = add nsw i32 %144, 2
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %30, i32 noundef %151)
          to label %152 unwind label %36, !prof !352

152:                                              ; preds = %150
  %153 = load ptr, ptr %3, align 8, !tbaa !332
  %154 = load ptr, ptr %5, align 8, !tbaa !331
  %155 = load ptr, ptr %154, align 8, !tbaa !267
  %156 = getelementptr inbounds ptr, ptr %155, i64 3
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef nonnull align 8 dereferenceable(36) ptr %157(ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %159 unwind label %36, !prof !358

159:                                              ; preds = %152
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %153, ptr noundef nonnull align 8 dereferenceable(36) %158)
          to label %279 unwind label %36, !prof !352

160:                                              ; preds = %28, %28, %28, %28
  %161 = icmp eq i32 %29, -1
  br i1 %161, label %279, label %162, !prof !359

162:                                              ; preds = %160
  %163 = icmp eq i32 %31, -1
  br i1 %163, label %166, label %164, !prof !360

164:                                              ; preds = %162
  %165 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %29, i32 noundef %31, i32 noundef %30)
          to label %279 unwind label %36

166:                                              ; preds = %162
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %29, i32 noundef %30)
          to label %167 unwind label %36, !prof !360

167:                                              ; preds = %166
  %168 = load ptr, ptr %3, align 8, !tbaa !332
  %169 = load ptr, ptr %5, align 8, !tbaa !331
  %170 = load ptr, ptr %169, align 8, !tbaa !267
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef nonnull align 8 dereferenceable(36) ptr %172(ptr noundef nonnull align 8 dereferenceable(16) %169, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %174 unwind label %36, !prof !361

174:                                              ; preds = %225, %167
  %175 = phi ptr [ %168, %167 ], [ %226, %225 ]
  %176 = phi ptr [ %173, %167 ], [ %231, %225 ]
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %175, ptr noundef nonnull align 8 dereferenceable(36) %176)
          to label %279 unwind label %36, !prof !360

177:                                              ; preds = %28
  %178 = icmp eq i32 %29, -1
  br i1 %178, label %194, label %279, !prof !362

179:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %180 = icmp eq i32 %29, -1
  br i1 %180, label %194, label %181, !prof !363

181:                                              ; preds = %179
  %182 = icmp eq i32 %31, -1
  br i1 %182, label %185, label %183, !prof !364

183:                                              ; preds = %181
  %184 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %29, i32 noundef %31, i32 noundef %30)
          to label %194 unwind label %36, !prof !365

185:                                              ; preds = %181
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %29, i32 noundef %30)
          to label %186 unwind label %36, !prof !366

186:                                              ; preds = %185
  %187 = load ptr, ptr %3, align 8, !tbaa !332
  %188 = load ptr, ptr %5, align 8, !tbaa !331
  %189 = load ptr, ptr %188, align 8, !tbaa !267
  %190 = getelementptr inbounds ptr, ptr %189, i64 3
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef nonnull align 8 dereferenceable(36) ptr %191(ptr noundef nonnull align 8 dereferenceable(16) %188, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %193 unwind label %36, !prof !367

193:                                              ; preds = %186
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %187, ptr noundef nonnull align 8 dereferenceable(36) %192)
          to label %194 unwind label %36, !prof !366

194:                                              ; preds = %193, %183, %177, %179
  %195 = phi i32 [ %31, %179 ], [ %31, %177 ], [ -1, %183 ], [ -1, %193 ]
  %196 = add nsw i32 %30, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %30, i32 noundef %196)
          to label %197 unwind label %36, !prof !368

197:                                              ; preds = %194
  %198 = load ptr, ptr %3, align 8, !tbaa !332
  %199 = load ptr, ptr %5, align 8, !tbaa !331
  %200 = load ptr, ptr %199, align 8, !tbaa !267
  %201 = getelementptr inbounds ptr, ptr %200, i64 3
  %202 = load ptr, ptr %201, align 8
  %203 = invoke noundef nonnull align 8 dereferenceable(36) ptr %202(ptr noundef nonnull align 8 dereferenceable(16) %199, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %204 unwind label %36, !prof !369

204:                                              ; preds = %197
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %198, ptr noundef nonnull align 8 dereferenceable(36) %203)
          to label %279 unwind label %36, !prof !368

205:                                              ; preds = %28
  %206 = add nsw i32 %30, -1
  %207 = icmp eq i32 %31, %206
  %208 = icmp sgt i32 %30, 0
  %209 = and i1 %208, %207
  br i1 %209, label %210, label %232, !prof !370

210:                                              ; preds = %205
  %211 = icmp ne i32 %29, -1
  %212 = icmp slt i32 %29, %206
  %213 = and i1 %211, %212
  br i1 %213, label %214, label %223, !prof !270

214:                                              ; preds = %210
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %29, i32 noundef %206)
          to label %215 unwind label %36, !prof !270

215:                                              ; preds = %214
  %216 = load ptr, ptr %3, align 8, !tbaa !332
  %217 = load ptr, ptr %5, align 8, !tbaa !331
  %218 = load ptr, ptr %217, align 8, !tbaa !267
  %219 = getelementptr inbounds ptr, ptr %218, i64 3
  %220 = load ptr, ptr %219, align 8
  %221 = invoke noundef nonnull align 8 dereferenceable(36) ptr %220(ptr noundef nonnull align 8 dereferenceable(16) %217, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %222 unwind label %36, !prof !371

222:                                              ; preds = %215
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %216, ptr noundef nonnull align 8 dereferenceable(36) %221)
          to label %223 unwind label %36, !prof !270

223:                                              ; preds = %222, %210
  %224 = add nuw nsw i32 %30, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %206, i32 noundef %224)
          to label %225 unwind label %36, !prof !270

225:                                              ; preds = %223
  %226 = load ptr, ptr %3, align 8, !tbaa !332
  %227 = load ptr, ptr %5, align 8, !tbaa !331
  %228 = load ptr, ptr %227, align 8, !tbaa !267
  %229 = getelementptr inbounds ptr, ptr %228, i64 3
  %230 = load ptr, ptr %229, align 8
  %231 = invoke noundef nonnull align 8 dereferenceable(36) ptr %230(ptr noundef nonnull align 8 dereferenceable(16) %227, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %174 unwind label %36, !prof !371

232:                                              ; preds = %205, %28
  %233 = phi i32 [ %31, %28 ], [ %30, %205 ]
  %234 = icmp eq i32 %29, -1
  br i1 %234, label %235, label %279, !prof !372

235:                                              ; preds = %232
  %236 = zext i16 %35 to i64
  %237 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !373
  %239 = icmp eq i8 %238, 4
  br i1 %239, label %240, label %279, !prof !374

240:                                              ; preds = %235
  %241 = add nsw i32 %13, -1
  br label %242

242:                                              ; preds = %240, %262
  %243 = phi i32 [ %263, %262 ], [ %30, %240 ]
  %244 = phi i8 [ %265, %262 ], [ 0, %240 ]
  %245 = icmp slt i32 %243, %241
  br i1 %245, label %246, label %266, !prof !375

246:                                              ; preds = %242
  %247 = add nsw i32 %243, 1
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i16, ptr %33, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !349
  %251 = icmp eq i16 %250, 46
  br i1 %251, label %252, label %255, !prof !376

252:                                              ; preds = %246
  %253 = and i8 %244, 1
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %260, label %262

255:                                              ; preds = %246
  %256 = zext i16 %250 to i64
  %257 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !373
  %259 = icmp eq i8 %258, 4
  br i1 %259, label %260, label %262, !prof !377

260:                                              ; preds = %252, %255
  %261 = phi i8 [ %244, %255 ], [ 1, %252 ]
  br label %262

262:                                              ; preds = %255, %252, %260
  %263 = phi i32 [ %247, %260 ], [ %243, %252 ], [ %243, %255 ]
  %264 = phi i1 [ true, %260 ], [ false, %252 ], [ false, %255 ]
  %265 = phi i8 [ %261, %260 ], [ %244, %252 ], [ %244, %255 ]
  br i1 %264, label %242, label %266, !prof !377

266:                                              ; preds = %262, %242
  %267 = phi i32 [ %243, %242 ], [ %263, %262 ]
  %268 = add nsw i32 %267, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %30, i32 noundef %268)
          to label %269 unwind label %277, !prof !378

269:                                              ; preds = %266
  %270 = load ptr, ptr %3, align 8, !tbaa !332
  %271 = load ptr, ptr %5, align 8, !tbaa !331
  %272 = load ptr, ptr %271, align 8, !tbaa !267
  %273 = getelementptr inbounds ptr, ptr %272, i64 3
  %274 = load ptr, ptr %273, align 8
  %275 = invoke noundef nonnull align 8 dereferenceable(36) ptr %274(ptr noundef nonnull align 8 dereferenceable(16) %271, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %276 unwind label %277, !prof !379

276:                                              ; preds = %269
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %270, ptr noundef nonnull align 8 dereferenceable(36) %275)
          to label %279 unwind label %277, !prof !378

277:                                              ; preds = %276, %269, %266
  %278 = landingpad { ptr, i32 }
          cleanup
  br label %317

279:                                              ; preds = %174, %232, %164, %160, %159, %98, %276, %204, %177, %235
  %280 = phi i32 [ %233, %235 ], [ %31, %177 ], [ %195, %204 ], [ %233, %276 ], [ %56, %98 ], [ %117, %159 ], [ %31, %160 ], [ -1, %164 ], [ %233, %232 ], [ -1, %174 ]
  %281 = phi i32 [ %30, %235 ], [ %30, %177 ], [ %30, %204 ], [ %267, %276 ], [ %84, %98 ], [ %145, %159 ], [ %30, %160 ], [ %30, %164 ], [ %30, %232 ], [ %30, %174 ]
  %282 = phi i32 [ %30, %235 ], [ %29, %177 ], [ -1, %204 ], [ -1, %276 ], [ -1, %98 ], [ -1, %159 ], [ -1, %160 ], [ -1, %164 ], [ %29, %232 ], [ -1, %174 ]
  %283 = add nsw i32 %281, 1
  %284 = icmp slt i32 %283, %13
  br i1 %284, label %28, label %22, !prof !380, !llvm.loop !381

285:                                              ; preds = %22
  %286 = icmp eq i32 %23, -1
  br i1 %286, label %289, label %287, !prof !382

287:                                              ; preds = %285
  %288 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %24, i32 noundef %23, i32 noundef %13)
          to label %298 unwind label %26, !prof !383

289:                                              ; preds = %285
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef %24, i32 noundef %13)
          to label %290 unwind label %26, !prof !384

290:                                              ; preds = %289
  %291 = load ptr, ptr %3, align 8, !tbaa !332
  %292 = load ptr, ptr %5, align 8, !tbaa !331
  %293 = load ptr, ptr %292, align 8, !tbaa !267
  %294 = getelementptr inbounds ptr, ptr %293, i64 3
  %295 = load ptr, ptr %294, align 8
  %296 = invoke noundef nonnull align 8 dereferenceable(36) ptr %295(ptr noundef nonnull align 8 dereferenceable(16) %292, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %297 unwind label %26, !prof !385

297:                                              ; preds = %290
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %291, ptr noundef nonnull align 8 dereferenceable(36) %296)
          to label %298 unwind label %26, !prof !384

298:                                              ; preds = %297, %287, %22
  %299 = load ptr, ptr %3, align 8, !tbaa !332
  %300 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %299, i64 0, i32 2, i32 1
  %301 = load i64, ptr %300, align 8, !tbaa !386
  %302 = and i64 %301, 4294967295
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %306, !prof !387

304:                                              ; preds = %298
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 24)
          to label %305 unwind label %26

305:                                              ; preds = %304
  unreachable

306:                                              ; preds = %298
  %307 = load ptr, ptr %3, align 8, !tbaa !332
  %308 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %307, i64 0, i32 3
  store i32 0, ptr %308, align 8, !tbaa !388
  %309 = load ptr, ptr %14, align 8, !tbaa !267
  %310 = getelementptr inbounds ptr, ptr %309, i64 6
  %311 = load ptr, ptr %310, align 8
  %312 = invoke noundef zeroext i1 %311(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %316 unwind label %313, !prof !389

313:                                              ; preds = %306
  %314 = landingpad { ptr, i32 }
          catch ptr null
  %315 = extractvalue { ptr, i32 } %314, 0
  tail call void @__clang_call_terminate(ptr %315) #21
  unreachable

316:                                              ; preds = %306
  ret void

317:                                              ; preds = %36, %38, %26, %277
  %318 = phi { ptr, i32 } [ %27, %26 ], [ %278, %277 ], [ %37, %36 ], [ %39, %38 ]
  %319 = load ptr, ptr %14, align 8, !tbaa !267
  %320 = getelementptr inbounds ptr, ptr %319, i64 6
  %321 = load ptr, ptr %320, align 8
  %322 = invoke noundef zeroext i1 %321(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %326 unwind label %323

323:                                              ; preds = %317
  %324 = landingpad { ptr, i32 }
          catch ptr null
  %325 = extractvalue { ptr, i32 } %324, 0
  tail call void @__clang_call_terminate(ptr %325) #21
  unreachable

326:                                              ; preds = %317
  resume { ptr, i32 } %318
}

declare noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #6 align 2 !prof !390 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !386
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !388
  %9 = icmp slt i32 %8, %6
  br i1 %9, label %10, label %16, !prof !391

10:                                               ; preds = %1
  %11 = add nsw i32 %8, 1
  store i32 %11, ptr %7, align 8, !tbaa !388
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !392
  %15 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %14, i64 %12
  br label %16

16:                                               ; preds = %1, %10
  %17 = phi ptr [ %15, %10 ], [ null, %1 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26, !prof !393

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !394
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %37, label %23, !prof !387

23:                                               ; preds = %19
  %24 = load i64, ptr %20, align 8, !tbaa !394
  %25 = sub i64 %24, %21
  store i64 %25, ptr %20, align 8, !tbaa !394
  br label %37

26:                                               ; preds = %16
  %27 = load ptr, ptr %17, align 8, !tbaa !267
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef nonnull align 8 dereferenceable(36) ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %17), !prof !395
  %31 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %40, label %33, !prof !396

33:                                               ; preds = %26
  %34 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %30)
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %30, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !335
  br label %37

37:                                               ; preds = %19, %23, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %23 ], [ 0, %19 ]
  %39 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  store i32 %38, ptr %39, align 8, !tbaa !335
  br label %40

40:                                               ; preds = %37, %26
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !335
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48, !prof !391

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !348
  %47 = load i16, ptr %46, align 2, !tbaa !349
  br label %48

48:                                               ; preds = %40, %44
  %49 = phi i16 [ %47, %44 ], [ 0, %40 ]
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  store i16 %49, ptr %50, align 8, !tbaa !271
  ret i1 %43
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl4ExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  %5 = load ptr, ptr %4, align 8, !tbaa !267
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %1)
          to label %10 unwind label %12

10:                                               ; preds = %2
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %11 unwind label %12

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %10, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load ptr, ptr %4, align 8, !tbaa !267
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %21 unwind label %18

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #21
  unreachable

21:                                               ; preds = %12
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 !prof !338 {
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !397
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !306
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %17, label %8, !prof !398

8:                                                ; preds = %1, %14
  %9 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !399
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13, !prof !401

13:                                               ; preds = %8
  store i64 0, ptr %10, align 8, !tbaa !399
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %9, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %8, !prof !402, !llvm.loop !403

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  store i64 0, ptr %18, align 8, !tbaa !404
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 align 2 !prof !405 {
  %9 = zext i1 %6 to i8
  %10 = zext i1 %7 to i8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 9
  store i8 1, ptr %11, align 1, !tbaa !328
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 14
  store i8 %9, ptr %12, align 8, !tbaa !297
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 15
  store i8 %10, ptr %13, align 1, !tbaa !298
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %14, align 8, !tbaa !330
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  store ptr %2, ptr %15, align 8, !tbaa !331
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !332
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 7
  store ptr %4, ptr %17, align 8, !tbaa !333
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 11
  store ptr %5, ptr %18, align 8, !tbaa !334
  tail call void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %19 = load ptr, ptr %16, align 8, !tbaa !332
  %20 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %19, i32 noundef 48)
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !271
  %24 = icmp eq i16 %23, 124
  br i1 %24, label %25, label %29, !prof !406

25:                                               ; preds = %8, %25
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %27 = load i16, ptr %22, align 8, !tbaa !271
  %28 = icmp eq i16 %27, 124
  br i1 %28, label %25, label %29, !prof !312, !llvm.loop !407

29:                                               ; preds = %25, %8
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !335
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !408

33:                                               ; preds = %29
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 22)
  unreachable

34:                                               ; preds = %29
  %35 = load ptr, ptr %16, align 8, !tbaa !332
  %36 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %35, i32 noundef -1)
  %37 = load ptr, ptr %16, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression6shrinkEv(ptr noundef nonnull align 8 dereferenceable(120) %37)
  store ptr null, ptr %18, align 8, !tbaa !334
  %38 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %39 = load i64, ptr %38, align 8, !tbaa !337
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %42, label %41, !prof !408

41:                                               ; preds = %34
  store i64 0, ptr %38, align 8, !tbaa !337
  br label %42

42:                                               ; preds = %41, %34
  %43 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %43)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl7PatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i16 %3, 124
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = load i16, ptr %2, align 8, !tbaa !271
  %8 = icmp eq i16 %7, 124
  br i1 %8, label %5, label %9, !llvm.loop !407

9:                                                ; preds = %5, %1
  ret void
}

declare void @_ZN11xalanc_1_1015XPathExpression6shrinkEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !409 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !331
  %8 = load ptr, ptr %7, align 8, !tbaa !267
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7), !prof !410
  %12 = sub nsw i32 %3, %2
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %12)
          to label %14 unwind label %18, !prof !411

14:                                               ; preds = %5
  %15 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %16 unwind label %18, !prof !411

16:                                               ; preds = %14
  br i1 %15, label %21, label %17, !prof !411

17:                                               ; preds = %16
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %20 unwind label %18

18:                                               ; preds = %17, %14, %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %86

20:                                               ; preds = %17
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !333
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %28 unwind label %30, !prof !412

28:                                               ; preds = %21
  %29 = icmp eq ptr %27, null
  br i1 %29, label %66, label %32, !prof !413

30:                                               ; preds = %66, %76, %69, %56, %48, %47, %39, %63, %60, %36, %21
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %86

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !335
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %66, label %36, !prof !413

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEixERS2_(ptr noundef nonnull align 8 dereferenceable(136) %37, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %39 unwind label %30, !prof !411

39:                                               ; preds = %36
  store ptr %27, ptr %38, align 8, !tbaa !414
  %40 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !332
  %42 = load ptr, ptr %6, align 8, !tbaa !331
  %43 = load ptr, ptr %42, align 8, !tbaa !267
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr %45(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %47 unwind label %30, !prof !415

47:                                               ; preds = %39
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %41, ptr noundef nonnull align 8 dereferenceable(36) %46)
          to label %48 unwind label %30, !prof !411

48:                                               ; preds = %47
  %49 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE, align 8, !tbaa !414
  %50 = load ptr, ptr %40, align 8, !tbaa !332
  %51 = load ptr, ptr %6, align 8, !tbaa !331
  %52 = load ptr, ptr %51, align 8, !tbaa !267
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef nonnull align 8 dereferenceable(36) ptr %54(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %56 unwind label %30, !prof !415

56:                                               ; preds = %48
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %50, ptr noundef nonnull align 8 dereferenceable(36) %55)
          to label %57 unwind label %30, !prof !411

57:                                               ; preds = %56
  %58 = add nsw i32 %3, 1
  %59 = icmp slt i32 %58, %4
  br i1 %59, label %60, label %77, !prof !411

60:                                               ; preds = %57
  %61 = sub nsw i32 %4, %58
  %62 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %58, i32 noundef %61)
          to label %63 unwind label %30, !prof !411

63:                                               ; preds = %60
  %64 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %65 unwind label %30, !prof !411

65:                                               ; preds = %63
  br i1 %64, label %69, label %66, !prof !411

66:                                               ; preds = %28, %65, %32
  %67 = phi i32 [ 26, %32 ], [ 25, %65 ], [ 27, %28 ]
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %67, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %68 unwind label %30

68:                                               ; preds = %66
  unreachable

69:                                               ; preds = %65
  %70 = load ptr, ptr %40, align 8, !tbaa !332
  %71 = load ptr, ptr %6, align 8, !tbaa !331
  %72 = load ptr, ptr %71, align 8, !tbaa !267
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef nonnull align 8 dereferenceable(36) ptr %74(ptr noundef nonnull align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %76 unwind label %30, !prof !415

76:                                               ; preds = %69
  invoke void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %70, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %77 unwind label %30, !prof !411

77:                                               ; preds = %76, %57
  %78 = load ptr, ptr %7, align 8, !tbaa !267
  %79 = getelementptr inbounds ptr, ptr %78, i64 6
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef zeroext i1 %80(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %85 unwind label %82, !prof !416

82:                                               ; preds = %77
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  tail call void @__clang_call_terminate(ptr %84) #21
  unreachable

85:                                               ; preds = %77
  ret i32 -1

86:                                               ; preds = %18, %30
  %87 = phi { ptr, i32 } [ %31, %30 ], [ %19, %18 ]
  %88 = load ptr, ptr %7, align 8, !tbaa !267
  %89 = getelementptr inbounds ptr, ptr %88, i64 6
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  tail call void @__clang_call_terminate(ptr %94) #21
  unreachable

95:                                               ; preds = %86
  resume { ptr, i32 } %87
}

declare void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl15addToTokenQueueERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  %7 = load ptr, ptr %6, align 8, !tbaa !267
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(36) %10)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !417 {
  %3 = alloca %"class.xalanc_1_10::XToken", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !418
  call void @_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %6 unwind label %7, !prof !419

6:                                                ; preds = %2
  call void @_ZN11xalanc_1_106XTokenD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_106XTokenD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !409 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20, !noalias !420
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !420
  %5 = load ptr, ptr %2, align 8, !tbaa !423, !noalias !420
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20, !noalias !420
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = getelementptr inbounds %"struct.std::pair.5", ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !332
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !331
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(36) %8), !prof !415
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %10, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !388
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %22, label %20, !prof !413

20:                                               ; preds = %1
  %21 = add nsw i32 %18, -1
  br label %26

22:                                               ; preds = %1
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %10, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !386
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %20, %22
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %10, i64 0, i32 2, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !392
  %31 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %30, i64 %28
  %32 = load ptr, ptr %10, align 8, !tbaa !418
  call void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %31, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(8) %32)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !331
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %11 unwind label %13

11:                                               ; preds = %3
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %12 unwind label %13

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %11, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %5, align 8, !tbaa !267
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %22 unwind label %19

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #21
  unreachable

22:                                               ; preds = %13
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEixERS2_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 !prof !409 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !308, !noalias !427
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !413

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !294, !noalias !427
  %11 = load ptr, ptr %10, align 8, !tbaa !267, !noalias !427
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !427
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !427
  store ptr %14, ptr %5, align 8, !tbaa !308, !noalias !427
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !313, !noalias !427
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !316, !noalias !427
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !308, !noalias !427
  %19 = load ptr, ptr %3, align 8, !tbaa !423
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23, !prof !432

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !423
  store ptr %22, ptr %3, align 8, !tbaa !423
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !423
  %25 = load ptr, ptr %24, align 8, !tbaa !322
  %26 = getelementptr inbounds %"struct.std::pair.5", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl7tokenIsERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl7tokenIsEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !394
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7
  %9 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %8)
  %10 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %8, i32 noundef %9, ptr noundef %1, i32 noundef %10)
  ret i1 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl7tokenIsEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i16 noundef zeroext %1) local_unnamed_addr #8 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !271
  %5 = icmp eq i16 %4, %1
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !304 {
  %4 = add nsw i32 %2, -1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %4)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = load i16, ptr %11, align 2, !tbaa !349
  %13 = icmp eq i16 %12, %1
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %3
  br label %15

15:                                               ; preds = %9, %14
  %16 = phi i1 [ false, %14 ], [ true, %9 ]
  ret i1 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !433 {
  %3 = icmp slt i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !332
  br i1 %3, label %6, label %28, !prof !434

6:                                                ; preds = %2
  %7 = sub nsw i32 0, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !388
  %10 = icmp slt i32 %9, %7
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %9, %1
  br label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 2, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !386
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %11, %13
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 2, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !386
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %18, %21
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %25, i64 %23
  %27 = select i1 %22, ptr null, ptr %26
  br label %42

28:                                               ; preds = %2
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !388
  %31 = add nsw i32 %30, %1
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 2, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !386
  %34 = trunc i64 %33 to i32
  %35 = tail call i32 @llvm.smin.i32(i32 %31, i32 %34)
  %36 = icmp slt i32 %31, %34
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %5, i64 0, i32 2, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %39, i64 %37
  %41 = select i1 %36, ptr %40, ptr null, !prof !435
  br label %42

42:                                               ; preds = %28, %17
  %43 = phi ptr [ %27, %17 ], [ %41, %28 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !436

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef nonnull align 8 dereferenceable(36) ptr %48(ptr noundef nonnull align 8 dereferenceable(24) %43), !prof !437
  br label %50

50:                                               ; preds = %42, %45
  %51 = phi ptr [ %49, %45 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %42 ]
  ret ptr %51
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !433 {
  %4 = add nsw i32 %2, -1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %4)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !394
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10, !prof !436
  %12 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %11)
  %13 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %11, i32 noundef %12, ptr noundef %1, i32 noundef %13)
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadERKNS_14XalanDOMStringEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !304 {
  %4 = add nsw i32 %2, -1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %4)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl10lookbehindEci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !304 {
  %4 = xor i32 %2, -1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %4)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = load i16, ptr %11, align 2, !tbaa !349
  %13 = zext i16 %12 to i32
  %14 = sext i8 %1 to i32
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %3
  br label %17

17:                                               ; preds = %9, %16
  %18 = phi i1 [ false, %16 ], [ true, %9 ]
  ret i1 %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl18lookbehindHasTokenEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = xor i32 %1, -1
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %3)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !335
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !348
  %11 = load i16, ptr %10, align 2, !tbaa !349
  %12 = icmp ne i16 %11, 124
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i1 [ %12, %8 ], [ false, %2 ]
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl9prevTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !388
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !388
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !392
  %12 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %11, i64 %9
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %12, %7 ], [ null, %1 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %21

21:                                               ; preds = %13, %16
  %22 = phi ptr [ %20, %16 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %13 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %22)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !335
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !335
  br label %30

30:                                               ; preds = %21, %25
  %31 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !335
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !348
  %37 = load i16, ptr %36, align 2, !tbaa !349
  br label %38

38:                                               ; preds = %30, %34
  %39 = phi i16 [ %37, %34 ], [ 0, %30 ]
  %40 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  store i16 %39, ptr %40, align 8, !tbaa !271
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl15consumeExpectedEt(ptr noundef nonnull align 8 dereferenceable(274) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !271
  %5 = icmp eq i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !331
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %14 unwind label %21

14:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
          to label %15 unwind label %21

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  %16 = load ptr, ptr %5, align 8, !tbaa !438
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %23

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %19 unwind label %25

19:                                               ; preds = %17
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %20 unwind label %25

20:                                               ; preds = %19
  unreachable

21:                                               ; preds = %14, %4
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %55

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %40

25:                                               ; preds = %19, %17
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !439
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !348
  %33 = load ptr, ptr %6, align 8, !tbaa !438
  %34 = load ptr, ptr %33, align 8, !tbaa !267
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #21
  unreachable

40:                                               ; preds = %30, %25, %23
  %41 = phi { ptr, i32 } [ %24, %23 ], [ %26, %25 ], [ %26, %30 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !439
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !348
  %48 = load ptr, ptr %5, align 8, !tbaa !438
  %49 = load ptr, ptr %48, align 8, !tbaa !267
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %47)
          to label %55 unwind label %52

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #21
  unreachable

55:                                               ; preds = %45, %40, %21
  %56 = phi { ptr, i32 } [ %22, %21 ], [ %41, %40 ], [ %41, %45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  %57 = load ptr, ptr %8, align 8, !tbaa !267
  %58 = getelementptr inbounds ptr, ptr %57, i64 6
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(36) %12)
          to label %64 unwind label %61

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #21
  unreachable

64:                                               ; preds = %55
  resume { ptr, i32 } %56
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = alloca %"class.xalanc_1_10::DOMStringPrintWriter", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !331
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !332
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = icmp eq ptr %9, %1
  br i1 %14, label %81, label %15

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %17 unwind label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !335
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  store i32 %19, ptr %20, align 8, !tbaa !335
  br label %81

21:                                               ; preds = %15, %143
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %147

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %11, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !340
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %26 unwind label %53

26:                                               ; preds = %23
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriter5printERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %27 unwind label %55

27:                                               ; preds = %26
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %28 unwind label %55

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !335
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !331
  %34 = load ptr, ptr %33, align 8, !tbaa !267
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %38 unwind label %57

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !328, !range !440, !noundef !317
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 46, i32 45
  %43 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %37, i32 noundef %42, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %44 unwind label %59

44:                                               ; preds = %38
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriter5printERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %43)
          to label %45 unwind label %59

45:                                               ; preds = %44
  %46 = load ptr, ptr %33, align 8, !tbaa !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef zeroext i1 %48(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(36) %37)
          to label %68 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #21
  unreachable

53:                                               ; preds = %23
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %79

55:                                               ; preds = %75, %27, %26
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %77

57:                                               ; preds = %32
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %77

59:                                               ; preds = %44, %38
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %33, align 8, !tbaa !267
  %62 = getelementptr inbounds ptr, ptr %61, i64 6
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(36) %37)
          to label %77 unwind label %65

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #21
  unreachable

68:                                               ; preds = %45, %28
  %69 = load ptr, ptr %10, align 8, !tbaa !332
  %70 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %69, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !388
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = add nsw i32 %71, -1
  store i32 %74, ptr %70, align 8, !tbaa !388
  br label %75

75:                                               ; preds = %73, %68
  invoke void @_ZNK11xalanc_1_1015XPathExpression23dumpRemainingTokenQueueERNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(120) %69, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %76 unwind label %55

76:                                               ; preds = %75
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %81

77:                                               ; preds = %57, %59, %55
  %78 = phi { ptr, i32 } [ %56, %55 ], [ %58, %57 ], [ %60, %59 ]
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  br label %79

79:                                               ; preds = %77, %53
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %147

81:                                               ; preds = %17, %13, %76
  %82 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !334
  %84 = icmp eq ptr %83, null
  br i1 %84, label %138, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %83, align 8, !tbaa !267
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %83)
          to label %90 unwind label %100

90:                                               ; preds = %85
  %91 = load ptr, ptr %4, align 8, !tbaa !331
  %92 = load ptr, ptr %91, align 8, !tbaa !267
  %93 = getelementptr inbounds ptr, ptr %92, i64 5
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef nonnull align 8 dereferenceable(36) ptr %94(ptr noundef nonnull align 8 dereferenceable(16) %91)
          to label %96 unwind label %102

96:                                               ; preds = %90
  %97 = icmp eq ptr %89, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %96
  %99 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %95, ptr noundef nonnull %89)
          to label %106 unwind label %104

100:                                              ; preds = %85
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %147

102:                                              ; preds = %90
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %147

104:                                              ; preds = %125, %98
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %129

106:                                              ; preds = %98, %96
  %107 = call ptr @__cxa_allocate_exception(i64 112) #20
  %108 = load ptr, ptr %82, align 8, !tbaa !334
  %109 = load ptr, ptr %108, align 8, !tbaa !267
  %110 = getelementptr inbounds ptr, ptr %109, i64 4
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef i64 %111(ptr noundef nonnull align 8 dereferenceable(8) %108)
          to label %113 unwind label %127

113:                                              ; preds = %106
  %114 = load ptr, ptr %82, align 8, !tbaa !334
  %115 = load ptr, ptr %114, align 8, !tbaa !267
  %116 = getelementptr inbounds ptr, ptr %115, i64 5
  %117 = load ptr, ptr %116, align 8
  %118 = invoke noundef i64 %117(ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %119 unwind label %127

119:                                              ; preds = %113
  %120 = trunc i64 %112 to i32
  %121 = trunc i64 %118 to i32
  %122 = load ptr, ptr %4, align 8, !tbaa !331
  %123 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !441
  invoke void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %107, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %95, i32 noundef %120, i32 noundef %121, ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %125 unwind label %127

125:                                              ; preds = %119
  invoke void @__cxa_throw(ptr nonnull %107, ptr nonnull @_ZTIN11xalanc_1_1020XPathParserExceptionE, ptr nonnull @_ZN11xalanc_1_1020XPathParserExceptionD1Ev) #23
          to label %126 unwind label %104

126:                                              ; preds = %125
  unreachable

127:                                              ; preds = %119, %113, %106
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %107) #20
  br label %129

129:                                              ; preds = %104, %127
  %130 = phi { ptr, i32 } [ %105, %104 ], [ %128, %127 ]
  %131 = load ptr, ptr %91, align 8, !tbaa !267
  %132 = getelementptr inbounds ptr, ptr %131, i64 6
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef zeroext i1 %133(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(36) %95)
          to label %147 unwind label %135

135:                                              ; preds = %129
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  call void @__clang_call_terminate(ptr %137) #21
  unreachable

138:                                              ; preds = %81
  %139 = call ptr @__cxa_allocate_exception(i64 112) #20
  %140 = load ptr, ptr %4, align 8, !tbaa !331
  %141 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !441
  invoke void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %139, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %142)
          to label %143 unwind label %145

143:                                              ; preds = %138
  invoke void @__cxa_throw(ptr nonnull %139, ptr nonnull @_ZTIN11xalanc_1_1020XPathParserExceptionE, ptr nonnull @_ZN11xalanc_1_1020XPathParserExceptionD1Ev) #23
          to label %144 unwind label %21

144:                                              ; preds = %143
  unreachable

145:                                              ; preds = %138
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %139) #20
  br label %147

147:                                              ; preds = %21, %79, %145, %100, %129, %102
  %148 = phi { ptr, i32 } [ %22, %21 ], [ %146, %145 ], [ %80, %79 ], [ %101, %100 ], [ %103, %102 ], [ %130, %129 ]
  %149 = load ptr, ptr %5, align 8, !tbaa !267
  %150 = getelementptr inbounds ptr, ptr %149, i64 6
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef zeroext i1 %151(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %156 unwind label %153

153:                                              ; preds = %147
  %154 = landingpad { ptr, i32 }
          catch ptr null
  %155 = extractvalue { ptr, i32 } %154, 0
  call void @__clang_call_terminate(ptr %155) #21
  unreachable

156:                                              ; preds = %147
  resume { ptr, i32 } %148
}

declare void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN11xalanc_1_1020DOMStringPrintWriter5printERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN11xalanc_1_1020DOMStringPrintWriter7printlnEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_1015XPathExpression23dumpRemainingTokenQueueERNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !304 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3)
  ret ptr %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020XPathParserExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !331
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %11 unwind label %13

11:                                               ; preds = %3
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %12 unwind label %13

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %11, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %5, align 8, !tbaa !267
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %22 unwind label %19

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #21
  unreachable

22:                                               ; preds = %13
  resume { ptr, i32 } %14
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !443 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !445

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !394
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19, !prof !448
  %21 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %20)
  %22 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl10s_orStringE)
  %23 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %20, i32 noundef %21, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl10s_orStringE, i32 noundef %22)
  br i1 %23, label %24, label %27, !prof !449

24:                                               ; preds = %13
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 185)
  unreachable

27:                                               ; preds = %13, %28
  ret void

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !332
  %30 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %29, i32 noundef 2, i32 noundef %14)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %31 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %31, i32 noundef 2, i32 noundef %14)
  br label %27
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !443 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !445

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %15 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef -1)
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !394
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20, !prof !448
  %22 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %21)
  %23 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_andStringE)
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %21, i32 noundef %22, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_andStringE, i32 noundef %23)
  br i1 %24, label %25, label %28, !prof !449

25:                                               ; preds = %13
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 185)
  unreachable

28:                                               ; preds = %13, %29
  ret void

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 8, !tbaa !332
  %31 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %30, i32 noundef 3, i32 noundef %14)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %32 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %32, i32 noundef 3, i32 noundef %14)
  br label %28
}

declare noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !450 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %16, !prof !451

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !332
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !444
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16, !prof !445

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !446
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !447
  br label %16

16:                                               ; preds = %11, %4, %2
  %17 = phi i32 [ %1, %2 ], [ %15, %11 ], [ %9, %4 ]
  %18 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl14RelationalExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef -1)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !271
  %21 = icmp eq i16 %20, 33
  br i1 %21, label %22, label %54, !prof !452

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !332
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !388
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %24, i64 0, i32 2, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !386
  %29 = trunc i64 %28 to i32
  %30 = icmp sge i32 %26, %29
  %31 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %24, i64 0, i32 2, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %22
  %36 = sext i32 %26 to i64
  %37 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %32, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !267
  %39 = getelementptr inbounds ptr, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr %40(ptr noundef nonnull align 8 dereferenceable(24) %37)
  br label %42

42:                                               ; preds = %22, %35
  %43 = phi ptr [ %41, %35 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %22 ]
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !335
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %43, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !348
  %50 = load i16, ptr %49, align 2, !tbaa !349
  %51 = icmp eq i16 %50, 61
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %57

54:                                               ; preds = %42, %47, %16
  %55 = load i16, ptr %19, align 8, !tbaa !271
  %56 = icmp eq i16 %55, 61
  br i1 %56, label %57, label %60, !prof !453

57:                                               ; preds = %54, %52
  %58 = phi i32 [ 4, %52 ], [ 5, %54 ]
  %59 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ true, %54 ], [ false, %57 ]
  %62 = phi i32 [ -1, %54 ], [ %58, %57 ]
  %63 = phi i1 [ false, %54 ], [ %59, %57 ]
  br i1 %61, label %79, label %64, !prof !451

64:                                               ; preds = %60
  br i1 %63, label %66, label %65, !prof !454

65:                                               ; preds = %64
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 185)
  unreachable

66:                                               ; preds = %64
  %67 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !332
  %69 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %68, i32 noundef %62, i32 noundef %17)
  %70 = load ptr, ptr %67, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %70, i32 noundef %62, i32 noundef %17)
  %71 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %17)
  %72 = icmp sgt i32 %71, 0
  %73 = load ptr, ptr %67, align 8, !tbaa !332
  br i1 %72, label %74, label %76, !prof !455

74:                                               ; preds = %66
  %75 = add nsw i32 %71, %17
  tail call void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr noundef nonnull align 8 dereferenceable(120) %73, i32 noundef %62, i32 noundef %17, i32 noundef %75)
  br label %77

76:                                               ; preds = %66
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %73, i32 noundef %62, i32 noundef %17)
  br label %77

77:                                               ; preds = %76, %74
  %78 = add nsw i32 %71, %69
  br label %79

79:                                               ; preds = %77, %60
  %80 = phi i32 [ %78, %77 ], [ 0, %60 ]
  ret i32 %80
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl14RelationalExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !450 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %16, !prof !456

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !332
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !444
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16, !prof !456

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !446
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !447
  br label %16

16:                                               ; preds = %11, %4, %2
  %17 = phi i32 [ %1, %2 ], [ %15, %11 ], [ %9, %4 ]
  %18 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef -1)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !335
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %55, label %22, !prof !457

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !271
  switch i16 %24, label %36 [
    i16 60, label %25
    i16 62, label %29
  ], !prof !458

25:                                               ; preds = %22
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %27 = load i16, ptr %23, align 8, !tbaa !271
  %28 = icmp eq i16 %27, 61
  br i1 %28, label %33, label %36

29:                                               ; preds = %22
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %31 = load i16, ptr %23, align 8, !tbaa !271
  %32 = icmp eq i16 %31, 61
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = phi i32 [ 6, %25 ], [ 8, %29 ]
  %35 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %36

36:                                               ; preds = %33, %22, %29, %25
  %37 = phi i1 [ %26, %25 ], [ %30, %29 ], [ false, %22 ], [ %35, %33 ]
  %38 = phi i1 [ false, %25 ], [ false, %29 ], [ true, %22 ], [ false, %33 ]
  %39 = phi i32 [ 7, %25 ], [ 9, %29 ], [ -1, %22 ], [ %34, %33 ]
  br i1 %38, label %55, label %40, !prof !459

40:                                               ; preds = %36
  br i1 %37, label %42, label %41

41:                                               ; preds = %40
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 185)
  unreachable

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !332
  %45 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %44, i32 noundef %39, i32 noundef %17)
  %46 = load ptr, ptr %43, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %46, i32 noundef %39, i32 noundef %17)
  %47 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl14RelationalExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %17)
  %48 = icmp sgt i32 %47, 0
  %49 = load ptr, ptr %43, align 8, !tbaa !332
  br i1 %48, label %50, label %52

50:                                               ; preds = %42
  %51 = add nsw i32 %47, %17
  tail call void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr noundef nonnull align 8 dereferenceable(120) %49, i32 noundef %39, i32 noundef %17, i32 noundef %51)
  br label %53

52:                                               ; preds = %42
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %49, i32 noundef %39, i32 noundef %17)
  br label %53

53:                                               ; preds = %52, %50
  %54 = add nsw i32 %47, %45
  br label %55

55:                                               ; preds = %36, %53, %16
  %56 = phi i32 [ 0, %16 ], [ %54, %53 ], [ 0, %36 ]
  ret i32 %56
}

declare void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !460 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %16, !prof !461

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !332
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !444
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16, !prof !456

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !446
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !447
  br label %16

16:                                               ; preds = %11, %4, %2
  %17 = phi i32 [ %1, %2 ], [ %15, %11 ], [ %9, %4 ]
  %18 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef -1)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !335
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %22, !prof !462

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !271
  %25 = icmp eq i16 %24, 43
  %26 = icmp eq i16 %24, 45
  %27 = select i1 %26, i32 11, i32 -1, !prof !463
  %28 = select i1 %25, i32 10, i32 %27, !prof !463
  switch i16 %24, label %45 [
    i16 45, label %29
    i16 43, label %29
  ]

29:                                               ; preds = %22, %22
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br i1 %30, label %32, label %31, !prof !464

31:                                               ; preds = %29
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 185)
  unreachable

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !332
  %35 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %34, i32 noundef %28, i32 noundef %17)
  %36 = load ptr, ptr %33, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %36, i32 noundef %28, i32 noundef %17)
  %37 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %17)
  %38 = icmp sgt i32 %37, 0
  %39 = load ptr, ptr %33, align 8, !tbaa !332
  br i1 %38, label %40, label %42, !prof !465

40:                                               ; preds = %32
  %41 = add nsw i32 %37, %17
  tail call void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr noundef nonnull align 8 dereferenceable(120) %39, i32 noundef %28, i32 noundef %17, i32 noundef %41)
  br label %43

42:                                               ; preds = %32
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %39, i32 noundef %28, i32 noundef %17)
  br label %43

43:                                               ; preds = %42, %40
  %44 = add nsw i32 %37, %35
  br label %45

45:                                               ; preds = %22, %43, %16
  %46 = phi i32 [ 0, %16 ], [ %44, %43 ], [ 0, %22 ]
  ret i32 %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !466 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %16, !prof !467

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !332
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !444
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16, !prof !468

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !446
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !447
  br label %16

16:                                               ; preds = %11, %4, %2
  %17 = phi i32 [ %1, %2 ], [ %15, %11 ], [ %9, %4 ]
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl9UnaryExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !335
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21, !prof !469

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !271
  %24 = icmp eq i16 %23, 42
  br i1 %24, label %45, label %25, !prof !470

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !394
  %28 = icmp eq i64 %27, 0
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = select i1 %28, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %30, !prof !471
  %32 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %31)
  %33 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_divStringE)
  %34 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %31, i32 noundef %32, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_divStringE, i32 noundef %33)
  br i1 %34, label %45, label %35, !prof !472

35:                                               ; preds = %25
  %36 = load i64, ptr %26, align 8, !tbaa !394
  %37 = icmp eq i64 %36, 0
  %38 = load ptr, ptr %29, align 8
  %39 = select i1 %37, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %38, !prof !473
  %40 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %39)
  %41 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_modStringE)
  %42 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %39, i32 noundef %40, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_modStringE, i32 noundef %41)
  %43 = xor i1 %42, true
  %44 = select i1 %42, i32 14, i32 -1, !prof !474
  br label %45

45:                                               ; preds = %35, %25, %21
  %46 = phi i1 [ false, %21 ], [ false, %25 ], [ %43, %35 ]
  %47 = phi i32 [ 12, %21 ], [ 13, %25 ], [ %44, %35 ]
  br i1 %46, label %64, label %48, !prof !475

48:                                               ; preds = %45
  %49 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br i1 %49, label %51, label %50, !prof !476

50:                                               ; preds = %48
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 185)
  unreachable

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !332
  %54 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %53, i32 noundef %47, i32 noundef %17)
  %55 = load ptr, ptr %52, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %55, i32 noundef %47, i32 noundef %17)
  %56 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %17)
  %57 = icmp sgt i32 %56, 0
  %58 = load ptr, ptr %52, align 8, !tbaa !332
  br i1 %57, label %59, label %61, !prof !477

59:                                               ; preds = %51
  %60 = add nsw i32 %56, %17
  tail call void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr noundef nonnull align 8 dereferenceable(120) %58, i32 noundef %47, i32 noundef %17, i32 noundef %60)
  br label %62

61:                                               ; preds = %51
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %58, i32 noundef %47, i32 noundef %17)
  br label %62

62:                                               ; preds = %61, %59
  %63 = add nsw i32 %56, %54
  br label %64

64:                                               ; preds = %45, %62, %16
  %65 = phi i32 [ 0, %16 ], [ %63, %62 ], [ 0, %45 ]
  ret i32 %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl9UnaryExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !466 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !478

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !271
  %17 = icmp eq i16 %16, 45
  br i1 %17, label %18, label %23, !prof !479

18:                                               ; preds = %13
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %20 = load ptr, ptr %2, align 8, !tbaa !332
  %21 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %20, i32 noundef 15, i32 noundef %14)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl9UnionExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %22 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %22, i32 noundef 15, i32 noundef %14)
  br label %24

23:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl9UnionExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %24

24:                                               ; preds = %23, %18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl9UnionExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !466 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !478

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl8PathExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !271
  %17 = icmp eq i16 %16, 124
  br i1 %17, label %18, label %36, !prof !312

18:                                               ; preds = %13, %25
  %19 = phi i8 [ %26, %25 ], [ 0, %13 ]
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !332
  %24 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %23, i32 noundef 17, i32 noundef %14)
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i8 [ 1, %22 ], [ %19, %18 ]
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl8PathExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %28 = load i16, ptr %15, align 8, !tbaa !271
  %29 = icmp eq i16 %28, 124
  br i1 %29, label %18, label %30, !prof !312

30:                                               ; preds = %25
  %31 = and i8 %26, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33, !prof !478

33:                                               ; preds = %30
  %34 = load ptr, ptr %2, align 8, !tbaa !332
  %35 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %34, i32 noundef -1)
  br label %36

36:                                               ; preds = %13, %30, %33
  %37 = load ptr, ptr %2, align 8, !tbaa !332
  %38 = sext i32 %14 to i64
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !446
  %41 = getelementptr inbounds i32, ptr %40, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !447
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %37, i32 noundef %42, i32 noundef %14)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl8PathExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !466 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !478

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl10FilterExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !271
  %17 = icmp eq i16 %16, 47
  br i1 %17, label %18, label %25, !prof !479

18:                                               ; preds = %13
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %20 = load ptr, ptr %2, align 8, !tbaa !332
  %21 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %20, i32 noundef 25, i32 noundef %14)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %22 = load ptr, ptr %2, align 8, !tbaa !332
  %23 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %22, i32 noundef -1)
  %24 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %24, i32 noundef 25, i32 noundef %14)
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl10FilterExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !466 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !478

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !271
  %17 = icmp eq i16 %16, 91
  br i1 %17, label %18, label %30, !prof !479

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8, !tbaa !332
  %20 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %19, i32 noundef 25, i32 noundef %14)
  br label %21

21:                                               ; preds = %23, %18
  %22 = load i16, ptr %15, align 8, !tbaa !271
  switch i16 %22, label %26 [
    i16 91, label %23
    i16 47, label %24
  ]

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %21, !llvm.loop !480

24:                                               ; preds = %21
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %26

26:                                               ; preds = %21, %24
  %27 = load ptr, ptr %2, align 8, !tbaa !332
  %28 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %27, i32 noundef -1)
  %29 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %29, i32 noundef 25, i32 noundef %14)
  br label %30

30:                                               ; preds = %26, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !481 {
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i16 %3, 47
  br i1 %4, label %5, label %9, !prof !482

5:                                                ; preds = %1, %5
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = load i16, ptr %2, align 8, !tbaa !271
  %8 = icmp eq i16 %7, 47
  br i1 %8, label %5, label %9, !prof !483, !llvm.loop !484

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !466 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !478

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !271
  switch i16 %16, label %54 [
    i16 39, label %17
    i16 34, label %17
    i16 36, label %20
    i16 40, label %30
    i16 46, label %41
  ], !prof !485

17:                                               ; preds = %13, %13
  %18 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 18)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl7LiteralEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %19 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %19, i32 noundef 18, i32 noundef %14)
  br label %151

20:                                               ; preds = %13
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 14
  %23 = load i8, ptr %22, align 8, !tbaa !297, !range !440, !noundef !317
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !486

25:                                               ; preds = %20
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 42)
  unreachable

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8, !tbaa !332
  %28 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %27, i32 noundef 19)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl5QNameEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %29 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %29, i32 noundef 19, i32 noundef %14)
  br label %151

30:                                               ; preds = %13
  %31 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %32 = load ptr, ptr %2, align 8, !tbaa !332
  %33 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %32, i32 noundef 20)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %34 = load i16, ptr %15, align 8, !tbaa !271
  %35 = icmp eq i16 %34, 41
  br i1 %35, label %36, label %39, !prof !464

36:                                               ; preds = %30
  %37 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %38 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %38, i32 noundef 20, i32 noundef %14)
  br label %151

39:                                               ; preds = %30
  %40 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 41, ptr noundef nonnull align 8 dereferenceable(36) %40)
  unreachable

41:                                               ; preds = %13
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !335
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %54, !prof !357

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !348
  %48 = getelementptr inbounds i16, ptr %47, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !349
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !373
  %53 = icmp eq i8 %52, 4
  br i1 %53, label %59, label %54

54:                                               ; preds = %45, %13, %41
  %55 = zext i16 %16 to i64
  %56 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !373
  %58 = icmp eq i8 %57, 4
  br i1 %58, label %59, label %62, !prof !487

59:                                               ; preds = %54, %45
  %60 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 21)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %61 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %61, i32 noundef 21, i32 noundef %14)
  br label %151

62:                                               ; preds = %54
  %63 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !388
  %65 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !386
  %67 = trunc i64 %66 to i32
  %68 = icmp sge i32 %64, %67
  %69 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  %72 = select i1 %68, i1 true, i1 %71, !prof !488
  br i1 %72, label %80, label %73, !prof !488

73:                                               ; preds = %62
  %74 = sext i32 %64 to i64
  %75 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %70, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !267
  %77 = getelementptr inbounds ptr, ptr %76, i64 8
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef nonnull align 8 dereferenceable(36) ptr %78(ptr noundef nonnull align 8 dereferenceable(24) %75), !prof !489
  br label %80

80:                                               ; preds = %62, %73
  %81 = phi ptr [ %79, %73 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %62 ]
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !335
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %90, !prof !490

85:                                               ; preds = %80
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %81, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !348
  %88 = load i16, ptr %87, align 2, !tbaa !349
  %89 = icmp eq i16 %88, 40
  br i1 %89, label %149, label %90, !prof !491

90:                                               ; preds = %85, %80
  %91 = load ptr, ptr %2, align 8, !tbaa !332
  %92 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !388
  %94 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %91, i64 0, i32 2, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !386
  %96 = trunc i64 %95 to i32
  %97 = icmp sge i32 %93, %96
  %98 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %91, i64 0, i32 2, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  %101 = select i1 %97, i1 true, i1 %100, !prof !492
  br i1 %101, label %109, label %102, !prof !492

102:                                              ; preds = %90
  %103 = sext i32 %93 to i64
  %104 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !267
  %106 = getelementptr inbounds ptr, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef nonnull align 8 dereferenceable(36) ptr %107(ptr noundef nonnull align 8 dereferenceable(24) %104), !prof !493
  br label %109

109:                                              ; preds = %90, %102
  %110 = phi ptr [ %108, %102 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %90 ]
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !335
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %150, !prof !494

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %110, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !348
  %117 = load i16, ptr %116, align 2, !tbaa !349
  %118 = icmp eq i16 %117, 58
  br i1 %118, label %119, label %150, !prof !495

119:                                              ; preds = %114
  %120 = load ptr, ptr %2, align 8, !tbaa !332
  %121 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %120, i64 0, i32 3
  %122 = load i32, ptr %121, align 8, !tbaa !388
  %123 = add nsw i32 %122, 2
  %124 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %120, i64 0, i32 2, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !386
  %126 = trunc i64 %125 to i32
  %127 = icmp sge i32 %123, %126
  %128 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %120, i64 0, i32 2, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, null
  %131 = select i1 %127, i1 true, i1 %130, !prof !496
  br i1 %131, label %139, label %132, !prof !496

132:                                              ; preds = %119
  %133 = sext i32 %123 to i64
  %134 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %129, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !267
  %136 = getelementptr inbounds ptr, ptr %135, i64 8
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef nonnull align 8 dereferenceable(36) ptr %137(ptr noundef nonnull align 8 dereferenceable(24) %134), !prof !497
  br label %139

139:                                              ; preds = %119, %132
  %140 = phi ptr [ %138, %132 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %119 ]
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !335
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %150, !prof !498

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %140, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !348
  %147 = load i16, ptr %146, align 2, !tbaa !349
  %148 = icmp eq i16 %147, 40
  br i1 %148, label %149, label %150, !prof !355

149:                                              ; preds = %144, %85
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %151

150:                                              ; preds = %144, %139, %109, %114
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %151

151:                                              ; preds = %26, %59, %150, %149, %36, %17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !499 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i16 %3, 91
  br i1 %4, label %5, label %13, !prof !500

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = load i16, ptr %2, align 8, !tbaa !271
  %8 = icmp eq i16 %7, 93
  br i1 %8, label %9, label %11, !prof !500

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 93, ptr noundef nonnull align 8 dereferenceable(36) %12)
  unreachable

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl7LiteralEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !501 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !335
  %4 = add i32 %3, -1
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %37, label %6, !prof !357

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !271
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds i16, ptr %11, i64 %9
  %13 = load i16, ptr %12, align 2, !tbaa !349
  %14 = icmp eq i16 %8, 34
  %15 = icmp eq i16 %13, 34
  %16 = and i1 %14, %15
  br i1 %16, label %21, label %17, !prof !357

17:                                               ; preds = %6
  %18 = icmp eq i16 %8, 39
  %19 = icmp eq i16 %13, 39
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %37, !prof !352

21:                                               ; preds = %6, %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !332
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !331
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !394
  %28 = icmp eq i64 %27, 0
  %29 = select i1 %28, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11, !prof !357
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = add i32 %3, -2
  %32 = load ptr, ptr %25, align 8, !tbaa !267
  %33 = getelementptr inbounds ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef nonnull align 8 dereferenceable(36) ptr %34(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %30, i32 noundef %31), !prof !502
  tail call void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %23, ptr noundef nonnull align 8 dereferenceable(36) %35)
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void

37:                                               ; preds = %1, %17
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 29)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl5QNameEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !503 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !386
  %8 = trunc i64 %7 to i32
  %9 = icmp sge i32 %5, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %9, i1 true, i1 %12, !prof !504
  br i1 %13, label %21, label %14, !prof !504

14:                                               ; preds = %1
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %16), !prof !505
  br label %21

21:                                               ; preds = %1, %14
  %22 = phi ptr [ %20, %14 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %1 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !335
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31, !prof !506

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !348
  %29 = load i16, ptr %28, align 2, !tbaa !349
  %30 = icmp eq i16 %29, 58
  br i1 %30, label %34, label %31, !prof !507

31:                                               ; preds = %26, %21
  %32 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %32, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE)
  %33 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %33)
  br label %42

34:                                               ; preds = %26
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %35 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %35)
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !271
  %39 = icmp eq i16 %38, 58
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 58, ptr noundef nonnull align 8 dereferenceable(36) %41)
  unreachable

42:                                               ; preds = %34, %31
  %43 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %44 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %44)
  %45 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !508 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !335
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %49, label %5, !prof !509

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !331
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !441
  %11 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %12 = load ptr, ptr %7, align 8, !tbaa !331
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(16) %12), !prof !510
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %11, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %18 unwind label %39, !prof !378

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !332
  invoke void @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd(ptr noundef nonnull align 8 dereferenceable(120) %20, double noundef %11)
          to label %21 unwind label %39, !prof !378

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !332
  %23 = load ptr, ptr %7, align 8, !tbaa !331
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %28 unwind label %39, !prof !379

28:                                               ; preds = %21
  invoke void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %22, double noundef %11, ptr noundef nonnull align 8 dereferenceable(36) %27)
          to label %29 unwind label %39, !prof !378

29:                                               ; preds = %28
  %30 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %31 unwind label %39, !prof !378

31:                                               ; preds = %29
  %32 = load ptr, ptr %12, align 8, !tbaa !267
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %49 unwind label %36, !prof !511

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #21
  unreachable

39:                                               ; preds = %29, %28, %21, %18, %5
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = load ptr, ptr %12, align 8, !tbaa !267
  %42 = getelementptr inbounds ptr, ptr %41, i64 6
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #21
  unreachable

48:                                               ; preds = %39
  resume { ptr, i32 } %40

49:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !512 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !332
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !444
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %17, !prof !513

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !446
  %15 = getelementptr inbounds i32, ptr %14, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !447
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi i32 [ %16, %12 ], [ %10, %1 ]
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !388
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %7, i64 0, i32 2, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !386
  %23 = trunc i64 %22 to i32
  %24 = icmp sge i32 %20, %23
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %7, i64 0, i32 2, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %24, i1 true, i1 %27, !prof !514
  br i1 %28, label %36, label %29, !prof !514

29:                                               ; preds = %17
  %30 = sext i32 %20 to i64
  %31 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !267
  %33 = getelementptr inbounds ptr, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef nonnull align 8 dereferenceable(36) ptr %34(ptr noundef nonnull align 8 dereferenceable(24) %31), !prof !515
  br label %36

36:                                               ; preds = %17, %29
  %37 = phi ptr [ %35, %29 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %17 ]
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !335
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46, !prof !513

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %37, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !348
  %44 = load i16, ptr %43, align 2, !tbaa !349
  %45 = icmp eq i16 %44, 58
  br i1 %45, label %49, label %46, !prof !514

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %48 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl15isValidFunctionERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %47)
  br i1 %48, label %115, label %114, !prof !513

49:                                               ; preds = %41
  %50 = load ptr, ptr %6, align 8, !tbaa !332
  %51 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %50, i32 noundef 23)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !tbaa !447
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !331
  %54 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %56 unwind label %98

56:                                               ; preds = %49
  %57 = load ptr, ptr %6, align 8, !tbaa !332
  %58 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %57, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !388
  %60 = add nsw i32 %59, -1
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !446
  store i32 %60, ptr %62, align 4, !tbaa !447
  %63 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %64 unwind label %98

64:                                               ; preds = %56
  %65 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %66 = load i16, ptr %65, align 8, !tbaa !271
  %67 = icmp eq i16 %66, 58
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %73 unwind label %98

70:                                               ; preds = %64
  %71 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 58, ptr noundef nonnull align 8 dereferenceable(36) %71)
          to label %72 unwind label %98

72:                                               ; preds = %70
  unreachable

73:                                               ; preds = %68
  %74 = load ptr, ptr %6, align 8, !tbaa !332
  %75 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %74, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !388
  %77 = add nsw i32 %76, -1
  %78 = load ptr, ptr %61, align 8, !tbaa !446
  %79 = getelementptr inbounds i32, ptr %78, i64 1
  store i32 %77, ptr %79, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %74, i32 noundef 23, i32 noundef %18, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %80 unwind label %98

80:                                               ; preds = %73
  %81 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %82 unwind label %98

82:                                               ; preds = %80
  %83 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %84 unwind label %98

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !516
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %61, align 8, !tbaa !446
  %90 = load ptr, ptr %2, align 8, !tbaa !418
  %91 = load ptr, ptr %90, align 8, !tbaa !267
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %89)
          to label %97 unwind label %94

94:                                               ; preds = %88
  %95 = landingpad { ptr, i32 }
          catch ptr null
  %96 = extractvalue { ptr, i32 } %95, 0
  call void @__clang_call_terminate(ptr %96) #21
  unreachable

97:                                               ; preds = %84, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %238

98:                                               ; preds = %70, %68, %82, %80, %73, %56, %49
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !516
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !446
  %106 = load ptr, ptr %2, align 8, !tbaa !418
  %107 = load ptr, ptr %106, align 8, !tbaa !267
  %108 = getelementptr inbounds ptr, ptr %107, i64 3
  %109 = load ptr, ptr %108, align 8
  invoke void %109(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef %105)
          to label %113 unwind label %110

110:                                              ; preds = %103
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #21
  unreachable

113:                                              ; preds = %98, %103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %248

114:                                              ; preds = %46
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(36) %47)
  unreachable

115:                                              ; preds = %46
  %116 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl15s_functionTableE, i64 noundef 19, ptr noundef nonnull align 8 dereferenceable(36) %47)
  %117 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !517
  switch i32 %118, label %135 [
    i32 29, label %119
    i32 27, label %119
    i32 28, label %119
    i32 30, label %119
    i32 56, label %120
    i32 57, label %121
    i32 58, label %122
    i32 59, label %123
    i32 60, label %124
    i32 61, label %125
    i32 62, label %126
    i32 63, label %127
    i32 65, label %128
    i32 70, label %129
    i32 67, label %130
    i32 68, label %131
    i32 69, label %132
    i32 74, label %133
    i32 78, label %134
  ], !prof !520

119:                                              ; preds = %115, %115, %115, %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %247

120:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl16FunctionPositionEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

121:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionLastEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

122:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionCountEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

123:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionNotEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

124:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionTrueEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

125:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFalseEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

126:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl15FunctionBooleanEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

127:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionNameEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %18)
  br label %238

128:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl17FunctionLocalNameEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %18)
  br label %238

129:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionNumberEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %18)
  br label %238

130:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFloorEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

131:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl15FunctionCeilingEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

132:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionRoundEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

133:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %18)
  br label %238

134:                                              ; preds = %115
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionSumEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %238

135:                                              ; preds = %115
  %136 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 15
  %137 = load i8, ptr %136, align 1, !tbaa !298, !range !440, !noundef !317
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %150, !prof !521

139:                                              ; preds = %135
  %140 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !394
  %142 = icmp eq i64 %141, 0
  %143 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = select i1 %142, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %144
  %146 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %145)
  %147 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE)
  %148 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %145, i32 noundef %146, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE, i32 noundef %147)
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 43)
  unreachable

150:                                              ; preds = %139, %135
  %151 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !394
  %153 = icmp eq i64 %152, 0
  %154 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = select i1 %153, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %155, !prof !521
  %157 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !335
  %159 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %156, i32 noundef %158)
  %160 = load i64, ptr %151, align 8, !tbaa !394
  %161 = icmp eq i64 %160, 0
  %162 = load ptr, ptr %154, align 8
  %163 = select i1 %161, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %162, !prof !521
  %164 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %163)
  %165 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl16s_positionStringE)
  %166 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %163, i32 noundef %164, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl16s_positionStringE, i32 noundef %165)
  br i1 %166, label %175, label %167, !prof !521

167:                                              ; preds = %150
  %168 = load i64, ptr %151, align 8, !tbaa !394
  %169 = icmp eq i64 %168, 0
  %170 = load ptr, ptr %154, align 8
  %171 = select i1 %169, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %170, !prof !521
  %172 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %171)
  %173 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl12s_lastStringE)
  %174 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %171, i32 noundef %172, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl12s_lastStringE, i32 noundef %173)
  br i1 %174, label %175, label %184, !prof !521

175:                                              ; preds = %167, %150
  %176 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !337
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !302
  %182 = getelementptr i8, ptr %181, i64 %177
  %183 = getelementptr i8, ptr %182, i64 -1
  store i8 1, ptr %183, align 1, !tbaa !522
  br label %184

184:                                              ; preds = %167, %179, %175
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !447
  %185 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !331
  %187 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %188)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !446
  store i32 %159, ptr %190, align 4, !tbaa !447
  %191 = getelementptr inbounds i32, ptr %190, i64 1
  store i32 0, ptr %191, align 4, !tbaa !447
  %192 = load ptr, ptr %6, align 8, !tbaa !332
  %193 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %192, i32 noundef 24)
          to label %194 unwind label %219, !prof !523

194:                                              ; preds = %184
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %192, i32 noundef 24, i32 noundef %193, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %195 unwind label %219, !prof !523

195:                                              ; preds = %194
  %196 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %197 unwind label %219, !prof !523

197:                                              ; preds = %195
  %198 = invoke noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %199 unwind label %221, !prof !523

199:                                              ; preds = %197
  %200 = load ptr, ptr %6, align 8, !tbaa !332
  %201 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !446
  %203 = sext i32 %18 to i64
  %204 = getelementptr i32, ptr %202, i64 %203
  %205 = getelementptr i32, ptr %204, i64 3
  store i32 %198, ptr %205, align 4, !tbaa !447
  %206 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !516
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %218, label %209, !prof !521

209:                                              ; preds = %199
  %210 = load ptr, ptr %189, align 8, !tbaa !446
  %211 = load ptr, ptr %4, align 8, !tbaa !418
  %212 = load ptr, ptr %211, align 8, !tbaa !267
  %213 = getelementptr inbounds ptr, ptr %212, i64 3
  %214 = load ptr, ptr %213, align 8
  invoke void %214(ptr noundef nonnull align 8 dereferenceable(8) %211, ptr noundef %210)
          to label %218 unwind label %215, !prof !524

215:                                              ; preds = %209
  %216 = landingpad { ptr, i32 }
          catch ptr null
  %217 = extractvalue { ptr, i32 } %216, 0
  call void @__clang_call_terminate(ptr %217) #21
  unreachable

218:                                              ; preds = %199, %209
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %238

219:                                              ; preds = %194, %184, %195
  %220 = landingpad { ptr, i32 }
          cleanup
  br label %223

221:                                              ; preds = %197
  %222 = landingpad { ptr, i32 }
          cleanup
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi { ptr, i32 } [ %222, %221 ], [ %220, %219 ]
  %225 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 2
  %226 = load i64, ptr %225, align 8, !tbaa !516
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr %189, align 8, !tbaa !446
  %230 = load ptr, ptr %4, align 8, !tbaa !418
  %231 = load ptr, ptr %230, align 8, !tbaa !267
  %232 = getelementptr inbounds ptr, ptr %231, i64 3
  %233 = load ptr, ptr %232, align 8
  invoke void %233(ptr noundef nonnull align 8 dereferenceable(8) %230, ptr noundef %229)
          to label %237 unwind label %234

234:                                              ; preds = %228
  %235 = landingpad { ptr, i32 }
          catch ptr null
  %236 = extractvalue { ptr, i32 } %235, 0
  call void @__clang_call_terminate(ptr %236) #21
  unreachable

237:                                              ; preds = %223, %228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %248

238:                                              ; preds = %218, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %97
  %239 = load ptr, ptr %6, align 8, !tbaa !332
  %240 = call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %239, i32 noundef -1)
  %241 = load ptr, ptr %6, align 8, !tbaa !332
  %242 = sext i32 %18 to i64
  %243 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %241, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !446
  %245 = getelementptr inbounds i32, ptr %244, i64 %242
  %246 = load i32, ptr %245, align 4, !tbaa !447
  call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %241, i32 noundef %246, i32 noundef %18)
  br label %247

247:                                              ; preds = %119, %238
  ret void

248:                                              ; preds = %237, %113
  %249 = phi { ptr, i32 } [ %99, %113 ], [ %224, %237 ]
  resume { ptr, i32 } %249
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !481 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !332
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !444
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %15, !prof !525

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !446
  %13 = getelementptr inbounds i32, ptr %12, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !447
  br label %15

15:                                               ; preds = %1, %10
  %16 = phi i32 [ %14, %10 ], [ %8, %1 ]
  %17 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %5, i32 noundef 25)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !271
  %20 = icmp eq i16 %19, 47
  br i1 %20, label %21, label %83, !prof !526

21:                                               ; preds = %15
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %23 = load ptr, ptr %4, align 8, !tbaa !332
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !444
  %26 = trunc i64 %25 to i32
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !446
  %31 = getelementptr inbounds i32, ptr %30, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !447
  br label %33

33:                                               ; preds = %21, %28
  %34 = phi i32 [ %32, %28 ], [ %26, %21 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 4, ptr %3, align 4, !tbaa !447
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !331
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %39 = load ptr, ptr %4, align 8, !tbaa !332
  %40 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %39, i32 noundef 47)
          to label %41 unwind label %67

41:                                               ; preds = %33
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %39, i32 noundef 47, i32 noundef %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %42 unwind label %67

42:                                               ; preds = %41
  %43 = load ptr, ptr %4, align 8, !tbaa !332
  %44 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %43, i32 noundef 32)
          to label %45 unwind label %67

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 8, !tbaa !332
  %47 = sext i32 %34 to i64
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !446
  %50 = getelementptr inbounds i32, ptr %49, i64 %47
  %51 = load i32, ptr %50, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %46, i32 noundef %51, i32 noundef %34)
          to label %52 unwind label %67

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !516
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !446
  %59 = load ptr, ptr %2, align 8, !tbaa !418
  %60 = load ptr, ptr %59, align 8, !tbaa !267
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %58)
          to label %66 unwind label %63

63:                                               ; preds = %56
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  call void @__clang_call_terminate(ptr %65) #21
  unreachable

66:                                               ; preds = %52, %56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %83

67:                                               ; preds = %45, %41, %33, %42
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !516
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !446
  %75 = load ptr, ptr %2, align 8, !tbaa !418
  %76 = load ptr, ptr %75, align 8, !tbaa !267
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef %74)
          to label %82 unwind label %79

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %67, %72
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  resume { ptr, i32 } %68

83:                                               ; preds = %66, %15
  %84 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !335
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !526

87:                                               ; preds = %83
  call void @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %88

88:                                               ; preds = %87, %83
  %89 = load ptr, ptr %4, align 8, !tbaa !332
  %90 = call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %89, i32 noundef -1)
  %91 = load ptr, ptr %4, align 8, !tbaa !332
  call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %91, i32 noundef 25, i32 noundef %16)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl8ArgumentEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !527 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !329, !range !440, !noundef !317
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !528

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = add i32 %7, -1
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !271
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !348
  %16 = getelementptr inbounds i16, ptr %15, i64 %13
  %17 = load i16, ptr %16, align 2, !tbaa !349
  %18 = icmp eq i16 %12, 34
  %19 = icmp eq i16 %17, 34
  %20 = and i1 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = icmp eq i16 %12, 39
  %23 = icmp eq i16 %17, 39
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %10, %21, %1
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void

26:                                               ; preds = %5, %21
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 29)
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl16isCurrentLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(274) %0) local_unnamed_addr #9 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !335
  %4 = add i32 %3, -1
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !271
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = getelementptr inbounds i16, ptr %11, i64 %9
  %13 = load i16, ptr %12, align 2, !tbaa !349
  %14 = icmp eq i16 %8, 34
  %15 = icmp eq i16 %13, 34
  %16 = and i1 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = icmp eq i16 %8, 39
  %19 = icmp eq i16 %13, 39
  %20 = and i1 %18, %19
  br label %21

21:                                               ; preds = %17, %6, %1
  %22 = phi i1 [ false, %1 ], [ true, %6 ], [ %20, %17 ]
  ret i1 %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !529 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i16 %3, 40
  br i1 %4, label %5, label %13, !prof !530

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = load i16, ptr %2, align 8, !tbaa !271
  %8 = icmp eq i16 %7, 41
  br i1 %8, label %39, label %9, !prof !531

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !335
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %18, !prof !312

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 40, ptr noundef nonnull align 8 dereferenceable(36) %14)
  unreachable

15:                                               ; preds = %33
  %16 = load i32, ptr %10, align 8, !tbaa !335
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18, !prof !532, !llvm.loop !533

18:                                               ; preds = %9, %15
  %19 = phi i32 [ %24, %15 ], [ 0, %9 ]
  %20 = phi i16 [ %34, %15 ], [ %7, %9 ]
  %21 = icmp eq i16 %20, 44
  br i1 %21, label %22, label %23, !prof !532

22:                                               ; preds = %18
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 30)
  unreachable

23:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl8ArgumentEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %24 = add nuw nsw i32 %19, 1
  %25 = load i16, ptr %2, align 8, !tbaa !271
  switch i16 %25, label %30 [
    i16 41, label %33
    i16 44, label %26
  ], !prof !534

26:                                               ; preds = %23
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %28 = load i16, ptr %2, align 8, !tbaa !271
  %29 = icmp eq i16 %28, 41
  br i1 %29, label %32, label %33, !prof !535

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 44, ptr noundef nonnull align 8 dereferenceable(36) %31)
  unreachable

32:                                               ; preds = %26
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 31)
  unreachable

33:                                               ; preds = %23, %26
  %34 = load i16, ptr %2, align 8, !tbaa !271
  %35 = icmp eq i16 %34, 41
  br i1 %35, label %39, label %15, !prof !536, !llvm.loop !533

36:                                               ; preds = %15, %9
  %37 = phi i1 [ %8, %9 ], [ %35, %15 ]
  %38 = phi i32 [ 0, %9 ], [ %24, %15 ]
  br i1 %37, label %39, label %42, !prof !530

39:                                               ; preds = %33, %5, %36
  %40 = phi i32 [ %38, %36 ], [ 0, %5 ], [ %24, %33 ]
  %41 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret i32 %40

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 41, ptr noundef nonnull align 8 dereferenceable(36) %43)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !537 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %3, ptr %0, align 8, !tbaa !418
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  store ptr %3, ptr %5, align 8, !tbaa !418
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %10 unwind label %30, !prof !538

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !418
  %14 = load i64, ptr %6, align 8, !tbaa !444
  %15 = load i64, ptr %12, align 8, !tbaa !516
  %16 = load ptr, ptr %11, align 8, !tbaa !446
  %17 = load ptr, ptr %5, align 8, !tbaa !418
  store ptr %17, ptr %0, align 8, !tbaa !418
  %18 = load i64, ptr %7, align 8, !tbaa !444
  store i64 %18, ptr %6, align 8, !tbaa !444
  %19 = load i64, ptr %8, align 8, !tbaa !516
  store i64 %19, ptr %12, align 8, !tbaa !516
  %20 = load ptr, ptr %9, align 8, !tbaa !446
  store ptr %20, ptr %11, align 8, !tbaa !446
  store ptr %13, ptr %5, align 8, !tbaa !418
  store i64 %14, ptr %7, align 8, !tbaa !444
  store i64 %15, ptr %8, align 8, !tbaa !516
  store ptr %16, ptr %9, align 8, !tbaa !446
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !538

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !267
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #21
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !516
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !446
  %36 = load ptr, ptr %5, align 8, !tbaa !418
  %37 = load ptr, ptr %36, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %31
}

declare void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl15isValidFunctionERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 !prof !512 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !394
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6, !prof !514
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !335
  %10 = tail call noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef %7, i32 noundef %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17, !prof !539

12:                                               ; preds = %1
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl15s_functionTableE, i64 noundef 19, ptr noundef nonnull align 8 dereferenceable(36) %0)
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !517
  %16 = icmp ne i32 %15, -1
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ true, %1 ], [ %16, %12 ]
  ret i1 %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl16FunctionPositionEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !540 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 56)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9, !prof !464

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !331
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %13)
  invoke void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 33, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_positionE)
          to label %14 unwind label %15

14:                                               ; preds = %9
  unreachable

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !439
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !348
  %23 = load ptr, ptr %2, align 8, !tbaa !438
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %22)
          to label %30 unwind label %27

27:                                               ; preds = %20
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #21
  unreachable

30:                                               ; preds = %15, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  resume { ptr, i32 } %16

31:                                               ; preds = %1
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !337
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35, !prof !464

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !302
  %38 = getelementptr i8, ptr %37, i64 %33
  %39 = getelementptr i8, ptr %38, i64 -1
  store i8 1, ptr %39, align 1, !tbaa !522
  br label %40

40:                                               ; preds = %31, %35
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionLastEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 57)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 33, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_lastE)
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !337
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !302
  %16 = getelementptr i8, ptr %15, i64 %11
  %17 = getelementptr i8, ptr %16, i64 -1
  store i8 1, ptr %17, align 1, !tbaa !522
  br label %18

18:                                               ; preds = %9, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionCountEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !541 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 58)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8, !prof !542

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_countE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionNotEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 59)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_notE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionTrueEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 60)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 33, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_trueE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFalseEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 61)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 33, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_falseE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl15FunctionBooleanEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 62)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_booleanE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionNameEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !543 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 63)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  switch i32 %7, label %10 [
    i32 0, label %11
    i32 1, label %8
  ], !prof !544

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %9, i32 noundef %1, i32 noundef 63, i32 noundef 64)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable6s_nameE)
  unreachable

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl17FunctionLocalNameEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 65)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  switch i32 %7, label %10 [
    i32 0, label %11
    i32 1, label %8
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %9, i32 noundef %1, i32 noundef 65, i32 noundef 66)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable11s_localNameE)
  unreachable

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionNumberEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !501 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 70)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  switch i32 %7, label %10 [
    i32 0, label %11
    i32 1, label %8
  ], !prof !545

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %9, i32 noundef %1, i32 noundef 70, i32 noundef 71)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_numberE)
  unreachable

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFloorEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !546 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 67)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8, !prof !547

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_floorE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl15FunctionCeilingEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 68)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_ceilingE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionRoundEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 69)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable7s_roundE)
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !266 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 74)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  switch i32 %7, label %10 [
    i32 0, label %11
    i32 1, label %8
  ], !prof !548

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %9, i32 noundef %1, i32 noundef 74, i32 noundef 75)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_stringLengthE)
  unreachable

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionSumEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !501 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 78)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %6 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8, !prof !352

8:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 83, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_sumE)
  unreachable

9:                                                ; preds = %1
  ret void
}

declare void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionStringEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 72)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  switch i32 %7, label %10 [
    i32 0, label %11
    i32 1, label %8
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %9, i32 noundef %1, i32 noundef 72, i32 noundef 73)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable8s_stringE)
  unreachable

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionNamespaceURIEi(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !304 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 76)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  switch i32 %7, label %10 [
    i32 0, label %11
    i32 1, label %8
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %9, i32 noundef %1, i32 noundef 76, i32 noundef 77)
  br label %11

10:                                               ; preds = %2
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEPKt(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 7, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_namespaceUriE)
  unreachable

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !549 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !332
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !444
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %17, !prof !550

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !446
  %15 = getelementptr inbounds i32, ptr %14, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !447
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi i32 [ %16, %12 ], [ %10, %1 ]
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !335
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !551

22:                                               ; preds = %17
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 40)
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !394
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = select i1 %26, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %28, !prof !551
  %30 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %29)
  %31 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_dotStringE)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %29, i32 noundef %30, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_dotStringE, i32 noundef %31)
  br i1 %32, label %33, label %88, !prof !552

33:                                               ; preds = %23
  %34 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !271
  %37 = icmp eq i16 %36, 91
  br i1 %37, label %38, label %39, !prof !357

38:                                               ; preds = %33
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 34)
  unreachable

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 4, ptr %3, align 4, !tbaa !447
  %40 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !331
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %44 = load ptr, ptr %6, align 8, !tbaa !332
  %45 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %44, i32 noundef 45)
          to label %46 unwind label %72, !prof !352

46:                                               ; preds = %39
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %44, i32 noundef 45, i32 noundef %45, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %47 unwind label %72, !prof !352

47:                                               ; preds = %46
  %48 = load ptr, ptr %6, align 8, !tbaa !332
  %49 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %48, i32 noundef 30)
          to label %50 unwind label %72, !prof !352

50:                                               ; preds = %47
  %51 = load ptr, ptr %6, align 8, !tbaa !332
  %52 = sext i32 %18 to i64
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %51, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !446
  %55 = getelementptr inbounds i32, ptr %54, i64 %52
  %56 = load i32, ptr %55, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %51, i32 noundef %56, i32 noundef %18)
          to label %57 unwind label %72, !prof !352

57:                                               ; preds = %50
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !516
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %71, label %61, !prof !357

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !446
  %64 = load ptr, ptr %2, align 8, !tbaa !418
  %65 = load ptr, ptr %64, align 8, !tbaa !267
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %63)
          to label %71 unwind label %68, !prof !553

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #21
  unreachable

71:                                               ; preds = %57, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %179

72:                                               ; preds = %50, %46, %39, %47
  %73 = landingpad { ptr, i32 }
          cleanup
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !516
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !446
  %80 = load ptr, ptr %2, align 8, !tbaa !418
  %81 = load ptr, ptr %80, align 8, !tbaa !267
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #21
  unreachable

87:                                               ; preds = %72, %77
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %180

88:                                               ; preds = %23
  %89 = load i64, ptr %24, align 8, !tbaa !394
  %90 = icmp eq i64 %89, 0
  %91 = load ptr, ptr %27, align 8
  %92 = select i1 %90, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %91, !prof !387
  %93 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %92)
  %94 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl14s_dotDotStringE)
  %95 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %92, i32 noundef %93, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl14s_dotDotStringE, i32 noundef %94)
  br i1 %95, label %96, label %151, !prof !387

96:                                               ; preds = %88
  %97 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %98 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %99 = load i16, ptr %98, align 8, !tbaa !271
  %100 = icmp eq i16 %99, 91
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 35)
  unreachable

102:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 4, ptr %5, align 4, !tbaa !447
  %103 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !331
  %105 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %106)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %107 = load ptr, ptr %6, align 8, !tbaa !332
  %108 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %107, i32 noundef 42)
          to label %109 unwind label %135

109:                                              ; preds = %102
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %107, i32 noundef 42, i32 noundef %108, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %110 unwind label %135

110:                                              ; preds = %109
  %111 = load ptr, ptr %6, align 8, !tbaa !332
  %112 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %111, i32 noundef 30)
          to label %113 unwind label %135

113:                                              ; preds = %110
  %114 = load ptr, ptr %6, align 8, !tbaa !332
  %115 = sext i32 %18 to i64
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %114, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !446
  %118 = getelementptr inbounds i32, ptr %117, i64 %115
  %119 = load i32, ptr %118, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %114, i32 noundef %119, i32 noundef %18)
          to label %120 unwind label %135

120:                                              ; preds = %113
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !516
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !446
  %127 = load ptr, ptr %4, align 8, !tbaa !418
  %128 = load ptr, ptr %127, align 8, !tbaa !267
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef %126)
          to label %134 unwind label %131

131:                                              ; preds = %124
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #21
  unreachable

134:                                              ; preds = %120, %124
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %179

135:                                              ; preds = %113, %109, %102, %110
  %136 = landingpad { ptr, i32 }
          cleanup
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 2
  %138 = load i64, ptr %137, align 8, !tbaa !516
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !446
  %143 = load ptr, ptr %4, align 8, !tbaa !418
  %144 = load ptr, ptr %143, align 8, !tbaa !267
  %145 = getelementptr inbounds ptr, ptr %144, i64 3
  %146 = load ptr, ptr %145, align 8
  invoke void %146(ptr noundef nonnull align 8 dereferenceable(8) %143, ptr noundef %142)
          to label %150 unwind label %147

147:                                              ; preds = %140
  %148 = landingpad { ptr, i32 }
          catch ptr null
  %149 = extractvalue { ptr, i32 } %148, 0
  call void @__clang_call_terminate(ptr %149) #21
  unreachable

150:                                              ; preds = %135, %140
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %180

151:                                              ; preds = %88
  %152 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %153 = load i16, ptr %152, align 8, !tbaa !271
  switch i16 %153, label %154 [
    i16 42, label %162
    i16 64, label %162
    i16 47, label %162
    i16 95, label %162
  ], !prof !554

154:                                              ; preds = %151
  %155 = load ptr, ptr %27, align 8, !tbaa !348
  %156 = load i16, ptr %155, align 2, !tbaa !349
  %157 = zext i16 %156 to i64
  %158 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !373
  %160 = add i8 %159, -1
  %161 = icmp ult i8 %160, 2
  br i1 %161, label %162, label %175, !prof !555

162:                                              ; preds = %151, %151, %151, %151, %154
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %163 = load i16, ptr %152, align 8, !tbaa !271
  %164 = icmp eq i16 %163, 91
  br i1 %164, label %165, label %168, !prof !556

165:                                              ; preds = %162, %165
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %166 = load i16, ptr %152, align 8, !tbaa !271
  %167 = icmp eq i16 %166, 91
  br i1 %167, label %165, label %168, !prof !557, !llvm.loop !558

168:                                              ; preds = %165, %162
  %169 = load ptr, ptr %6, align 8, !tbaa !332
  %170 = sext i32 %18 to i64
  %171 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %169, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !446
  %173 = getelementptr inbounds i32, ptr %172, i64 %170
  %174 = load i32, ptr %173, align 4, !tbaa !447
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %169, i32 noundef %174, i32 noundef %18)
  br label %179

175:                                              ; preds = %154
  %176 = icmp eq i16 %153, 41
  br i1 %176, label %179, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 36, ptr noundef nonnull align 8 dereferenceable(36) %178)
  unreachable

179:                                              ; preds = %71, %168, %175, %134
  ret void

180:                                              ; preds = %150, %87
  %181 = phi { ptr, i32 } [ %73, %87 ], [ %136, %150 ]
  resume { ptr, i32 } %181
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !332
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !444
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %15, !prof !559

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !446
  %13 = getelementptr inbounds i32, ptr %12, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !447
  br label %15

15:                                               ; preds = %1, %10
  %16 = phi i32 [ %14, %10 ], [ %8, %1 ]
  %17 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl12s_axisStringE, i32 noundef 1)
  br i1 %17, label %18, label %22, !prof !560

18:                                               ; preds = %15
  %19 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl8AxisNameEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %117

22:                                               ; preds = %15
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !271
  %25 = load ptr, ptr %4, align 8, !tbaa !332
  switch i16 %24, label %115 [
    i16 64, label %26
    i16 47, label %29
  ], !prof !561

26:                                               ; preds = %22
  %27 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %25, i32 noundef 36)
  %28 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %117

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %25, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !388
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %25, i64 0, i32 2, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !386
  %34 = trunc i64 %33 to i32
  %35 = icmp sge i32 %31, %34
  %36 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %25, i64 0, i32 2, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  %39 = select i1 %35, i1 true, i1 %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %29
  %41 = sext i32 %31 to i64
  %42 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %37, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !267
  %44 = getelementptr inbounds ptr, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef nonnull align 8 dereferenceable(36) ptr %45(ptr noundef nonnull align 8 dereferenceable(24) %42)
  br label %47

47:                                               ; preds = %29, %40
  %48 = phi ptr [ %46, %40 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %29 ]
  %49 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl6isAxisERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %48)
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %48, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !335
  switch i32 %52, label %58 [
    i32 0, label %69
    i32 1, label %53
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %48, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !348
  %56 = load i16, ptr %55, align 2, !tbaa !349
  %57 = icmp eq i16 %56, 42
  br i1 %57, label %71, label %58

58:                                               ; preds = %53, %50
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %48, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !348
  %61 = load i16, ptr %60, align 2, !tbaa !349
  %62 = icmp eq i16 %61, 95
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = zext i16 %61 to i64
  %65 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !373
  %67 = add i8 %66, -1
  %68 = icmp ult i8 %67, 2
  br i1 %68, label %71, label %69

69:                                               ; preds = %63, %50
  %70 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 37)
  unreachable

71:                                               ; preds = %53, %58, %63, %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 4, ptr %3, align 4, !tbaa !447
  %72 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !331
  %74 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %75)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %76 = load ptr, ptr %4, align 8, !tbaa !332
  %77 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %76, i32 noundef 39)
          to label %78 unwind label %99

78:                                               ; preds = %71
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %76, i32 noundef 39, i32 noundef %77, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %79 unwind label %99

79:                                               ; preds = %78
  %80 = load ptr, ptr %4, align 8, !tbaa !332
  %81 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %80, i32 noundef 30)
          to label %82 unwind label %99

82:                                               ; preds = %79
  %83 = load ptr, ptr %4, align 8, !tbaa !332
  invoke void @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi(ptr noundef nonnull align 8 dereferenceable(120) %83, i32 noundef %16)
          to label %84 unwind label %99

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !516
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !446
  %91 = load ptr, ptr %2, align 8, !tbaa !418
  %92 = load ptr, ptr %91, align 8, !tbaa !267
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef %90)
          to label %98 unwind label %95

95:                                               ; preds = %88
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  call void @__clang_call_terminate(ptr %97) #21
  unreachable

98:                                               ; preds = %84, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %120

99:                                               ; preds = %78, %71, %82, %79
  %100 = landingpad { ptr, i32 }
          cleanup
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !516
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !446
  %107 = load ptr, ptr %2, align 8, !tbaa !418
  %108 = load ptr, ptr %107, align 8, !tbaa !267
  %109 = getelementptr inbounds ptr, ptr %108, i64 3
  %110 = load ptr, ptr %109, align 8
  invoke void %110(ptr noundef nonnull align 8 dereferenceable(8) %107, ptr noundef %106)
          to label %114 unwind label %111

111:                                              ; preds = %104
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  call void @__clang_call_terminate(ptr %113) #21
  unreachable

114:                                              ; preds = %99, %104
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  resume { ptr, i32 } %100

115:                                              ; preds = %22
  %116 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %25, i32 noundef 37)
  br label %117

117:                                              ; preds = %26, %115, %18
  %118 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %119 = load ptr, ptr %4, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi(ptr noundef nonnull align 8 dereferenceable(120) %119, i32 noundef %16)
  br label %120

120:                                              ; preds = %98, %117
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl8AxisNameEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !266 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_axisTableE, i64 noundef 13, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !517
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8, !prof !321

7:                                                ; preds = %1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 38, ptr noundef nonnull align 8 dereferenceable(36) %2)
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !332
  %11 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %10, i32 noundef %5)
  ret i32 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl6isAxisERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !335
  switch i32 %3, label %9 [
    i32 0, label %32
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = icmp eq i16 %7, 64
  br i1 %8, label %32, label %9

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !394
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %15)
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_dotStringE)
  %18 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_dotStringE, i32 noundef %17)
  br i1 %18, label %32, label %19

19:                                               ; preds = %9
  %20 = load i64, ptr %10, align 8, !tbaa !394
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr %13, align 8
  %23 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22
  %24 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %23)
  %25 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl14s_dotDotStringE)
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %23, i32 noundef %24, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl14s_dotDotStringE, i32 noundef %25)
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl11s_axisTableE, i64 noundef 13, ptr noundef nonnull align 8 dereferenceable(36) %0)
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !517
  %31 = icmp ne i32 %30, -1
  br label %32

32:                                               ; preds = %9, %19, %4, %1, %27
  %33 = phi i1 [ %31, %27 ], [ false, %1 ], [ true, %4 ], [ true, %19 ], [ true, %9 ]
  ret i1 %33
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl10isNodeTestERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #9 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !335
  switch i32 %3, label %9 [
    i32 0, label %20
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = icmp eq i16 %7, 42
  br i1 %8, label %20, label %9

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = load i16, ptr %11, align 2, !tbaa !349
  %13 = icmp eq i16 %12, 95
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = zext i16 %12 to i64
  %16 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !373
  %18 = add i8 %17, -1
  %19 = icmp ult i8 %18, 2
  br label %20

20:                                               ; preds = %9, %14, %4, %1
  %21 = phi i1 [ false, %1 ], [ true, %4 ], [ %19, %14 ], [ true, %9 ]
  ret i1 %21
}

declare void @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !562 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !388
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !386
  %8 = trunc i64 %7 to i32
  %9 = icmp sge i32 %5, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %3, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %9, i1 true, i1 %12, !prof !563
  br i1 %13, label %21, label %14, !prof !563

14:                                               ; preds = %1
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %16), !prof !564
  br label %21

21:                                               ; preds = %1, %14
  %22 = phi ptr [ %20, %14 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %1 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !335
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31, !prof !565

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !348
  %29 = load i16, ptr %28, align 2, !tbaa !349
  %30 = icmp eq i16 %29, 40
  br i1 %30, label %45, label %31, !prof !566

31:                                               ; preds = %26, %21
  %32 = load ptr, ptr %2, align 8, !tbaa !332
  %33 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %32, i32 noundef 31)
  %34 = load ptr, ptr %2, align 8, !tbaa !332
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !388
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %34, i64 0, i32 2, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !386
  %39 = trunc i64 %38 to i32
  %40 = icmp sge i32 %36, %39
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %34, i64 0, i32 2, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  %44 = select i1 %40, i1 true, i1 %43, !prof !567
  br i1 %44, label %78, label %71, !prof !567

45:                                               ; preds = %26
  %46 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  %47 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl15s_nodeTypeTableE, i64 noundef 5, ptr noundef nonnull align 8 dereferenceable(36) %46)
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !517
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52, !prof !357

51:                                               ; preds = %45
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 39, ptr noundef nonnull align 8 dereferenceable(36) %46)
  unreachable

52:                                               ; preds = %45
  %53 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %54 = load ptr, ptr %2, align 8, !tbaa !332
  %55 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %54, i32 noundef %49)
  %56 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %57 = load i16, ptr %56, align 8, !tbaa !271
  %58 = icmp eq i16 %57, 40
  br i1 %58, label %59, label %65, !prof !352

59:                                               ; preds = %52
  %60 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %61 = icmp ne i32 %49, 29
  %62 = load i16, ptr %56, align 8
  %63 = icmp eq i16 %62, 41
  %64 = select i1 %61, i1 true, i1 %63, !prof !352
  br i1 %64, label %67, label %66, !prof !352

65:                                               ; preds = %52
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 40, ptr noundef nonnull align 8 dereferenceable(36) %46)
  unreachable

66:                                               ; preds = %59
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl7LiteralEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i16, ptr %56, align 8, !tbaa !271
  %69 = icmp eq i16 %68, 41
  br i1 %69, label %137, label %70, !prof !352

70:                                               ; preds = %67
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 41, ptr noundef nonnull align 8 dereferenceable(36) %46)
  unreachable

71:                                               ; preds = %31
  %72 = sext i32 %36 to i64
  %73 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %42, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !267
  %75 = getelementptr inbounds ptr, ptr %74, i64 8
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef nonnull align 8 dereferenceable(36) ptr %76(ptr noundef nonnull align 8 dereferenceable(24) %73), !prof !568
  br label %78

78:                                               ; preds = %31, %71
  %79 = phi ptr [ %77, %71 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %31 ]
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !335
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %88, !prof !569

83:                                               ; preds = %78
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %79, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !348
  %86 = load i16, ptr %85, align 2, !tbaa !349
  %87 = icmp eq i16 %86, 58
  br i1 %87, label %91, label %88, !prof !570

88:                                               ; preds = %83, %78
  %89 = load ptr, ptr %2, align 8, !tbaa !332
  %90 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %89, i32 noundef -2)
  br label %108

91:                                               ; preds = %83
  %92 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %93 = load i16, ptr %92, align 8, !tbaa !271
  %94 = icmp eq i16 %93, 42
  br i1 %94, label %95, label %98, !prof !413

95:                                               ; preds = %91
  %96 = load ptr, ptr %2, align 8, !tbaa !332
  %97 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %96, i32 noundef -3)
  br label %100

98:                                               ; preds = %91
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %99 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %99)
  br label %100

100:                                              ; preds = %98, %95
  %101 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %102 = load i16, ptr %92, align 8, !tbaa !271
  %103 = icmp eq i16 %102, 58
  br i1 %103, label %104, label %106, !prof !411

104:                                              ; preds = %100
  %105 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %108

106:                                              ; preds = %100
  %107 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesEtRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 28, i16 noundef zeroext 58, ptr noundef nonnull align 8 dereferenceable(36) %107)
  unreachable

108:                                              ; preds = %104, %88
  %109 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %110 = load i16, ptr %109, align 8, !tbaa !271
  %111 = icmp eq i16 %110, 42
  br i1 %111, label %112, label %115, !prof !571

112:                                              ; preds = %108
  %113 = load ptr, ptr %2, align 8, !tbaa !332
  %114 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %113, i32 noundef -3)
  br label %137

115:                                              ; preds = %108
  %116 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !335
  switch i32 %117, label %123 [
    i32 0, label %134
    i32 1, label %118
  ], !prof !572

118:                                              ; preds = %115
  %119 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !348
  %121 = load i16, ptr %120, align 2, !tbaa !349
  %122 = icmp eq i16 %121, 42
  br i1 %122, label %135, label %123

123:                                              ; preds = %118, %115
  %124 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !348
  %126 = load i16, ptr %125, align 2, !tbaa !349
  %127 = icmp eq i16 %126, 95
  br i1 %127, label %135, label %128, !prof !573

128:                                              ; preds = %123
  %129 = zext i16 %126 to i64
  %130 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !373
  %132 = add i8 %131, -1
  %133 = icmp ult i8 %132, 2
  br i1 %133, label %135, label %134, !prof !574

134:                                              ; preds = %128, %115
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 40)
  unreachable

135:                                              ; preds = %118, %123, %128
  %136 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %136)
  br label %137

137:                                              ; preds = %112, %135, %67
  %138 = phi i32 [ %55, %67 ], [ -1, %135 ], [ -1, %112 ]
  %139 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret i32 %138
}

declare void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !499 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !444
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %14, !prof !500

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !446
  %12 = getelementptr inbounds i32, ptr %11, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !447
  br label %14

14:                                               ; preds = %1, %9
  %15 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %16 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef 26)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  store i8 0, ptr %2, align 1, !tbaa !522
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %18 = load ptr, ptr %3, align 8, !tbaa !332
  %19 = call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %18, i32 noundef -1)
  %20 = load ptr, ptr %3, align 8, !tbaa !332
  call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %20, i32 noundef 26, i32 noundef %15)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !302
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 12, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !337
  %25 = getelementptr i8, ptr %22, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !522, !range !440, !noundef !317
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29, !prof !500

29:                                               ; preds = %14
  %30 = load ptr, ptr %3, align 8, !tbaa !332
  call void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr noundef nonnull align 8 dereferenceable(120) %30, i32 noundef %15, i32 noundef 26, i32 noundef 55)
  br label %31

31:                                               ; preds = %29, %14
  %32 = load i64, ptr %23, align 8, !tbaa !337
  %33 = add i64 %32, -1
  store i64 %33, ptr %23, align 8, !tbaa !337
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !503 {
  %3 = alloca %"class.xalanc_1_10::XToken", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !392
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !388
  %9 = sext i32 %8 to i64
  %10 = getelementptr %"class.xalanc_1_10::XToken", ptr %6, i64 %9
  %11 = getelementptr %"class.xalanc_1_10::XToken", ptr %10, i64 -1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !418
  call void @_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %13 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_RKS1_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %14 unwind label %15, !prof !575

14:                                               ; preds = %2
  call void @_ZN11xalanc_1_106XTokenD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_106XTokenD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %3) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl6NCNameEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %3)
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void
}

declare void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd(ptr noundef nonnull align 8 dereferenceable(120), double noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120), double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !537 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !332
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !444
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %17, !prof !538

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !446
  %15 = getelementptr inbounds i32, ptr %14, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !447
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi i32 [ %16, %12 ], [ %10, %1 ]
  %19 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %7, i32 noundef 49)
  %20 = load ptr, ptr %6, align 8, !tbaa !332
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !388
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %20, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !386
  %25 = trunc i64 %24 to i32
  %26 = icmp sge i32 %22, %25
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %20, i64 0, i32 2, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = select i1 %26, i1 true, i1 %29, !prof !576
  br i1 %30, label %38, label %31, !prof !576

31:                                               ; preds = %17
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %28, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !267
  %35 = getelementptr inbounds ptr, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %33), !prof !577
  br label %38

38:                                               ; preds = %17, %31
  %39 = phi ptr [ %37, %31 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %17 ]
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !335
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %160, !prof !578

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !348
  %46 = load i16, ptr %45, align 2, !tbaa !349
  %47 = icmp eq i16 %46, 40
  br i1 %47, label %48, label %160, !prof !579

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !394
  %51 = icmp eq i64 %50, 0
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = select i1 %51, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %53, !prof !312
  %55 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %54)
  %56 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl18s_functionIDStringE)
  %57 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %54, i32 noundef %55, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl18s_functionIDStringE, i32 noundef %56)
  br i1 %57, label %66, label %58, !prof !312

58:                                               ; preds = %48
  %59 = load i64, ptr %49, align 8, !tbaa !394
  %60 = icmp eq i64 %59, 0
  %61 = load ptr, ptr %52, align 8
  %62 = select i1 %60, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %61, !prof !312
  %63 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %62)
  %64 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl19s_functionKeyStringE)
  %65 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %62, i32 noundef %63, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl19s_functionKeyStringE, i32 noundef %64)
  br i1 %65, label %66, label %160, !prof !312

66:                                               ; preds = %58, %48
  %67 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 8
  store i8 1, ptr %67, align 8, !tbaa !329
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  store i8 0, ptr %67, align 8, !tbaa !329
  %68 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %69 = load i16, ptr %68, align 8, !tbaa !271
  %70 = icmp eq i16 %69, 47
  br i1 %70, label %71, label %265

71:                                               ; preds = %66
  %72 = load ptr, ptr %6, align 8, !tbaa !332
  %73 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !388
  %75 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %72, i64 0, i32 2, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !386
  %77 = trunc i64 %76 to i32
  %78 = icmp sge i32 %74, %77
  %79 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %72, i64 0, i32 2, i32 3
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  %82 = select i1 %78, i1 true, i1 %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %71
  %84 = sext i32 %74 to i64
  %85 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %80, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !267
  %87 = getelementptr inbounds ptr, ptr %86, i64 8
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef nonnull align 8 dereferenceable(36) ptr %88(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br label %90

90:                                               ; preds = %71, %83
  %91 = phi ptr [ %89, %83 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %71 ]
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !335
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %265

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %91, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !348
  %98 = load i16, ptr %97, align 2, !tbaa !349
  %99 = icmp eq i16 %98, 47
  br i1 %99, label %100, label %265

100:                                              ; preds = %95
  %101 = load ptr, ptr %6, align 8, !tbaa !332
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %101, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !444
  %104 = trunc i64 %103 to i32
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %101, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !446
  %109 = getelementptr inbounds i32, ptr %108, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !447
  br label %111

111:                                              ; preds = %100, %106
  %112 = phi i32 [ %110, %106 ], [ %104, %100 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 4, ptr %3, align 4, !tbaa !447
  %113 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !331
  %115 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %117 = load ptr, ptr %6, align 8, !tbaa !332
  %118 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %117, i32 noundef 54)
          to label %119 unwind label %144

119:                                              ; preds = %111
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %117, i32 noundef 54, i32 noundef %118, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %120 unwind label %144

120:                                              ; preds = %119
  %121 = load ptr, ptr %6, align 8, !tbaa !332
  %122 = sext i32 %112 to i64
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %121, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !446
  %125 = getelementptr inbounds i32, ptr %124, i64 %122
  %126 = load i32, ptr %125, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %121, i32 noundef %126, i32 noundef %112)
          to label %127 unwind label %144

127:                                              ; preds = %120
  %128 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %129 unwind label %144

129:                                              ; preds = %127
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !516
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !446
  %136 = load ptr, ptr %2, align 8, !tbaa !418
  %137 = load ptr, ptr %136, align 8, !tbaa !267
  %138 = getelementptr inbounds ptr, ptr %137, i64 3
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %135)
          to label %143 unwind label %140

140:                                              ; preds = %133
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  call void @__clang_call_terminate(ptr %142) #21
  unreachable

143:                                              ; preds = %129, %133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %265

144:                                              ; preds = %120, %119, %111, %127
  %145 = landingpad { ptr, i32 }
          cleanup
  %146 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %147 = load i64, ptr %146, align 8, !tbaa !516
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !446
  %152 = load ptr, ptr %2, align 8, !tbaa !418
  %153 = load ptr, ptr %152, align 8, !tbaa !267
  %154 = getelementptr inbounds ptr, ptr %153, i64 3
  %155 = load ptr, ptr %154, align 8
  invoke void %155(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %151)
          to label %159 unwind label %156

156:                                              ; preds = %149
  %157 = landingpad { ptr, i32 }
          catch ptr null
  %158 = extractvalue { ptr, i32 } %157, 0
  call void @__clang_call_terminate(ptr %158) #21
  unreachable

159:                                              ; preds = %144, %149
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %318

160:                                              ; preds = %58, %38, %43
  %161 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %162 = load i16, ptr %161, align 8, !tbaa !271
  %163 = icmp eq i16 %162, 47
  br i1 %163, label %164, label %265, !prof !580

164:                                              ; preds = %160
  %165 = load ptr, ptr %6, align 8, !tbaa !332
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %165, i64 0, i32 1
  %167 = load i64, ptr %166, align 8, !tbaa !444
  %168 = trunc i64 %167 to i32
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %175, !prof !454

170:                                              ; preds = %164
  %171 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %165, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !446
  %173 = getelementptr inbounds i32, ptr %172, i64 1
  %174 = load i32, ptr %173, align 4, !tbaa !447
  br label %175

175:                                              ; preds = %164, %170
  %176 = phi i32 [ %174, %170 ], [ %168, %164 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 4, ptr %5, align 4, !tbaa !447
  %177 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !331
  %179 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !441
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %180)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %181 = load ptr, ptr %6, align 8, !tbaa !332
  %182 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %181, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !388
  %184 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %181, i64 0, i32 2, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !386
  %186 = trunc i64 %185 to i32
  %187 = icmp sge i32 %183, %186
  %188 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %181, i64 0, i32 2, i32 3
  %189 = load ptr, ptr %188, align 8
  %190 = icmp eq ptr %189, null
  %191 = select i1 %187, i1 true, i1 %190, !prof !581
  br i1 %191, label %199, label %192, !prof !581

192:                                              ; preds = %175
  %193 = sext i32 %183 to i64
  %194 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %189, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !267
  %196 = getelementptr inbounds ptr, ptr %195, i64 8
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef nonnull align 8 dereferenceable(36) ptr %197(ptr noundef nonnull align 8 dereferenceable(24) %194)
          to label %199 unwind label %221, !prof !582

199:                                              ; preds = %192, %175
  %200 = phi ptr [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %175 ], [ %198, %192 ]
  %201 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %200, i64 0, i32 1
  %202 = load i32, ptr %201, align 8, !tbaa !335
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %209, !prof !581

204:                                              ; preds = %199
  %205 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %200, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !348
  %207 = load i16, ptr %206, align 2, !tbaa !349
  %208 = icmp eq i16 %207, 47
  br i1 %208, label %212, label %209, !prof !270

209:                                              ; preds = %204, %199
  %210 = load ptr, ptr %6, align 8, !tbaa !332
  %211 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %210, i32 noundef 47)
          to label %237 unwind label %221, !prof !270

212:                                              ; preds = %204
  %213 = load ptr, ptr %6, align 8, !tbaa !332
  %214 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %213, i32 noundef 53)
          to label %215 unwind label %221, !prof !270

215:                                              ; preds = %212
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %213, i32 noundef 53, i32 noundef %214, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %216 unwind label %221, !prof !270

216:                                              ; preds = %215
  %217 = load ptr, ptr %6, align 8, !tbaa !332
  %218 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %217, i32 noundef 30)
          to label %219 unwind label %221, !prof !270

219:                                              ; preds = %216
  %220 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %241 unwind label %221, !prof !270

221:                                              ; preds = %192, %241, %237, %209, %215, %212, %248, %238, %219, %216
  %222 = landingpad { ptr, i32 }
          cleanup
  %223 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 2
  %224 = load i64, ptr %223, align 8, !tbaa !516
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !446
  %229 = load ptr, ptr %4, align 8, !tbaa !418
  %230 = load ptr, ptr %229, align 8, !tbaa !267
  %231 = getelementptr inbounds ptr, ptr %230, i64 3
  %232 = load ptr, ptr %231, align 8
  invoke void %232(ptr noundef nonnull align 8 dereferenceable(8) %229, ptr noundef %228)
          to label %236 unwind label %233

233:                                              ; preds = %226
  %234 = landingpad { ptr, i32 }
          catch ptr null
  %235 = extractvalue { ptr, i32 } %234, 0
  call void @__clang_call_terminate(ptr %235) #21
  unreachable

236:                                              ; preds = %221, %226
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %318

237:                                              ; preds = %209
  invoke void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr noundef nonnull align 8 dereferenceable(120) %210, i32 noundef 47, i32 noundef %211, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %238 unwind label %221, !prof !270

238:                                              ; preds = %237
  %239 = load ptr, ptr %6, align 8, !tbaa !332
  %240 = invoke noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %239, i32 noundef 32)
          to label %241 unwind label %221, !prof !270

241:                                              ; preds = %238, %219
  %242 = load ptr, ptr %6, align 8, !tbaa !332
  %243 = sext i32 %176 to i64
  %244 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %242, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !446
  %246 = getelementptr inbounds i32, ptr %245, i64 %243
  %247 = load i32, ptr %246, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %242, i32 noundef %247, i32 noundef %176)
          to label %248 unwind label %221, !prof !454

248:                                              ; preds = %241
  %249 = invoke noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
          to label %250 unwind label %221, !prof !454

250:                                              ; preds = %248
  %251 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 2
  %252 = load i64, ptr %251, align 8, !tbaa !516
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %264, label %254, !prof !455

254:                                              ; preds = %250
  %255 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %4, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !446
  %257 = load ptr, ptr %4, align 8, !tbaa !418
  %258 = load ptr, ptr %257, align 8, !tbaa !267
  %259 = getelementptr inbounds ptr, ptr %258, i64 3
  %260 = load ptr, ptr %259, align 8
  invoke void %260(ptr noundef nonnull align 8 dereferenceable(8) %257, ptr noundef %256)
          to label %264 unwind label %261, !prof !583

261:                                              ; preds = %254
  %262 = landingpad { ptr, i32 }
          catch ptr null
  %263 = extractvalue { ptr, i32 } %262, 0
  call void @__clang_call_terminate(ptr %263) #21
  unreachable

264:                                              ; preds = %250, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %265

265:                                              ; preds = %90, %95, %160, %264, %66, %143
  %266 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !335
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %314, label %269, !prof !584

269:                                              ; preds = %265
  %270 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %271 = load i16, ptr %270, align 8, !tbaa !271
  %272 = icmp eq i16 %271, 124
  br i1 %272, label %274, label %273, !prof !585

273:                                              ; preds = %269
  call void @_ZN11xalanc_1_1018XPathProcessorImpl19RelativePathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %314

274:                                              ; preds = %269
  %275 = load ptr, ptr %6, align 8, !tbaa !332
  %276 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %275, i64 0, i32 3
  %277 = load i32, ptr %276, align 8, !tbaa !388
  %278 = icmp slt i32 %277, 2
  br i1 %278, label %281, label %279

279:                                              ; preds = %274
  %280 = add nsw i32 %277, -2
  br label %285

281:                                              ; preds = %274
  %282 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %275, i64 0, i32 2, i32 1
  %283 = load i64, ptr %282, align 8, !tbaa !386
  %284 = trunc i64 %283 to i32
  br label %285

285:                                              ; preds = %281, %279
  %286 = phi i32 [ %280, %279 ], [ %284, %281 ]
  %287 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %275, i64 0, i32 2, i32 1
  %288 = load i64, ptr %287, align 8, !tbaa !386
  %289 = trunc i64 %288 to i32
  %290 = icmp eq i32 %286, %289
  %291 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %275, i64 0, i32 2, i32 3
  %292 = load ptr, ptr %291, align 8
  %293 = icmp eq ptr %292, null
  %294 = select i1 %290, i1 true, i1 %293
  br i1 %294, label %302, label %295

295:                                              ; preds = %285
  %296 = sext i32 %286 to i64
  %297 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %292, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !267
  %299 = getelementptr inbounds ptr, ptr %298, i64 8
  %300 = load ptr, ptr %299, align 8
  %301 = call noundef nonnull align 8 dereferenceable(36) ptr %300(ptr noundef nonnull align 8 dereferenceable(24) %297)
  br label %302

302:                                              ; preds = %285, %295
  %303 = phi ptr [ %301, %295 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %285 ]
  %304 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %303, i64 0, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !335
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %307, label %314

307:                                              ; preds = %302
  %308 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %303, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !348
  %310 = load i16, ptr %309, align 2, !tbaa !349
  %311 = icmp eq i16 %310, 124
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1
  call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 36, ptr noundef nonnull align 8 dereferenceable(36) %313)
  unreachable

314:                                              ; preds = %302, %307, %273, %265
  %315 = load ptr, ptr %6, align 8, !tbaa !332
  %316 = call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %315, i32 noundef -1)
  %317 = load ptr, ptr %6, align 8, !tbaa !332
  call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %317, i32 noundef 49, i32 noundef %18)
  ret void

318:                                              ; preds = %236, %159
  %319 = phi { ptr, i32 } [ %145, %159 ], [ %222, %236 ]
  resume { ptr, i32 } %319
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl12IdKeyPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 8
  store i8 1, ptr %2, align 8, !tbaa !329
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  store i8 0, ptr %2, align 8, !tbaa !329
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl19RelativePathPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !586 {
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i16 %3, 47
  br i1 %4, label %5, label %9, !prof !587

5:                                                ; preds = %1, %5
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %7 = load i16, ptr %2, align 8, !tbaa !271
  %8 = icmp eq i16 %7, 47
  br i1 %8, label %5, label %9, !prof !507, !llvm.loop !588

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl11StepPatternEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !304 {
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv(ptr noundef nonnull align 8 dereferenceable(274) %0) local_unnamed_addr #0 align 2 !prof !589 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13, !prof !590

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !447
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !271
  %17 = icmp eq i16 %16, 64
  br i1 %17, label %18, label %21, !prof !591

18:                                               ; preds = %13
  %19 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef 50)
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %139

21:                                               ; preds = %13
  %22 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl12s_axisStringE, i32 noundef 1)
  br i1 %22, label %23, label %63, !prof !592

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !394
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = select i1 %26, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %28
  %30 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %29)
  %31 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl17s_attributeStringE)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %29, i32 noundef %30, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl17s_attributeStringE, i32 noundef %31)
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load ptr, ptr %2, align 8, !tbaa !332
  %35 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %34, i32 noundef 50)
  br label %59

36:                                               ; preds = %23
  %37 = load i64, ptr %24, align 8, !tbaa !394
  %38 = icmp eq i64 %37, 0
  %39 = load ptr, ptr %27, align 8
  %40 = select i1 %38, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %39
  %41 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %40)
  %42 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl13s_childStringE)
  %43 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %40, i32 noundef %41, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl13s_childStringE, i32 noundef %42)
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load ptr, ptr %2, align 8, !tbaa !332
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !444
  %48 = trunc i64 %47 to i32
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %45, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !446
  %53 = getelementptr inbounds i32, ptr %52, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !447
  br label %55

55:                                               ; preds = %44, %50
  %56 = phi i32 [ %54, %50 ], [ %48, %44 ]
  %57 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %45, i32 noundef 52)
  br label %59

58:                                               ; preds = %36
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 41)
  unreachable

59:                                               ; preds = %55, %33
  %60 = phi i32 [ -1, %33 ], [ %56, %55 ]
  %61 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %62 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %139

63:                                               ; preds = %21
  %64 = load i16, ptr %15, align 8, !tbaa !271
  %65 = icmp eq i16 %64, 47
  br i1 %65, label %66, label %125, !prof !592

66:                                               ; preds = %63
  %67 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl12s_axisStringE, i32 noundef 2)
  br i1 %67, label %82, label %68

68:                                               ; preds = %66
  %69 = load ptr, ptr %2, align 8, !tbaa !332
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !444
  %72 = trunc i64 %71 to i32
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %69, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !446
  %77 = getelementptr inbounds i32, ptr %76, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !447
  br label %79

79:                                               ; preds = %68, %74
  %80 = phi i32 [ %78, %74 ], [ %72, %68 ]
  %81 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %69, i32 noundef 52)
  br label %122

82:                                               ; preds = %66
  %83 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %84 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !394
  %86 = icmp eq i64 %85, 0
  %87 = getelementptr inbounds %"class.xalanc_1_10::XPathProcessorImpl", ptr %0, i64 0, i32 1, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = select i1 %86, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %88
  %90 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %89)
  %91 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl17s_attributeStringE)
  %92 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %89, i32 noundef %90, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl17s_attributeStringE, i32 noundef %91)
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load ptr, ptr %2, align 8, !tbaa !332
  %95 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %94, i32 noundef 50)
  br label %119

96:                                               ; preds = %82
  %97 = load i64, ptr %84, align 8, !tbaa !394
  %98 = icmp eq i64 %97, 0
  %99 = load ptr, ptr %87, align 8
  %100 = select i1 %98, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %99
  %101 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %100)
  %102 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl13s_childStringE)
  %103 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %100, i32 noundef %101, ptr noundef nonnull @_ZN11xalanc_1_1018XPathProcessorImpl13s_childStringE, i32 noundef %102)
  br i1 %103, label %104, label %118

104:                                              ; preds = %96
  %105 = load ptr, ptr %2, align 8, !tbaa !332
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !444
  %108 = trunc i64 %107 to i32
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %105, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !446
  %113 = getelementptr inbounds i32, ptr %112, i64 1
  %114 = load i32, ptr %113, align 4, !tbaa !447
  br label %115

115:                                              ; preds = %104, %110
  %116 = phi i32 [ %114, %110 ], [ %108, %104 ]
  %117 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %105, i32 noundef 52)
  br label %119

118:                                              ; preds = %96
  tail call void @_ZNK11xalanc_1_1018XPathProcessorImpl5errorENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef 41)
  unreachable

119:                                              ; preds = %115, %93
  %120 = phi i32 [ -1, %93 ], [ %116, %115 ]
  %121 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %122

122:                                              ; preds = %119, %79
  %123 = phi i32 [ %80, %79 ], [ %120, %119 ]
  %124 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  br label %139

125:                                              ; preds = %63
  %126 = load ptr, ptr %2, align 8, !tbaa !332
  %127 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %126, i64 0, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !444
  %129 = trunc i64 %128 to i32
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %136, !prof !593

131:                                              ; preds = %125
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %126, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !446
  %134 = getelementptr inbounds i32, ptr %133, i64 1
  %135 = load i32, ptr %134, align 4, !tbaa !447
  br label %136

136:                                              ; preds = %125, %131
  %137 = phi i32 [ %135, %131 ], [ %129, %125 ]
  %138 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %126, i32 noundef 52)
  br label %139

139:                                              ; preds = %59, %136, %122, %18
  %140 = phi i32 [ -1, %18 ], [ %60, %59 ], [ %123, %122 ], [ %137, %136 ]
  %141 = load ptr, ptr %2, align 8, !tbaa !332
  %142 = tail call noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %141, i32 noundef -1)
  %143 = tail call noundef i32 @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %144 = load ptr, ptr %2, align 8, !tbaa !332
  tail call void @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi(ptr noundef nonnull align 8 dereferenceable(120) %144, i32 noundef %14)
  %145 = load i16, ptr %15, align 8, !tbaa !271
  %146 = icmp eq i16 %145, 91
  br i1 %146, label %147, label %150, !prof !312

147:                                              ; preds = %139, %147
  tail call void @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv(ptr noundef nonnull align 8 dereferenceable(274) %0)
  %148 = load i16, ptr %15, align 8, !tbaa !271
  %149 = icmp eq i16 %148, 91
  br i1 %149, label %147, label %150, !prof !312, !llvm.loop !594

150:                                              ; preds = %147, %139
  %151 = phi i16 [ %145, %139 ], [ %148, %147 ]
  %152 = icmp sgt i32 %140, -1
  %153 = icmp eq i16 %151, 47
  %154 = and i1 %152, %153
  br i1 %154, label %155, label %190, !prof !595

155:                                              ; preds = %150
  %156 = load ptr, ptr %2, align 8, !tbaa !332
  %157 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %156, i64 0, i32 3
  %158 = load i32, ptr %157, align 8, !tbaa !388
  %159 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %156, i64 0, i32 2, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !386
  %161 = trunc i64 %160 to i32
  %162 = icmp sge i32 %158, %161
  %163 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %156, i64 0, i32 2, i32 3
  %164 = load ptr, ptr %163, align 8
  %165 = icmp eq ptr %164, null
  %166 = select i1 %162, i1 true, i1 %165, !prof !507
  br i1 %166, label %174, label %167, !prof !507

167:                                              ; preds = %155
  %168 = sext i32 %158 to i64
  %169 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %164, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !267
  %171 = getelementptr inbounds ptr, ptr %170, i64 8
  %172 = load ptr, ptr %171, align 8
  %173 = tail call noundef nonnull align 8 dereferenceable(36) ptr %172(ptr noundef nonnull align 8 dereferenceable(24) %169), !prof !505
  br label %174

174:                                              ; preds = %155, %167
  %175 = phi ptr [ %173, %167 ], [ @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, %155 ]
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !335
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %190, !prof !596

179:                                              ; preds = %174
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %175, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !348
  %182 = load i16, ptr %181, align 2, !tbaa !349
  %183 = icmp eq i16 %182, 47
  br i1 %183, label %184, label %190, !prof !312

184:                                              ; preds = %179
  %185 = load ptr, ptr %2, align 8, !tbaa !332
  %186 = sext i32 %140 to i64
  %187 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %185, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !446
  %189 = getelementptr inbounds i32, ptr %188, i64 %186
  store i32 51, ptr %189, align 4, !tbaa !447
  br label %190

190:                                              ; preds = %174, %179, %184, %150
  %191 = load ptr, ptr %2, align 8, !tbaa !332
  %192 = sext i32 %14 to i64
  %193 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %191, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !446
  %195 = getelementptr inbounds i32, ptr %194, i64 %192
  %196 = load i32, ptr %195, align 4, !tbaa !447
  tail call void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr noundef nonnull align 8 dereferenceable(120) %191, i32 noundef %196, i32 noundef %14)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE(ptr noundef %0, i64 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2) local_unnamed_addr #6 align 2 !prof !597 {
  %4 = getelementptr %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %0, i64 %1
  %5 = getelementptr %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %4, i64 -1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  br label %8

8:                                                ; preds = %54, %3
  %9 = phi ptr [ %5, %3 ], [ %55, %54 ]
  %10 = phi ptr [ %0, %3 ], [ %56, %54 ]
  %11 = phi ptr [ undef, %3 ], [ %57, %54 ]
  %12 = icmp ugt ptr %10, %9
  br i1 %12, label %59, label %13, !prof !598

13:                                               ; preds = %8
  %14 = ptrtoint ptr %9 to i64
  %15 = ptrtoint ptr %10 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 4
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %10, i64 %18
  %20 = load i64, ptr %6, align 8, !tbaa !394
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr %7, align 8
  %23 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22, !prof !599
  %24 = load ptr, ptr %19, align 8, !tbaa !600
  br label %25

25:                                               ; preds = %25, %13
  %26 = phi ptr [ %23, %13 ], [ %29, %25 ]
  %27 = load i16, ptr %26, align 2, !tbaa !349
  %28 = icmp eq i16 %27, 0
  %29 = getelementptr inbounds i16, ptr %26, i64 1
  br i1 %28, label %30, label %25, !prof !601, !llvm.loop !602

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %34, %30 ], [ %24, %25 ]
  %32 = load i16, ptr %31, align 2, !tbaa !349
  %33 = icmp eq i16 %32, 0
  %34 = getelementptr inbounds i16, ptr %31, i64 1
  br i1 %33, label %35, label %30, !prof !603, !llvm.loop !602

35:                                               ; preds = %30
  %36 = ptrtoint ptr %26 to i64
  %37 = ptrtoint ptr %23 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = ptrtoint ptr %31 to i64
  %42 = ptrtoint ptr %24 to i64
  %43 = sub i64 %41, %42
  %44 = lshr exact i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = tail call noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr noundef %23, i32 noundef %40, ptr noundef %24, i32 noundef %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50, !prof !604

48:                                               ; preds = %35
  %49 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %19, i64 -1
  br label %54

50:                                               ; preds = %35
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %54, label %52, !prof !605

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"struct.xalanc_1_10::XPathProcessorImpl::TableEntry", ptr %19, i64 1
  br label %54

54:                                               ; preds = %48, %52, %50
  %55 = phi ptr [ %9, %50 ], [ %49, %48 ], [ %9, %52 ]
  %56 = phi ptr [ %10, %50 ], [ %10, %48 ], [ %53, %52 ]
  %57 = phi ptr [ %19, %50 ], [ %11, %48 ], [ %11, %52 ]
  %58 = phi i1 [ false, %50 ], [ true, %48 ], [ true, %52 ]
  br i1 %58, label %8, label %59, !prof !606, !llvm.loop !607

59:                                               ; preds = %54, %8
  %60 = phi ptr [ @_ZN11xalanc_1_1018XPathProcessorImpl12s_dummyEntryE, %8 ], [ %57, %54 ]
  ret ptr %60
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !608 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !439
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !609

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !348
  %8 = load ptr, ptr %0, align 8, !tbaa !438
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !610

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !304 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_106XTokenD1Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !611 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !386
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !612
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !613

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !392
  %12 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %11, i64 %5
  tail call void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %12, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %13 = load i64, ptr %4, align 8, !tbaa !386
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !386
  br label %37

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !614
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %22 unwind label %35

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !614
  %24 = load i64, ptr %4, align 8, !tbaa !386
  %25 = load i64, ptr %6, align 8, !tbaa !612
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !392
  %28 = load ptr, ptr %3, align 8, !tbaa !614
  store ptr %28, ptr %0, align 8, !tbaa !614
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !386
  store i64 %30, ptr %4, align 8, !tbaa !386
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !612
  store i64 %32, ptr %6, align 8, !tbaa !612
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !392
  store ptr %34, ptr %26, align 8, !tbaa !392
  store ptr %23, ptr %3, align 8, !tbaa !614
  store i64 %24, ptr %29, align 8, !tbaa !386
  store i64 %25, ptr %31, align 8, !tbaa !612
  store ptr %27, ptr %33, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %37

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %36

37:                                               ; preds = %22, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !614
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !386
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !559

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !614
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !386
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !612
  %16 = mul i64 %13, 48
  %17 = load ptr, ptr %2, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !392
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !392
  %24 = load i64, ptr %9, align 8, !tbaa !386
  %25 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !614
  %28 = load i64, ptr %6, align 8, !tbaa !386
  %29 = load i64, ptr %7, align 8, !tbaa !612
  %30 = load ptr, ptr %8, align 8, !tbaa !392
  %31 = load ptr, ptr %5, align 8, !tbaa !614
  store ptr %31, ptr %0, align 8, !tbaa !614
  %32 = load i64, ptr %14, align 8, !tbaa !386
  store i64 %32, ptr %6, align 8, !tbaa !386
  %33 = load i64, ptr %15, align 8, !tbaa !612
  store i64 %33, ptr %7, align 8, !tbaa !612
  %34 = load ptr, ptr %21, align 8, !tbaa !392
  store ptr %34, ptr %8, align 8, !tbaa !392
  store ptr %27, ptr %5, align 8, !tbaa !614
  store i64 %28, ptr %14, align 8, !tbaa !386
  store i64 %29, ptr %15, align 8, !tbaa !612
  store ptr %30, ptr %21, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !387

39:                                               ; preds = %37
  %40 = mul i64 %3, 48
  %41 = load ptr, ptr %2, align 8, !tbaa !267
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !615
  store ptr %44, ptr %8, align 8, !tbaa !392
  store i64 %3, ptr %7, align 8, !tbaa !612
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !616 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !612
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %24, label %5, !prof !617

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !392
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !386
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %18, label %12, !prof !618

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %16, %12 ], [ %7, %5 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !267
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(41) %13) #20
  %16 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %13, i64 1
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %12, !prof !618, !llvm.loop !619

18:                                               ; preds = %12, %5
  %19 = load ptr, ptr %6, align 8, !tbaa !392
  %20 = load ptr, ptr %0, align 8, !tbaa !614
  %21 = load ptr, ptr %20, align 8, !tbaa !267
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %24 unwind label %25, !prof !620

24:                                               ; preds = %18, %1
  ret void

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #21
  unreachable
}

declare void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 48
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %155, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !386
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !392
  %17 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !612
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %155, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !392
  %28 = load i64, ptr %12, align 8, !tbaa !386
  %29 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %32, ptr noundef nonnull align 8 dereferenceable(41) %31)
  %33 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !386
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !386
  %36 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %155, label %30, !llvm.loop !621

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %75

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %41 = load ptr, ptr %0, align 8, !tbaa !614
  store ptr %41, ptr %5, align 8, !tbaa !614
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !386
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !612
  %44 = mul i64 %14, 48
  %45 = load ptr, ptr %41, align 8, !tbaa !267
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !392
  %50 = load i64, ptr %42, align 8, !tbaa !386
  %51 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !392
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %73

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !392
  %55 = load i64, ptr %42, align 8, !tbaa !386
  %56 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %73

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !392
  %59 = load i64, ptr %42, align 8, !tbaa !386
  %60 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !392
  %62 = load i64, ptr %12, align 8, !tbaa !386
  %63 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %73

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !614
  %66 = load i64, ptr %12, align 8, !tbaa !386
  %67 = load i64, ptr %19, align 8, !tbaa !612
  %68 = load ptr, ptr %15, align 8, !tbaa !392
  %69 = load ptr, ptr %5, align 8, !tbaa !614
  store ptr %69, ptr %0, align 8, !tbaa !614
  %70 = load i64, ptr %42, align 8, !tbaa !386
  store i64 %70, ptr %12, align 8, !tbaa !386
  %71 = load i64, ptr %43, align 8, !tbaa !612
  store i64 %71, ptr %19, align 8, !tbaa !612
  %72 = load ptr, ptr %49, align 8, !tbaa !392
  store ptr %72, ptr %15, align 8, !tbaa !392
  store ptr %65, ptr %5, align 8, !tbaa !614
  store i64 %66, ptr %42, align 8, !tbaa !386
  store i64 %67, ptr %43, align 8, !tbaa !612
  store ptr %68, ptr %49, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %155

73:                                               ; preds = %57, %53, %40
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %74

75:                                               ; preds = %38
  %76 = ptrtoint ptr %17 to i64
  %77 = ptrtoint ptr %1 to i64
  %78 = sub i64 %76, %77
  %79 = icmp ugt i64 %78, %8
  br i1 %79, label %111, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %2, i64 %78
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %85

83:                                               ; preds = %85, %80
  %84 = icmp eq ptr %17, %1
  br i1 %84, label %93, label %89

85:                                               ; preds = %80, %85
  %86 = phi ptr [ %87, %85 ], [ %81, %80 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %86)
  %87 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %86, i64 1
  %88 = icmp eq ptr %87, %3
  br i1 %88, label %83, label %85, !llvm.loop !622

89:                                               ; preds = %83, %89
  %90 = phi ptr [ %91, %89 ], [ %1, %83 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %90)
  %91 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %90, i64 1
  %92 = icmp eq ptr %91, %17
  br i1 %92, label %93, label %89, !llvm.loop !623

93:                                               ; preds = %89, %83
  %94 = icmp sgt i64 %78, 0
  br i1 %94, label %95, label %155

95:                                               ; preds = %93
  %96 = udiv exact i64 %78, 48
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %109, %97 ], [ %96, %95 ]
  %99 = phi ptr [ %108, %97 ], [ %1, %95 ]
  %100 = phi ptr [ %107, %97 ], [ %2, %95 ]
  %101 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !624
  %103 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 0, i32 1
  store ptr %102, ptr %103, align 8, !tbaa !624
  %104 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %100, i64 0, i32 2
  %105 = load double, ptr %104, align 8, !tbaa !630
  %106 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 0, i32 2
  store double %105, ptr %106, align 8, !tbaa !630
  %107 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %100, i64 1
  %108 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 1
  %109 = add nsw i64 %98, -1
  %110 = icmp sgt i64 %98, 1
  br i1 %110, label %97, label %155, !llvm.loop !631

111:                                              ; preds = %75
  %112 = sub nsw i64 0, %9
  %113 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %17, i64 %112
  %114 = icmp eq ptr %3, %2
  br i1 %114, label %119, label %115

115:                                              ; preds = %111, %115
  %116 = phi ptr [ %117, %115 ], [ %113, %111 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %116)
  %117 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %116, i64 1
  %118 = icmp eq ptr %117, %17
  br i1 %118, label %119, label %115, !llvm.loop !632

119:                                              ; preds = %115, %111
  %120 = ptrtoint ptr %113 to i64
  %121 = sub i64 %120, %77
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = udiv exact i64 %121, 48
  br label %127

125:                                              ; preds = %127, %119
  %126 = icmp sgt i64 %8, 0
  br i1 %126, label %141, label %155

127:                                              ; preds = %123, %127
  %128 = phi i64 [ %139, %127 ], [ %124, %123 ]
  %129 = phi ptr [ %132, %127 ], [ %17, %123 ]
  %130 = phi ptr [ %131, %127 ], [ %113, %123 ]
  %131 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %130, i64 -1
  %132 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %129, i64 -1
  %133 = getelementptr %"class.xalanc_1_10::XToken", ptr %130, i64 -1, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !624
  %135 = getelementptr %"class.xalanc_1_10::XToken", ptr %129, i64 -1, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !624
  %136 = getelementptr %"class.xalanc_1_10::XToken", ptr %130, i64 -1, i32 2
  %137 = load double, ptr %136, align 8, !tbaa !630
  %138 = getelementptr %"class.xalanc_1_10::XToken", ptr %129, i64 -1, i32 2
  store double %137, ptr %138, align 8, !tbaa !630
  %139 = add nsw i64 %128, -1
  %140 = icmp sgt i64 %128, 1
  br i1 %140, label %127, label %125, !llvm.loop !633

141:                                              ; preds = %125, %141
  %142 = phi i64 [ %153, %141 ], [ %9, %125 ]
  %143 = phi ptr [ %152, %141 ], [ %1, %125 ]
  %144 = phi ptr [ %151, %141 ], [ %2, %125 ]
  %145 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !624
  %147 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %143, i64 0, i32 1
  store ptr %146, ptr %147, align 8, !tbaa !624
  %148 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %144, i64 0, i32 2
  %149 = load double, ptr %148, align 8, !tbaa !630
  %150 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %143, i64 0, i32 2
  store double %149, ptr %150, align 8, !tbaa !630
  %151 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %144, i64 1
  %152 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %143, i64 1
  %153 = add nsw i64 %142, -1
  %154 = icmp sgt i64 %142, 1
  br i1 %154, label %141, label %155, !llvm.loop !631

155:                                              ; preds = %97, %141, %30, %93, %125, %24, %64, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !614
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !614
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !386
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !612
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !392
  %12 = load ptr, ptr %3, align 8, !tbaa !614
  store ptr %12, ptr %0, align 8, !tbaa !614
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !386
  store i64 %14, ptr %6, align 8, !tbaa !386
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !612
  store i64 %16, ptr %8, align 8, !tbaa !612
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !392
  store ptr %18, ptr %10, align 8, !tbaa !392
  store ptr %5, ptr %3, align 8, !tbaa !614
  store i64 %7, ptr %13, align 8, !tbaa !386
  store i64 %9, ptr %15, align 8, !tbaa !612
  store ptr %11, ptr %17, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

declare void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !634 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !635

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !439
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !394
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !636

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !438
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !438
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !394
  %16 = load i64, ptr %6, align 8, !tbaa !439
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !348
  %19 = load ptr, ptr %3, align 8, !tbaa !438
  store ptr %19, ptr %0, align 8, !tbaa !438
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !394
  store i64 %21, ptr %14, align 8, !tbaa !394
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !439
  store i64 %23, ptr %6, align 8, !tbaa !439
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !348
  store ptr %25, ptr %17, align 8, !tbaa !348
  store ptr %13, ptr %3, align 8, !tbaa !438
  store i64 %15, ptr %20, align 8, !tbaa !394
  store i64 %16, ptr %22, align 8, !tbaa !439
  store ptr %18, ptr %24, align 8, !tbaa !348
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !637

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !267
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !553

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #21
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !348
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !394
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !638

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !639

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !348
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !394
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !394
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !348
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !640

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !348
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !641
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !642 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !438
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !394
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !643

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !438
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !394
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !439
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !644
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !348
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !348
  %24 = load i64, ptr %9, align 8, !tbaa !394
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !476

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !438
  %28 = load i64, ptr %6, align 8, !tbaa !394
  %29 = load i64, ptr %7, align 8, !tbaa !439
  %30 = load ptr, ptr %8, align 8, !tbaa !348
  %31 = load ptr, ptr %5, align 8, !tbaa !438
  store ptr %31, ptr %0, align 8, !tbaa !438
  %32 = load i64, ptr %14, align 8, !tbaa !394
  store i64 %32, ptr %6, align 8, !tbaa !394
  %33 = load i64, ptr %15, align 8, !tbaa !439
  store i64 %33, ptr %7, align 8, !tbaa !439
  %34 = load ptr, ptr %21, align 8, !tbaa !348
  store ptr %34, ptr %8, align 8, !tbaa !348
  store ptr %27, ptr %5, align 8, !tbaa !438
  store i64 %28, ptr %14, align 8, !tbaa !394
  store i64 %29, ptr %15, align 8, !tbaa !439
  store ptr %30, ptr %21, align 8, !tbaa !348
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !476

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !439
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !348
  %50 = load ptr, ptr %5, align 8, !tbaa !438
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #21
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !645

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !267
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !646
  store ptr %65, ptr %8, align 8, !tbaa !348
  store i64 %3, ptr %7, align 8, !tbaa !439
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !647 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !648

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !394
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !348
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !439
  br i1 %18, label %21, label %39, !prof !649

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !650

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !651

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !348
  %28 = load i64, ptr %12, align 8, !tbaa !394
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !349
  store i16 %34, ptr %32, align 2, !tbaa !349
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !652, !llvm.loop !653

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !654

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !438
  store ptr %42, ptr %5, align 8, !tbaa !438
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !394
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !439
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !655
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !348
  %51 = load i64, ptr %43, align 8, !tbaa !394
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !348
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !656

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !348
  %56 = load i64, ptr %43, align 8, !tbaa !394
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !656

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !348
  %60 = load i64, ptr %43, align 8, !tbaa !394
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !348
  %63 = load i64, ptr %12, align 8, !tbaa !394
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !656

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !438
  %67 = load i64, ptr %12, align 8, !tbaa !394
  %68 = load i64, ptr %19, align 8, !tbaa !439
  %69 = load ptr, ptr %15, align 8, !tbaa !348
  %70 = load ptr, ptr %5, align 8, !tbaa !438
  store ptr %70, ptr %0, align 8, !tbaa !438
  %71 = load i64, ptr %43, align 8, !tbaa !394
  store i64 %71, ptr %12, align 8, !tbaa !394
  %72 = load i64, ptr %44, align 8, !tbaa !439
  store i64 %72, ptr %19, align 8, !tbaa !439
  %73 = load ptr, ptr %50, align 8, !tbaa !348
  store ptr %73, ptr %15, align 8, !tbaa !348
  store ptr %66, ptr %5, align 8, !tbaa !438
  store i64 %67, ptr %43, align 8, !tbaa !394
  store i64 %68, ptr %44, align 8, !tbaa !439
  store ptr %69, ptr %50, align 8, !tbaa !348
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !657

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !267
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !658

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !439
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !348
  %89 = load ptr, ptr %5, align 8, !tbaa !438
  %90 = load ptr, ptr %89, align 8, !tbaa !267
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #21
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !659

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !660

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !660

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !661, !llvm.loop !662

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !663, !llvm.loop !664

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !665
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
  br i1 %123, label %124, label %120, !llvm.loop !666

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
  store i64 %36, ptr %12, align 8, !tbaa !394
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !667 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !394
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !439
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !668

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !349
  store i16 %13, ptr %12, align 2, !tbaa !349
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !394
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !438
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !438
  %24 = load i64, ptr %4, align 8, !tbaa !394
  %25 = load i64, ptr %6, align 8, !tbaa !439
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !348
  %28 = load ptr, ptr %3, align 8, !tbaa !438
  store ptr %28, ptr %0, align 8, !tbaa !438
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !394
  store i64 %30, ptr %4, align 8, !tbaa !394
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !439
  store i64 %32, ptr %6, align 8, !tbaa !439
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !348
  store ptr %34, ptr %26, align 8, !tbaa !348
  store ptr %23, ptr %3, align 8, !tbaa !438
  store i64 %24, ptr %29, align 8, !tbaa !394
  store i64 %25, ptr %31, align 8, !tbaa !439
  store ptr %27, ptr %33, align 8, !tbaa !348
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !439
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !348
  %52 = load ptr, ptr %3, align 8, !tbaa !438
  %53 = load ptr, ptr %52, align 8, !tbaa !267
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !669 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !438
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !394
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !643

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !438
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !394
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !439
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !267
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !670
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !348
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !348
  %20 = load i64, ptr %5, align 8, !tbaa !394
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !476

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !438
  %24 = load i64, ptr %10, align 8, !tbaa !394
  %25 = load i64, ptr %11, align 8, !tbaa !439
  %26 = load ptr, ptr %17, align 8, !tbaa !348
  store ptr %4, ptr %3, align 8, !tbaa !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !439
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !348
  %33 = load ptr, ptr %3, align 8, !tbaa !438
  %34 = load ptr, ptr %33, align 8, !tbaa !267
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #21
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !645

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !267
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !671
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !438
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !439
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !348
  store ptr %53, ptr %0, align 8, !tbaa !438
  store i64 %52, ptr %5, align 8, !tbaa !394
  store i64 %51, ptr %55, align 8, !tbaa !439
  store ptr %50, ptr %57, align 8, !tbaa !348
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !672

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !267
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !673

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #21
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_RKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 !prof !503 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !612
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !386
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %10, !prof !575

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(41) %2)
  br label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !392
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %16 = load ptr, ptr %11, align 8, !tbaa !392
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi ptr [ %1, %9 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(41) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !503 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !386
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !392
  %11 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !612
  br i1 %12, label %15, label %32, !prof !486

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #24
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %144, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !392
  %22 = load i64, ptr %6, align 8, !tbaa !386
  %23 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %30, %24 ], [ 0, %20 ]
  tail call void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %25, ptr noundef nonnull align 8 dereferenceable(41) %3)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %25, i64 1
  %28 = load i64, ptr %6, align 8, !tbaa !386
  %29 = add i64 %28, 1
  store i64 %29, ptr %6, align 8, !tbaa !386
  %30 = add nuw i64 %26, 1
  %31 = icmp eq i64 %30, %2
  br i1 %31, label %144, label %24, !llvm.loop !674

32:                                               ; preds = %4
  %33 = icmp ugt i64 %8, %14
  br i1 %33, label %34, label %69, !prof !486

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %35 = load ptr, ptr %0, align 8, !tbaa !614
  store ptr %35, ptr %5, align 8, !tbaa !614
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %36, align 8, !tbaa !386
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %8, ptr %37, align 8, !tbaa !612
  %38 = mul i64 %8, 48
  %39 = load ptr, ptr %35, align 8, !tbaa !267
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %38)
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !392
  %44 = load i64, ptr %36, align 8, !tbaa !386
  %45 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %42, i64 %44
  %46 = load ptr, ptr %9, align 8, !tbaa !392
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %45, ptr noundef %46, ptr noundef %1)
          to label %47 unwind label %67

47:                                               ; preds = %34
  %48 = load ptr, ptr %43, align 8, !tbaa !392
  %49 = load i64, ptr %36, align 8, !tbaa !386
  %50 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %48, i64 %49
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %51 unwind label %67

51:                                               ; preds = %47
  %52 = load ptr, ptr %43, align 8, !tbaa !392
  %53 = load i64, ptr %36, align 8, !tbaa !386
  %54 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %52, i64 %53
  %55 = load ptr, ptr %9, align 8, !tbaa !392
  %56 = load i64, ptr %6, align 8, !tbaa !386
  %57 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %1, ptr noundef %57)
          to label %58 unwind label %67

58:                                               ; preds = %51
  %59 = load ptr, ptr %0, align 8, !tbaa !614
  %60 = load i64, ptr %6, align 8, !tbaa !386
  %61 = load i64, ptr %13, align 8, !tbaa !612
  %62 = load ptr, ptr %9, align 8, !tbaa !392
  %63 = load ptr, ptr %5, align 8, !tbaa !614
  store ptr %63, ptr %0, align 8, !tbaa !614
  %64 = load i64, ptr %36, align 8, !tbaa !386
  store i64 %64, ptr %6, align 8, !tbaa !386
  %65 = load i64, ptr %37, align 8, !tbaa !612
  store i64 %65, ptr %13, align 8, !tbaa !612
  %66 = load ptr, ptr %43, align 8, !tbaa !392
  store ptr %66, ptr %9, align 8, !tbaa !392
  store ptr %59, ptr %5, align 8, !tbaa !614
  store i64 %60, ptr %36, align 8, !tbaa !386
  store i64 %61, ptr %37, align 8, !tbaa !612
  store ptr %62, ptr %43, align 8, !tbaa !392
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %144

67:                                               ; preds = %51, %47, %34
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %68

69:                                               ; preds = %32
  %70 = ptrtoint ptr %11 to i64
  %71 = ptrtoint ptr %1 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 48
  %74 = icmp ugt i64 %73, %2
  br i1 %74, label %101, label %75, !prof !506

75:                                               ; preds = %69
  %76 = sub i64 %2, %73
  %77 = icmp eq i64 %73, %2
  br i1 %77, label %78, label %80, !prof !618

78:                                               ; preds = %80, %75
  %79 = icmp eq ptr %11, %1
  br i1 %79, label %84, label %89, !prof !675

80:                                               ; preds = %75, %80
  %81 = phi i64 [ %82, %80 ], [ 0, %75 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %3)
  %82 = add nuw i64 %81, 1
  %83 = icmp eq i64 %82, %76
  br i1 %83, label %78, label %80, !prof !618, !llvm.loop !676

84:                                               ; preds = %89, %78
  %85 = icmp eq ptr %11, %1
  br i1 %85, label %144, label %86, !prof !675

86:                                               ; preds = %84
  %87 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %3, i64 0, i32 1
  %88 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %3, i64 0, i32 2
  br label %93

89:                                               ; preds = %78, %89
  %90 = phi ptr [ %91, %89 ], [ %1, %78 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %90)
  %91 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %90, i64 1
  %92 = icmp eq ptr %91, %11
  br i1 %92, label %84, label %89, !prof !677, !llvm.loop !678

93:                                               ; preds = %86, %93
  %94 = phi ptr [ %1, %86 ], [ %99, %93 ]
  %95 = load ptr, ptr %87, align 8, !tbaa !624
  %96 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %94, i64 0, i32 1
  store ptr %95, ptr %96, align 8, !tbaa !624
  %97 = load double, ptr %88, align 8, !tbaa !630
  %98 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %94, i64 0, i32 2
  store double %97, ptr %98, align 8, !tbaa !630
  %99 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %94, i64 1
  %100 = icmp eq ptr %99, %11
  br i1 %100, label %144, label %93, !prof !677, !llvm.loop !679

101:                                              ; preds = %69
  %102 = sub i64 0, %2
  %103 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %11, i64 %102
  %104 = mul i64 %2, -48
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %110, label %106, !prof !680

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %108, %106 ], [ %103, %101 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %107)
  %108 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %107, i64 1
  %109 = icmp eq ptr %108, %11
  br i1 %109, label %110, label %106, !prof !681, !llvm.loop !682

110:                                              ; preds = %106, %101
  %111 = ptrtoint ptr %103 to i64
  %112 = sub i64 %111, %71
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %130, !prof !681

114:                                              ; preds = %110
  %115 = udiv exact i64 %112, 48
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi i64 [ %128, %116 ], [ %115, %114 ]
  %118 = phi ptr [ %121, %116 ], [ %11, %114 ]
  %119 = phi ptr [ %120, %116 ], [ %103, %114 ]
  %120 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %119, i64 -1
  %121 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %118, i64 -1
  %122 = getelementptr %"class.xalanc_1_10::XToken", ptr %119, i64 -1, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !624
  %124 = getelementptr %"class.xalanc_1_10::XToken", ptr %118, i64 -1, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !624
  %125 = getelementptr %"class.xalanc_1_10::XToken", ptr %119, i64 -1, i32 2
  %126 = load double, ptr %125, align 8, !tbaa !630
  %127 = getelementptr %"class.xalanc_1_10::XToken", ptr %118, i64 -1, i32 2
  store double %126, ptr %127, align 8, !tbaa !630
  %128 = add nsw i64 %117, -1
  %129 = icmp sgt i64 %117, 1
  br i1 %129, label %116, label %130, !prof !683, !llvm.loop !633

130:                                              ; preds = %116, %110
  %131 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 %2
  %132 = icmp eq i64 %2, 0
  br i1 %132, label %144, label %133, !prof !680

133:                                              ; preds = %130
  %134 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %3, i64 0, i32 1
  %135 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %3, i64 0, i32 2
  br label %136

136:                                              ; preds = %133, %136
  %137 = phi ptr [ %1, %133 ], [ %142, %136 ]
  %138 = load ptr, ptr %134, align 8, !tbaa !624
  %139 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %137, i64 0, i32 1
  store ptr %138, ptr %139, align 8, !tbaa !624
  %140 = load double, ptr %135, align 8, !tbaa !630
  %141 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %137, i64 0, i32 2
  store double %140, ptr %141, align 8, !tbaa !630
  %142 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %137, i64 1
  %143 = icmp eq ptr %142, %131
  br i1 %143, label %144, label %136, !prof !681, !llvm.loop !679

144:                                              ; preds = %93, %136, %24, %84, %130, %18, %58
  ret void
}

declare noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !684 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !581

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !313, !noalias !685
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !308, !noalias !688
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !557

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !294, !noalias !688
  %14 = load ptr, ptr %13, align 8, !tbaa !267, !noalias !688
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !688
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !308, !noalias !688
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !313, !noalias !688
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !316, !noalias !688
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !308, !noalias !688
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !691

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !313, !noalias !692
  %27 = load ptr, ptr %0, align 8, !tbaa !294
  %28 = load ptr, ptr %27, align 8, !tbaa !267
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !323, !llvm.loop !695

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !696
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !270

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !313
  %40 = load ptr, ptr %0, align 8, !tbaa !294
  %41 = load ptr, ptr %40, align 8, !tbaa !267
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !308
  %46 = load ptr, ptr %0, align 8, !tbaa !294
  %47 = load ptr, ptr %46, align 8, !tbaa !267
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !697

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
  tail call void @__clang_call_terminate(ptr %59) #21
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !prof !698 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.7", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !293
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !699

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %9 = load ptr, ptr %7, align 8, !tbaa !308, !noalias !703
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20, !prof !706

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !294, !noalias !703
  %14 = load ptr, ptr %13, align 8, !tbaa !267, !noalias !703
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !703
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !703
  store ptr %17, ptr %7, align 8, !tbaa !308, !noalias !703
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !313, !noalias !703
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !316, !noalias !703
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !308, !noalias !703
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !313, !noalias !703
  store ptr %23, ptr %2, align 8, !tbaa !423, !alias.scope !700
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIS2_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISE_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  %24 = load i64, ptr %3, align 8, !tbaa !293
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !707, !llvm.loop !708

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !499 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !709
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !691

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !306
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !710

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !711, !llvm.loop !712

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !397
  %18 = load ptr, ptr %0, align 8, !tbaa !295
  %19 = load ptr, ptr %18, align 8, !tbaa !267
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !323

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #21
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIS2_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISE_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !713 {
  %3 = load ptr, ptr %1, align 8, !tbaa !423
  %4 = load ptr, ptr %3, align 8, !tbaa !322
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !308, !noalias !714
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17, !prof !706

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !294, !noalias !714
  %11 = load ptr, ptr %10, align 8, !tbaa !267, !noalias !714
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !714
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !714
  store ptr %14, ptr %5, align 8, !tbaa !308, !noalias !714
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !313, !noalias !714
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !316, !noalias !714
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !308, !noalias !714
  %19 = load ptr, ptr %1, align 8, !tbaa !423
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %33, label %21, !prof !706

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !313
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !316
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %25, i64 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !313
  %27 = load ptr, ptr %22, align 8, !tbaa !313
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %27, i64 0, i32 1
  store ptr %25, ptr %28, align 8, !tbaa !316
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !316
  store ptr %30, ptr %24, align 8, !tbaa !316
  store ptr %18, ptr %22, align 8, !tbaa !313
  %31 = load ptr, ptr %29, align 8, !tbaa !316
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %31, i64 0, i32 2
  store ptr %19, ptr %32, align 8, !tbaa !313
  store ptr %19, ptr %29, align 8, !tbaa !316
  br label %33

33:                                               ; preds = %17, %21
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry", ptr %19, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !717
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !293
  %37 = add i64 %36, -1
  store i64 %37, ptr %35, align 8, !tbaa !293
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !718 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !719
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !720

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !721
  %8 = load ptr, ptr %0, align 8, !tbaa !722
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !323

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #6 comdat align 2 !prof !723 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !293
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7, !prof !724

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !306
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !394
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14, !prof !725
  %16 = load i16, ptr %15, align 2, !tbaa !349
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18, !prof !726

18:                                               ; preds = %7, %18
  %19 = phi i16 [ %26, %18 ], [ %16, %7 ]
  %20 = phi i64 [ %24, %18 ], [ 0, %7 ]
  %21 = phi ptr [ %25, %18 ], [ %15, %7 ]
  %22 = mul i64 %20, 5
  %23 = zext i16 %19 to i64
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i16, ptr %21, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !349
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !prof !727, !llvm.loop !728

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !397
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !399
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39, !prof !312

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !721
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !423
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !717, !range !440, !noundef !317
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53, !prof !729

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !322
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53, !prof !729

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !423
  store ptr %52, ptr %0, align 8, !tbaa !423
  br i1 %42, label %59, label %74, !prof !725

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !721
  %56 = load i64, ptr %36, align 8, !tbaa !399
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !prof !725, !llvm.loop !730

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !308, !noalias !734
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72, !prof !737

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !294, !noalias !734
  %66 = load ptr, ptr %65, align 8, !tbaa !267, !noalias !734
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !734
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !prof !738, !noalias !734
  store ptr %69, ptr %60, align 8, !tbaa !308, !noalias !734
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !313, !noalias !734
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !316, !noalias !734
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !308, !noalias !734
  store ptr %73, ptr %0, align 8, !tbaa !423, !alias.scope !731
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !713 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !306
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49, !prof !737

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !397
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !290
  store ptr %18, ptr %5, align 8, !tbaa !722
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35, !prof !618

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !719
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25, !prof !618

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !721
  %27 = load ptr, ptr %5, align 8, !tbaa !722
  %28 = load ptr, ptr %27, align 8, !tbaa !267
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #21
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !719
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !721
  %41 = load ptr, ptr %5, align 8, !tbaa !722
  %42 = load ptr, ptr %41, align 8, !tbaa !267
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #21
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !291
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !293
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !306
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60, !prof !706

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !306
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !394
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66, !prof !706
  %68 = load i16, ptr %67, align 2, !tbaa !349
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %82, label %70, !prof !739

70:                                               ; preds = %60, %70
  %71 = phi i16 [ %78, %70 ], [ %68, %60 ]
  %72 = phi i64 [ %76, %70 ], [ 0, %60 ]
  %73 = phi ptr [ %77, %70 ], [ %67, %60 ]
  %74 = mul i64 %72, 5
  %75 = zext i16 %71 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i16, ptr %73, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !349
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !prof !740, !llvm.loop !728

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95, !prof !737

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !290
  %90 = load ptr, ptr %89, align 8, !tbaa !267
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 48), !prof !738
  store ptr %93, ptr %6, align 8, !tbaa !322
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !717
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !308, !noalias !741
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107, !prof !706

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !294, !noalias !741
  %101 = load ptr, ptr %100, align 8, !tbaa !267, !noalias !741
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !741
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !741
  store ptr %104, ptr %96, align 8, !tbaa !308, !noalias !741
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !313, !noalias !741
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !316, !noalias !741
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !308, !noalias !741
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !316, !noalias !744
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !717
  %112 = load ptr, ptr %110, align 8, !tbaa !322
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !290
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  br i1 %115, label %120, label %116, !prof !707

116:                                              ; preds = %107
  %117 = load ptr, ptr %110, align 8, !tbaa !322
  %118 = getelementptr inbounds %"struct.std::pair.5", ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %3, align 8, !tbaa !414
  store ptr %119, ptr %118, align 8, !tbaa !414
  br label %120

120:                                              ; preds = %107, %116
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !308, !noalias !747
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133, !prof !706

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !294, !noalias !747
  %127 = load ptr, ptr %126, align 8, !tbaa !267, !noalias !747
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !747
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !747
  store ptr %130, ptr %122, align 8, !tbaa !308, !noalias !747
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !313, !noalias !747
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !316, !noalias !747
  br label %133

133:                                              ; preds = %120, %125
  %134 = load ptr, ptr %122, align 8, !tbaa !308, !noalias !747
  %135 = load ptr, ptr %96, align 8, !tbaa !308, !noalias !750
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145, !prof !706

137:                                              ; preds = %133
  %138 = load ptr, ptr %85, align 8, !tbaa !294, !noalias !750
  %139 = load ptr, ptr %138, align 8, !tbaa !267, !noalias !750
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8, !noalias !750
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef 32), !noalias !750
  store ptr %142, ptr %96, align 8, !tbaa !308, !noalias !750
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !313, !noalias !750
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %142, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !316, !noalias !750
  br label %145

145:                                              ; preds = %133, %137
  %146 = load ptr, ptr %96, align 8, !tbaa !308, !noalias !750
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !316, !noalias !753
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %162, label %150, !prof !706

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %148, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !313
  %153 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !316
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %152, ptr %155, align 8, !tbaa !313
  %156 = load ptr, ptr %151, align 8, !tbaa !313
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %156, i64 0, i32 1
  store ptr %154, ptr %157, align 8, !tbaa !316
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %134, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !316
  store ptr %159, ptr %153, align 8, !tbaa !316
  store ptr %134, ptr %151, align 8, !tbaa !313
  %160 = load ptr, ptr %158, align 8, !tbaa !316
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %148, ptr %161, align 8, !tbaa !313
  store ptr %148, ptr %158, align 8, !tbaa !316
  br label %162

162:                                              ; preds = %145, %150
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !397
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %164, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %166 = load ptr, ptr %122, align 8, !tbaa !308, !noalias !756
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %176, !prof !706

168:                                              ; preds = %162
  %169 = load ptr, ptr %121, align 8, !tbaa !294, !noalias !756
  %170 = load ptr, ptr %169, align 8, !tbaa !267, !noalias !756
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8, !noalias !756
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169, i64 noundef 32), !noalias !756
  store ptr %173, ptr %122, align 8, !tbaa !308, !noalias !756
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !313, !noalias !756
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %173, i64 0, i32 1
  store ptr %173, ptr %175, align 8, !tbaa !316, !noalias !756
  br label %176

176:                                              ; preds = %162, %168
  %177 = load ptr, ptr %122, align 8, !tbaa !308, !noalias !756
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !316, !noalias !759
  store ptr %179, ptr %7, align 8, !tbaa !423, !alias.scope !759
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %180 = load i64, ptr %52, align 8, !tbaa !293
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !293
  %182 = load ptr, ptr %122, align 8, !tbaa !308, !noalias !762
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %192, !prof !706

184:                                              ; preds = %176
  %185 = load ptr, ptr %121, align 8, !tbaa !294, !noalias !762
  %186 = load ptr, ptr %185, align 8, !tbaa !267, !noalias !762
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !noalias !762
  %189 = call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %185, i64 noundef 32), !noalias !762
  store ptr %189, ptr %122, align 8, !tbaa !308, !noalias !762
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %189, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !313, !noalias !762
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %189, i64 0, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !316, !noalias !762
  br label %192

192:                                              ; preds = %176, %184
  %193 = load ptr, ptr %122, align 8, !tbaa !308, !noalias !762
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !316, !noalias !765
  store ptr %195, ptr %0, align 8, !tbaa !423
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !543 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !306
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !397
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !709
  br i1 %12, label %15, label %33, !prof !618

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !618

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20, !prof !710

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !397
  %22 = load i64, ptr %6, align 8, !tbaa !306
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !295
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !306
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !306
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !prof !711, !llvm.loop !768

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %36 = load ptr, ptr %0, align 8, !tbaa !295
  store ptr %36, ptr %5, align 8, !tbaa !295
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !306
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !709
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !267
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !397
  %45 = load i64, ptr %37, align 8, !tbaa !306
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !397
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !397
  %50 = load i64, ptr %37, align 8, !tbaa !306
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !397
  %54 = load i64, ptr %37, align 8, !tbaa !306
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !397
  %57 = load i64, ptr %6, align 8, !tbaa !306
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !295
  %61 = load i64, ptr %6, align 8, !tbaa !306
  %62 = load i64, ptr %13, align 8, !tbaa !709
  %63 = load ptr, ptr %9, align 8, !tbaa !397
  %64 = load ptr, ptr %5, align 8, !tbaa !295
  store ptr %64, ptr %0, align 8, !tbaa !295
  %65 = load i64, ptr %37, align 8, !tbaa !306
  store i64 %65, ptr %6, align 8, !tbaa !306
  %66 = load i64, ptr %38, align 8, !tbaa !709
  store i64 %66, ptr %13, align 8, !tbaa !709
  %67 = load ptr, ptr %44, align 8, !tbaa !397
  store ptr %67, ptr %9, align 8, !tbaa !397
  store ptr %60, ptr %5, align 8, !tbaa !295
  store i64 %61, ptr %37, align 8, !tbaa !306
  store i64 %62, ptr %38, align 8, !tbaa !709
  store ptr %63, ptr %44, align 8, !tbaa !397
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !769

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !770

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !771

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !772

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !773

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !771

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !293
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !290
  store ptr %11, ptr %3, align 8, !tbaa !722
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !719
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !721
  %20 = load ptr, ptr %3, align 8, !tbaa !722
  %21 = load ptr, ptr %20, align 8, !tbaa !267
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !308, !noalias !774
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !294, !noalias !774
  %34 = load ptr, ptr %33, align 8, !tbaa !267, !noalias !774
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !774
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !308, !noalias !774
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !313, !noalias !774
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !316, !noalias !774
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !414, !noalias !317
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !313, !noalias !317
  store ptr %47, ptr %4, align 8, !tbaa !423
  %48 = load ptr, ptr %29, align 8, !tbaa !308, !noalias !777
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !294, !noalias !777
  %52 = load ptr, ptr %51, align 8, !tbaa !267, !noalias !777
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !777
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !308, !noalias !777
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !313, !noalias !777
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !316, !noalias !777
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !308, !noalias !777
  %61 = load ptr, ptr %4, align 8, !tbaa !423
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !322
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !394
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !349
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %63, %73
  %74 = phi i16 [ %81, %73 ], [ %71, %63 ]
  %75 = phi i64 [ %79, %73 ], [ 0, %63 ]
  %76 = phi ptr [ %80, %73 ], [ %70, %63 ]
  %77 = mul i64 %75, 5
  %78 = zext i16 %74 to i64
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds i16, ptr %76, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !349
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !728

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !397
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !780

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !719
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !721
  %95 = load ptr, ptr %3, align 8, !tbaa !722
  %96 = load ptr, ptr %95, align 8, !tbaa !267
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #21
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %127

103:                                              ; preds = %32
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %125

105:                                              ; preds = %50
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %125

107:                                              ; preds = %83
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %125

109:                                              ; preds = %59
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !295
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !306
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !709
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !397
  %118 = load ptr, ptr %2, align 8, !tbaa !295
  store ptr %118, ptr %110, align 8, !tbaa !295
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !306
  store i64 %120, ptr %112, align 8, !tbaa !306
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !709
  store i64 %122, ptr %114, align 8, !tbaa !709
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !397
  store ptr %124, ptr %116, align 8, !tbaa !397
  store ptr %111, ptr %2, align 8, !tbaa !295
  store i64 %113, ptr %119, align 8, !tbaa !306
  store i64 %115, ptr %121, align 8, !tbaa !709
  store ptr %117, ptr %123, align 8, !tbaa !397
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !713 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !737

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !294
  %7 = load ptr, ptr %6, align 8, !tbaa !267
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !738
  store ptr %10, ptr %2, align 8, !tbaa !308
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !313
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !316
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !308
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !313
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !706

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !294
  %20 = load ptr, ptr %19, align 8, !tbaa !267
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !308
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !313
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !316
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !308
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 !prof !543 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !308, !noalias !781
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !312

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !294, !noalias !781
  %8 = load ptr, ptr %7, align 8, !tbaa !267, !noalias !781
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !781
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !781
  store ptr %11, ptr %3, align 8, !tbaa !308, !noalias !781
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !313, !noalias !781
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !316, !noalias !781
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !308, !noalias !781
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !696
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !618

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !313
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !294
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !738
  store ptr %27, ptr %16, align 8, !tbaa !696
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !784
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !316
  store ptr %33, ptr %31, align 8, !tbaa !414
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !414
  %35 = load ptr, ptr %32, align 8, !tbaa !316
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, const xalanc_1_10::XalanDOMString *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !313
  store ptr %29, ptr %32, align 8, !tbaa !316
  store ptr %30, ptr %16, align 8, !tbaa !696
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !306
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !397
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !709
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !397
  %28 = load i64, ptr %12, align 8, !tbaa !306
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !295
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !306
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !306
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !785

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !295
  store ptr %42, ptr %5, align 8, !tbaa !295
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !306
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !709
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !397
  %51 = load i64, ptr %43, align 8, !tbaa !306
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !397
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !397
  %56 = load i64, ptr %43, align 8, !tbaa !306
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !397
  %60 = load i64, ptr %43, align 8, !tbaa !306
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !397
  %63 = load i64, ptr %12, align 8, !tbaa !306
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !295
  %67 = load i64, ptr %12, align 8, !tbaa !306
  %68 = load i64, ptr %19, align 8, !tbaa !709
  %69 = load ptr, ptr %15, align 8, !tbaa !397
  %70 = load ptr, ptr %5, align 8, !tbaa !295
  store ptr %70, ptr %0, align 8, !tbaa !295
  %71 = load i64, ptr %43, align 8, !tbaa !306
  store i64 %71, ptr %12, align 8, !tbaa !306
  %72 = load i64, ptr %44, align 8, !tbaa !709
  store i64 %72, ptr %19, align 8, !tbaa !709
  %73 = load ptr, ptr %50, align 8, !tbaa !397
  store ptr %73, ptr %15, align 8, !tbaa !397
  store ptr %66, ptr %5, align 8, !tbaa !295
  store i64 %67, ptr %43, align 8, !tbaa !306
  store i64 %68, ptr %44, align 8, !tbaa !709
  store ptr %69, ptr %50, align 8, !tbaa !397
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !786

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !787

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !788

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !789

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
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !773

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !788

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !306
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !709
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !397
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !295
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !306
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !306
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %22 = load ptr, ptr %0, align 8, !tbaa !295
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !295
  %25 = load i64, ptr %4, align 8, !tbaa !306
  %26 = load i64, ptr %6, align 8, !tbaa !709
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !397
  %29 = load ptr, ptr %3, align 8, !tbaa !295
  store ptr %29, ptr %0, align 8, !tbaa !295
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !306
  store i64 %31, ptr %4, align 8, !tbaa !306
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !709
  store i64 %33, ptr %6, align 8, !tbaa !709
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !397
  store ptr %35, ptr %27, align 8, !tbaa !397
  store ptr %24, ptr %3, align 8, !tbaa !295
  store i64 %25, ptr %30, align 8, !tbaa !306
  store i64 %26, ptr %32, align 8, !tbaa !709
  store ptr %28, ptr %34, align 8, !tbaa !397
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !543 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !295
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !295
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !306
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !709
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !397
  %12 = load ptr, ptr %3, align 8, !tbaa !295
  store ptr %12, ptr %0, align 8, !tbaa !295
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !306
  store i64 %14, ptr %6, align 8, !tbaa !306
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !709
  store i64 %16, ptr %8, align 8, !tbaa !709
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !397
  store ptr %18, ptr %10, align 8, !tbaa !397
  store ptr %5, ptr %3, align 8, !tbaa !295
  store i64 %7, ptr %13, align 8, !tbaa !306
  store i64 %9, ptr %15, align 8, !tbaa !709
  store ptr %11, ptr %17, align 8, !tbaa !397
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !543 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !295
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !306
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !618

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !295
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !306
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !709
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !397
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !397
  %24 = load i64, ptr %9, align 8, !tbaa !306
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !295
  %28 = load i64, ptr %6, align 8, !tbaa !306
  %29 = load i64, ptr %7, align 8, !tbaa !709
  %30 = load ptr, ptr %8, align 8, !tbaa !397
  %31 = load ptr, ptr %5, align 8, !tbaa !295
  store ptr %31, ptr %0, align 8, !tbaa !295
  %32 = load i64, ptr %14, align 8, !tbaa !306
  store i64 %32, ptr %6, align 8, !tbaa !306
  %33 = load i64, ptr %15, align 8, !tbaa !709
  store i64 %33, ptr %7, align 8, !tbaa !709
  %34 = load ptr, ptr %21, align 8, !tbaa !397
  store ptr %34, ptr %8, align 8, !tbaa !397
  store ptr %27, ptr %5, align 8, !tbaa !295
  store i64 %28, ptr %14, align 8, !tbaa !306
  store i64 %29, ptr %15, align 8, !tbaa !709
  store ptr %30, ptr %21, align 8, !tbaa !397
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !312

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !267
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !738
  store ptr %44, ptr %8, align 8, !tbaa !397
  store i64 %3, ptr %7, align 8, !tbaa !709
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !790 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  store ptr %2, ptr %0, align 8, !tbaa !722
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !399
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !791

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !722
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !399
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !719
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !721
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !721
  %24 = load i64, ptr %9, align 8, !tbaa !399
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !722
  %28 = load i64, ptr %6, align 8, !tbaa !399
  %29 = load i64, ptr %7, align 8, !tbaa !719
  %30 = load ptr, ptr %8, align 8, !tbaa !721
  %31 = load ptr, ptr %5, align 8, !tbaa !722
  store ptr %31, ptr %0, align 8, !tbaa !722
  %32 = load i64, ptr %14, align 8, !tbaa !399
  store i64 %32, ptr %6, align 8, !tbaa !399
  %33 = load i64, ptr %15, align 8, !tbaa !719
  store i64 %33, ptr %7, align 8, !tbaa !719
  %34 = load ptr, ptr %21, align 8, !tbaa !721
  store ptr %34, ptr %8, align 8, !tbaa !721
  store ptr %27, ptr %5, align 8, !tbaa !722
  store i64 %28, ptr %14, align 8, !tbaa !399
  store i64 %29, ptr %15, align 8, !tbaa !719
  store ptr %30, ptr %21, align 8, !tbaa !721
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !719
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !721
  %50 = load ptr, ptr %5, align 8, !tbaa !722
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #21
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !792

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !267
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !738
  store ptr %65, ptr %8, align 8, !tbaa !721
  store i64 %3, ptr %7, align 8, !tbaa !719
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !399
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !721
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !719
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !721
  %28 = load i64, ptr %12, align 8, !tbaa !399
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !423
  store ptr %34, ptr %32, align 8, !tbaa !423
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !793

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !722
  store ptr %42, ptr %5, align 8, !tbaa !722
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !399
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !719
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !721
  %51 = load i64, ptr %43, align 8, !tbaa !399
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !721
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !721
  %56 = load i64, ptr %43, align 8, !tbaa !399
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !721
  %60 = load i64, ptr %43, align 8, !tbaa !399
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !721
  %63 = load i64, ptr %12, align 8, !tbaa !399
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !722
  %67 = load i64, ptr %12, align 8, !tbaa !399
  %68 = load i64, ptr %19, align 8, !tbaa !719
  %69 = load ptr, ptr %15, align 8, !tbaa !721
  %70 = load ptr, ptr %5, align 8, !tbaa !722
  store ptr %70, ptr %0, align 8, !tbaa !722
  %71 = load i64, ptr %43, align 8, !tbaa !399
  store i64 %71, ptr %12, align 8, !tbaa !399
  %72 = load i64, ptr %44, align 8, !tbaa !719
  store i64 %72, ptr %19, align 8, !tbaa !719
  %73 = load ptr, ptr %50, align 8, !tbaa !721
  store ptr %73, ptr %15, align 8, !tbaa !721
  store ptr %66, ptr %5, align 8, !tbaa !722
  store i64 %67, ptr %43, align 8, !tbaa !399
  store i64 %68, ptr %44, align 8, !tbaa !719
  store ptr %69, ptr %50, align 8, !tbaa !721
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !267
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !719
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !721
  %89 = load ptr, ptr %5, align 8, !tbaa !722
  %90 = load ptr, ptr %89, align 8, !tbaa !267
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #21
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !794

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !795

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !423
  store ptr %122, ptr %120, align 8, !tbaa !423
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !796

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !797

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
  %148 = load ptr, ptr %146, align 8, !tbaa !423
  store ptr %148, ptr %147, align 8, !tbaa !423
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !798

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !423
  store ptr %155, ptr %153, align 8, !tbaa !423
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !796

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !399
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !481 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !399
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !719
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !799

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !721
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !423
  store ptr %13, ptr %12, align 8, !tbaa !423
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !399
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !618
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !722
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !618

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !722
  %24 = load i64, ptr %4, align 8, !tbaa !399
  %25 = load i64, ptr %6, align 8, !tbaa !719
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !721
  %28 = load ptr, ptr %3, align 8, !tbaa !722
  store ptr %28, ptr %0, align 8, !tbaa !722
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !399
  store i64 %30, ptr %4, align 8, !tbaa !399
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !719
  store i64 %32, ptr %6, align 8, !tbaa !719
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !721
  store ptr %34, ptr %26, align 8, !tbaa !721
  store ptr %23, ptr %3, align 8, !tbaa !722
  store i64 %24, ptr %29, align 8, !tbaa !399
  store i64 %25, ptr %31, align 8, !tbaa !719
  store ptr %27, ptr %33, align 8, !tbaa !721
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !618

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !719
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !721
  %52 = load ptr, ptr %3, align 8, !tbaa !722
  %53 = load ptr, ptr %52, align 8, !tbaa !267
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !722
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !722
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !399
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !719
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !721
  %12 = load ptr, ptr %3, align 8, !tbaa !722
  store ptr %12, ptr %0, align 8, !tbaa !722
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !399
  store i64 %14, ptr %6, align 8, !tbaa !399
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !719
  store i64 %16, ptr %8, align 8, !tbaa !719
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !721
  store ptr %18, ptr %10, align 8, !tbaa !721
  store ptr %5, ptr %3, align 8, !tbaa !722
  store i64 %7, ptr %13, align 8, !tbaa !399
  store i64 %9, ptr %15, align 8, !tbaa !719
  store ptr %11, ptr %17, align 8, !tbaa !721
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !267
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.8", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !719
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !399
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !722
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !722
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !399
  %16 = load i64, ptr %6, align 8, !tbaa !719
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !721
  %19 = load ptr, ptr %3, align 8, !tbaa !722
  store ptr %19, ptr %0, align 8, !tbaa !722
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !399
  store i64 %21, ptr %14, align 8, !tbaa !399
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !719
  store i64 %23, ptr %6, align 8, !tbaa !719
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !721
  store ptr %25, ptr %17, align 8, !tbaa !721
  store ptr %13, ptr %3, align 8, !tbaa !722
  store i64 %15, ptr %20, align 8, !tbaa !399
  store i64 %16, ptr %22, align 8, !tbaa !719
  store ptr %18, ptr %24, align 8, !tbaa !721
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !267
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #21
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !721
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !399
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !721
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !399
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !399
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !721
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.8", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !721
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !423
  store ptr %68, ptr %66, align 8, !tbaa !423
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !796

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %3, ptr %0, align 8, !tbaa !295
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  store ptr %3, ptr %5, align 8, !tbaa !295
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !295
  %14 = load i64, ptr %6, align 8, !tbaa !306
  %15 = load i64, ptr %12, align 8, !tbaa !709
  %16 = load ptr, ptr %11, align 8, !tbaa !397
  %17 = load ptr, ptr %5, align 8, !tbaa !295
  store ptr %17, ptr %0, align 8, !tbaa !295
  %18 = load i64, ptr %7, align 8, !tbaa !306
  store i64 %18, ptr %6, align 8, !tbaa !306
  %19 = load i64, ptr %10, align 8, !tbaa !709
  store i64 %19, ptr %12, align 8, !tbaa !709
  %20 = load ptr, ptr %9, align 8, !tbaa !397
  store ptr %20, ptr %11, align 8, !tbaa !397
  store ptr %13, ptr %5, align 8, !tbaa !295
  store i64 %14, ptr %7, align 8, !tbaa !306
  store i64 %15, ptr %10, align 8, !tbaa !709
  store ptr %16, ptr %9, align 8, !tbaa !397
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !800 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !444
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = getelementptr inbounds i32, ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !516
  br i1 %12, label %15, label %31, !prof !801

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !538

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i64, ptr %6, align 8, !tbaa !444
  %20 = icmp eq i64 %2, 0
  br i1 %20, label %141, label %21, !prof !353

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !446
  %23 = getelementptr inbounds i32, ptr %22, i64 %19
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %21 ]
  %26 = phi i64 [ %29, %24 ], [ 0, %21 ]
  %27 = load i32, ptr %3, align 4, !tbaa !447
  store i32 %27, ptr %25, align 4, !tbaa !447
  %28 = getelementptr inbounds i32, ptr %25, i64 1
  %29 = add nuw i64 %26, 1
  %30 = icmp eq i64 %29, %2
  br i1 %30, label %139, label %24, !prof !802, !llvm.loop !803

31:                                               ; preds = %4
  %32 = icmp ugt i64 %8, %14
  br i1 %32, label %33, label %89, !prof !804

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %34 = load ptr, ptr %0, align 8, !tbaa !418
  store ptr %34, ptr %5, align 8, !tbaa !418
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %35, align 8, !tbaa !444
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %8, ptr %36, align 8, !tbaa !516
  %37 = shl i64 %8, 2
  %38 = load ptr, ptr %34, align 8, !tbaa !267
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37)
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !446
  %43 = load i64, ptr %35, align 8, !tbaa !444
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = load ptr, ptr %9, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %44, ptr noundef %45, ptr noundef %1)
          to label %46 unwind label %75

46:                                               ; preds = %33
  %47 = load ptr, ptr %42, align 8, !tbaa !446
  %48 = load i64, ptr %35, align 8, !tbaa !444
  %49 = getelementptr inbounds i32, ptr %47, i64 %48
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %50 unwind label %75

50:                                               ; preds = %46
  %51 = load ptr, ptr %42, align 8, !tbaa !446
  %52 = load i64, ptr %35, align 8, !tbaa !444
  %53 = getelementptr inbounds i32, ptr %51, i64 %52
  %54 = load ptr, ptr %9, align 8, !tbaa !446
  %55 = load i64, ptr %6, align 8, !tbaa !444
  %56 = getelementptr inbounds i32, ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %53, ptr noundef %1, ptr noundef %56)
          to label %57 unwind label %75

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 8, !tbaa !418
  %59 = load i64, ptr %6, align 8, !tbaa !444
  %60 = load i64, ptr %13, align 8, !tbaa !516
  %61 = load ptr, ptr %9, align 8, !tbaa !446
  %62 = load ptr, ptr %5, align 8, !tbaa !418
  store ptr %62, ptr %0, align 8, !tbaa !418
  %63 = load i64, ptr %35, align 8, !tbaa !444
  store i64 %63, ptr %6, align 8, !tbaa !444
  %64 = load i64, ptr %36, align 8, !tbaa !516
  store i64 %64, ptr %13, align 8, !tbaa !516
  %65 = load ptr, ptr %42, align 8, !tbaa !446
  store ptr %65, ptr %9, align 8, !tbaa !446
  store ptr %58, ptr %5, align 8, !tbaa !418
  store i64 %59, ptr %35, align 8, !tbaa !444
  store i64 %60, ptr %36, align 8, !tbaa !516
  store ptr %61, ptr %42, align 8, !tbaa !446
  %66 = icmp eq i64 %60, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %57
  %68 = load ptr, ptr %58, align 8, !tbaa !267
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %61)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #21
  unreachable

74:                                               ; preds = %57, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %141

75:                                               ; preds = %50, %46, %33
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load i64, ptr %36, align 8, !tbaa !516
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %42, align 8, !tbaa !446
  %81 = load ptr, ptr %5, align 8, !tbaa !418
  %82 = load ptr, ptr %81, align 8, !tbaa !267
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80)
          to label %88 unwind label %85

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #21
  unreachable

88:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %76

89:                                               ; preds = %31
  %90 = ptrtoint ptr %11 to i64
  %91 = ptrtoint ptr %1 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 2
  %94 = icmp ugt i64 %93, %2
  br i1 %94, label %115, label %95, !prof !805

95:                                               ; preds = %89
  %96 = sub i64 %2, %93
  %97 = icmp eq i64 %93, %2
  br i1 %97, label %98, label %100

98:                                               ; preds = %100, %95
  %99 = icmp eq ptr %11, %1
  br i1 %99, label %108, label %104

100:                                              ; preds = %95, %100
  %101 = phi i64 [ %102, %100 ], [ 0, %95 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %102 = add nuw i64 %101, 1
  %103 = icmp eq i64 %102, %96
  br i1 %103, label %98, label %100, !llvm.loop !806

104:                                              ; preds = %98, %104
  %105 = phi ptr [ %106, %104 ], [ %1, %98 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %105)
  %106 = getelementptr inbounds i32, ptr %105, i64 1
  %107 = icmp eq ptr %106, %11
  br i1 %107, label %108, label %104, !llvm.loop !807

108:                                              ; preds = %104, %98
  %109 = load i32, ptr %3, align 4, !tbaa !447
  %110 = icmp eq ptr %11, %1
  br i1 %110, label %141, label %111

111:                                              ; preds = %108, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %108 ]
  store i32 %109, ptr %112, align 4, !tbaa !447
  %113 = getelementptr inbounds i32, ptr %112, i64 1
  %114 = icmp eq ptr %113, %11
  br i1 %114, label %141, label %111, !llvm.loop !808

115:                                              ; preds = %89
  %116 = sub i64 0, %2
  %117 = getelementptr inbounds i32, ptr %11, i64 %116
  %118 = icmp eq i64 %2, 0
  br i1 %118, label %123, label %119, !prof !710

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %120)
  %121 = getelementptr inbounds i32, ptr %120, i64 1
  %122 = icmp eq ptr %121, %11
  br i1 %122, label %123, label %119, !prof !809, !llvm.loop !810

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125, !prof !804

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %91
  %128 = ashr exact i64 %127, 2
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i32, ptr %11, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %130, ptr align 4 %1, i64 %127, i1 false), !prof !811
  br label %131

131:                                              ; preds = %123, %125
  %132 = getelementptr inbounds i32, ptr %1, i64 %2
  %133 = load i32, ptr %3, align 4, !tbaa !447
  %134 = icmp eq i64 %2, 0
  br i1 %134, label %141, label %135, !prof !710

135:                                              ; preds = %131, %135
  %136 = phi ptr [ %137, %135 ], [ %1, %131 ]
  store i32 %133, ptr %136, align 4, !tbaa !447
  %137 = getelementptr inbounds i32, ptr %136, i64 1
  %138 = icmp eq ptr %137, %132
  br i1 %138, label %141, label %135, !prof !809, !llvm.loop !808

139:                                              ; preds = %24
  %140 = add i64 %19, %2
  store i64 %140, ptr %6, align 8, !tbaa !444
  br label %141

141:                                              ; preds = %111, %135, %108, %131, %18, %139, %74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !304 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !444
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !446
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !516
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !446
  %28 = load i64, ptr %12, align 8, !tbaa !444
  %29 = getelementptr i32, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i32, ptr %31, align 4, !tbaa !447
  store i32 %34, ptr %32, align 4, !tbaa !447
  %35 = getelementptr inbounds i32, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i32, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !812

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !418
  store ptr %42, ptr %5, align 8, !tbaa !418
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !444
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !516
  %45 = shl i64 %14, 2
  %46 = load ptr, ptr %42, align 8, !tbaa !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !446
  %51 = load i64, ptr %43, align 8, !tbaa !444
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !446
  %56 = load i64, ptr %43, align 8, !tbaa !444
  %57 = getelementptr inbounds i32, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !446
  %60 = load i64, ptr %43, align 8, !tbaa !444
  %61 = getelementptr inbounds i32, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !446
  %63 = load i64, ptr %12, align 8, !tbaa !444
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !418
  %67 = load i64, ptr %12, align 8, !tbaa !444
  %68 = load i64, ptr %19, align 8, !tbaa !516
  %69 = load ptr, ptr %15, align 8, !tbaa !446
  %70 = load ptr, ptr %5, align 8, !tbaa !418
  store ptr %70, ptr %0, align 8, !tbaa !418
  %71 = load i64, ptr %43, align 8, !tbaa !444
  store i64 %71, ptr %12, align 8, !tbaa !444
  %72 = load i64, ptr %44, align 8, !tbaa !516
  store i64 %72, ptr %19, align 8, !tbaa !516
  %73 = load ptr, ptr %50, align 8, !tbaa !446
  store ptr %73, ptr %15, align 8, !tbaa !446
  store ptr %66, ptr %5, align 8, !tbaa !418
  store i64 %67, ptr %43, align 8, !tbaa !444
  store i64 %68, ptr %44, align 8, !tbaa !516
  store ptr %69, ptr %50, align 8, !tbaa !446
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !267
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !516
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !446
  %89 = load ptr, ptr %5, align 8, !tbaa !418
  %90 = load ptr, ptr %89, align 8, !tbaa !267
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #21
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %108)
  %109 = getelementptr inbounds i32, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !813

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %112)
  %113 = getelementptr inbounds i32, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !814

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i32, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %121)
  %122 = getelementptr inbounds i32, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !815

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 2
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i32, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %131, ptr align 4 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !444
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !816 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !444
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !516
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !817

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !446
  %12 = getelementptr inbounds i32, ptr %11, i64 %5
  %13 = load i32, ptr %1, align 4, !tbaa !447
  store i32 %13, ptr %12, align 4, !tbaa !447
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !444
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !418
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !418
  %24 = load i64, ptr %4, align 8, !tbaa !444
  %25 = load i64, ptr %6, align 8, !tbaa !516
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !446
  %28 = load ptr, ptr %3, align 8, !tbaa !418
  store ptr %28, ptr %0, align 8, !tbaa !418
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !444
  store i64 %30, ptr %4, align 8, !tbaa !444
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !516
  store i64 %32, ptr %6, align 8, !tbaa !516
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !446
  store ptr %34, ptr %26, align 8, !tbaa !446
  store ptr %23, ptr %3, align 8, !tbaa !418
  store i64 %24, ptr %29, align 8, !tbaa !444
  store i64 %25, ptr %31, align 8, !tbaa !516
  store ptr %27, ptr %33, align 8, !tbaa !446
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !516
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !446
  %52 = load ptr, ptr %3, align 8, !tbaa !418
  %53 = load ptr, ptr %52, align 8, !tbaa !267
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !818 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !418
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !418
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !444
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !516
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !446
  %12 = load ptr, ptr %3, align 8, !tbaa !418
  store ptr %12, ptr %0, align 8, !tbaa !418
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !444
  store i64 %14, ptr %6, align 8, !tbaa !444
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !516
  store i64 %16, ptr %8, align 8, !tbaa !516
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !446
  store ptr %18, ptr %10, align 8, !tbaa !446
  store ptr %5, ptr %3, align 8, !tbaa !418
  store i64 %7, ptr %13, align 8, !tbaa !444
  store i64 %9, ptr %15, align 8, !tbaa !516
  store ptr %11, ptr %17, align 8, !tbaa !446
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !819

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !267
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !820 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !418
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !444
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !821

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !418
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !444
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !516
  %16 = shl i64 %13, 2
  %17 = load ptr, ptr %2, align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !822
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !446
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !446
  %24 = load i64, ptr %9, align 8, !tbaa !444
  %25 = getelementptr inbounds i32, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !408

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !418
  %28 = load i64, ptr %6, align 8, !tbaa !444
  %29 = load i64, ptr %7, align 8, !tbaa !516
  %30 = load ptr, ptr %8, align 8, !tbaa !446
  %31 = load ptr, ptr %5, align 8, !tbaa !418
  store ptr %31, ptr %0, align 8, !tbaa !418
  %32 = load i64, ptr %14, align 8, !tbaa !444
  store i64 %32, ptr %6, align 8, !tbaa !444
  %33 = load i64, ptr %15, align 8, !tbaa !516
  store i64 %33, ptr %7, align 8, !tbaa !516
  %34 = load ptr, ptr %21, align 8, !tbaa !446
  store ptr %34, ptr %8, align 8, !tbaa !446
  store ptr %27, ptr %5, align 8, !tbaa !418
  store i64 %28, ptr %14, align 8, !tbaa !444
  store i64 %29, ptr %15, align 8, !tbaa !516
  store ptr %30, ptr %21, align 8, !tbaa !446
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !408

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !516
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !446
  %50 = load ptr, ptr %5, align 8, !tbaa !418
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #21
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !823

60:                                               ; preds = %58
  %61 = shl i64 %3, 2
  %62 = load ptr, ptr %2, align 8, !tbaa !267
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !824
  store ptr %65, ptr %8, align 8, !tbaa !446
  store i64 %3, ptr %7, align 8, !tbaa !516
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !825 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !300
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !826

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !302
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !522, !range !440, !noundef !317
  store i8 %13, ptr %12, align 1, !tbaa !522
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !337
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !827
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !289
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %22 unwind label %44, !prof !828

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !289
  %24 = load i64, ptr %4, align 8, !tbaa !337
  %25 = load i64, ptr %6, align 8, !tbaa !300
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !302
  %28 = load ptr, ptr %3, align 8, !tbaa !289
  store ptr %28, ptr %0, align 8, !tbaa !289
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !337
  store i64 %30, ptr %4, align 8, !tbaa !337
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !300
  store i64 %32, ptr %6, align 8, !tbaa !300
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !302
  store ptr %34, ptr %26, align 8, !tbaa !302
  store ptr %23, ptr %3, align 8, !tbaa !289
  store i64 %24, ptr %29, align 8, !tbaa !337
  store i64 %25, ptr %31, align 8, !tbaa !300
  store ptr %27, ptr %33, align 8, !tbaa !302
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !827

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !267
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !829

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !300
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !302
  %52 = load ptr, ptr %3, align 8, !tbaa !289
  %53 = load ptr, ptr %52, align 8, !tbaa !267
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !589 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !289
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !337
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !830

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !289
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !337
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !300
  %16 = load ptr, ptr %2, align 8, !tbaa !267
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13), !prof !831
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !302
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !302
  %23 = load i64, ptr %9, align 8, !tbaa !337
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43, !prof !832

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !289
  %27 = load i64, ptr %6, align 8, !tbaa !337
  %28 = load i64, ptr %7, align 8, !tbaa !300
  %29 = load ptr, ptr %8, align 8, !tbaa !302
  %30 = load ptr, ptr %5, align 8, !tbaa !289
  store ptr %30, ptr %0, align 8, !tbaa !289
  %31 = load i64, ptr %14, align 8, !tbaa !337
  store i64 %31, ptr %6, align 8, !tbaa !337
  %32 = load i64, ptr %15, align 8, !tbaa !300
  store i64 %32, ptr %7, align 8, !tbaa !300
  %33 = load ptr, ptr %20, align 8, !tbaa !302
  store ptr %33, ptr %8, align 8, !tbaa !302
  store ptr %26, ptr %5, align 8, !tbaa !289
  store i64 %27, ptr %14, align 8, !tbaa !337
  store i64 %28, ptr %15, align 8, !tbaa !300
  store ptr %29, ptr %20, align 8, !tbaa !302
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35, !prof !832

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !267
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #21
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !300
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !302
  %49 = load ptr, ptr %5, align 8, !tbaa !289
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #21
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !465

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !267
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !833
  store ptr %63, ptr %8, align 8, !tbaa !302
  store i64 %3, ptr %7, align 8, !tbaa !300
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !834 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %131, label %10, !prof !835

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !337
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !302
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !300
  br i1 %17, label %20, label %37, !prof !832

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23, !prof !835

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %131, label %25, !prof !836

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !302
  %27 = load i64, ptr %11, align 8, !tbaa !337
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add i64 %27, %6
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %35, %30 ], [ %2, %25 ]
  %32 = phi ptr [ %34, %30 ], [ %28, %25 ]
  %33 = load i8, ptr %31, align 1, !tbaa !522, !range !440, !noundef !317
  store i8 %33, ptr %32, align 1, !tbaa !522
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %129, label %30, !prof !837, !llvm.loop !838

37:                                               ; preds = %10
  %38 = icmp ugt i64 %13, %19
  br i1 %38, label %39, label %94

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %40 = load ptr, ptr %0, align 8, !tbaa !289
  store ptr %40, ptr %5, align 8, !tbaa !289
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %41, align 8, !tbaa !337
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %42, align 8, !tbaa !300
  %43 = load ptr, ptr %40, align 8, !tbaa !267
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %13)
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !302
  %48 = load i64, ptr %41, align 8, !tbaa !337
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load ptr, ptr %14, align 8, !tbaa !302
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, ptr noundef %50, ptr noundef %1)
          to label %51 unwind label %80

51:                                               ; preds = %39
  %52 = load ptr, ptr %47, align 8, !tbaa !302
  %53 = load i64, ptr %41, align 8, !tbaa !337
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %2, ptr noundef %3)
          to label %55 unwind label %80

55:                                               ; preds = %51
  %56 = load ptr, ptr %47, align 8, !tbaa !302
  %57 = load i64, ptr %41, align 8, !tbaa !337
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = load ptr, ptr %14, align 8, !tbaa !302
  %60 = load i64, ptr %11, align 8, !tbaa !337
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %58, ptr noundef %1, ptr noundef %61)
          to label %62 unwind label %80

62:                                               ; preds = %55
  %63 = load ptr, ptr %0, align 8, !tbaa !289
  %64 = load i64, ptr %11, align 8, !tbaa !337
  %65 = load i64, ptr %18, align 8, !tbaa !300
  %66 = load ptr, ptr %14, align 8, !tbaa !302
  %67 = load ptr, ptr %5, align 8, !tbaa !289
  store ptr %67, ptr %0, align 8, !tbaa !289
  %68 = load i64, ptr %41, align 8, !tbaa !337
  store i64 %68, ptr %11, align 8, !tbaa !337
  %69 = load i64, ptr %42, align 8, !tbaa !300
  store i64 %69, ptr %18, align 8, !tbaa !300
  %70 = load ptr, ptr %47, align 8, !tbaa !302
  store ptr %70, ptr %14, align 8, !tbaa !302
  store ptr %63, ptr %5, align 8, !tbaa !289
  store i64 %64, ptr %41, align 8, !tbaa !337
  store i64 %65, ptr %42, align 8, !tbaa !300
  store ptr %66, ptr %47, align 8, !tbaa !302
  %71 = icmp eq i64 %65, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %63, align 8, !tbaa !267
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66)
          to label %79 unwind label %76

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #21
  unreachable

79:                                               ; preds = %62, %72
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %131

80:                                               ; preds = %55, %51, %39
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load i64, ptr %42, align 8, !tbaa !300
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %47, align 8, !tbaa !302
  %86 = load ptr, ptr %5, align 8, !tbaa !289
  %87 = load ptr, ptr %86, align 8, !tbaa !267
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #21
  unreachable

93:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
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
  br i1 %107, label %102, label %104, !llvm.loop !839

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %110, %108 ], [ %1, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %109)
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = icmp eq ptr %110, %16
  br i1 %111, label %112, label %108, !llvm.loop !840

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
  br i1 %120, label %121, label %117, !llvm.loop !841

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
  store i64 %130, ptr %11, align 8, !tbaa !337
  br label %131

131:                                              ; preds = %23, %129, %79, %112, %128, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !543 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !289
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !289
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !337
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !300
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !302
  %12 = load ptr, ptr %3, align 8, !tbaa !289
  store ptr %12, ptr %0, align 8, !tbaa !289
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !337
  store i64 %14, ptr %6, align 8, !tbaa !337
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !300
  store i64 %16, ptr %8, align 8, !tbaa !300
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !302
  store ptr %18, ptr %10, align 8, !tbaa !302
  store ptr %5, ptr %3, align 8, !tbaa !289
  store i64 %7, ptr %13, align 8, !tbaa !337
  store i64 %9, ptr %15, align 8, !tbaa !300
  store ptr %11, ptr %17, align 8, !tbaa !302
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !618

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !267
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XPathProcessorImpl.cpp() #16 section ".text.startup" !prof !543 !PGOFuncName !842 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1018XPathProcessorImpl13s_emptyStringE, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!265}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!35 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImplC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XPathProcessorC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImplC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XPathProcessorImplC2ERN11xercesc_2_713MemoryManagerE, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImplD2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImplD2Ev, ptr @_ZN11xalanc_1_1014XPathProcessorD2Ev, i64 2}
!42 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, i64 2}
!43 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev, i64 2}
!44 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev, i64 4}
!45 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1015XPathExpression5resetEv, i64 137}
!46 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE, i64 137}
!47 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 137}
!48 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 137}
!49 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, i64 137}
!50 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv, i64 137}
!51 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj, i64 476}
!52 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE, i64 476}
!53 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii, i64 165}
!54 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 983}
!55 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, i64 164}
!56 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1015XPathExpression5resetEv, i64 27}
!57 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8tokenizeERKNS_14XalanDOMStringE, i64 27}
!58 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 54}
!59 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 28}
!60 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, i64 28}
!61 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, i64 27}
!62 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16initMatchPatternERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5clearEv, i64 27}
!63 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj, i64 330}
!64 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 330}
!65 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEixERS2_, i64 165}
!66 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11mapNSTokensERKNS_14XalanDOMStringEiii, ptr @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE, i64 495}
!67 = !{ptr @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 971}
!68 = !{ptr @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 971}
!69 = !{ptr @_ZN11xalanc_1_1015XPathExpression9pushTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XTokenD1Ev, i64 971}
!70 = !{ptr @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_, i64 165}
!71 = !{ptr @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv, ptr @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 165}
!72 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEixERS2_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_, i64 165}
!73 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEixERS2_, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_, i64 119}
!74 = !{ptr @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti, ptr @_ZNK11xalanc_1_1018XPathProcessorImpl16getTokenRelativeEi, i64 197}
!75 = !{ptr @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 394}
!76 = !{ptr @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 197}
!77 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv, i64 217}
!78 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 434}
!79 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 217}
!80 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, i64 217}
!81 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 434}
!82 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl7AndExprEv, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 217}
!83 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl14RelationalExprEi, i64 221}
!84 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 4}
!85 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, i64 4}
!86 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 8}
!87 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12EqualityExprEi, i64 4}
!88 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl14RelationalExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, i64 221}
!89 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, i64 231}
!90 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 10}
!91 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, i64 10}
!92 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 20}
!93 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12AdditiveExprEi, i64 10}
!94 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9UnaryExprEv, i64 249}
!95 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 412}
!96 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 206}
!97 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 18}
!98 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, i64 18}
!99 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 36}
!100 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl18MultiplicativeExprEi, i64 18}
!101 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9UnaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9UnionExprEv, i64 249}
!102 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9UnionExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8PathExprEv, i64 249}
!103 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9UnionExprEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 249}
!104 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8PathExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl10FilterExprEv, i64 249}
!105 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl10FilterExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, i64 249}
!106 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, i64 171}
!107 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 51}
!108 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 72}
!109 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl7LiteralEv, i64 7}
!110 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 72}
!111 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 32}
!112 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl5QNameEv, i64 12}
!113 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, i64 10}
!114 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv, i64 43}
!115 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, i64 63}
!116 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11PrimaryExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv, i64 114}
!117 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 6}
!118 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv, i64 3}
!119 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl7LiteralEv, ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, i64 7}
!120 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl7LiteralEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 7}
!121 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5QNameEv, ptr @_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE, i64 12}
!122 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5QNameEv, ptr @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv, i64 24}
!123 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5QNameEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 24}
!124 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 43}
!125 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv, ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE, i64 43}
!126 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv, ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, i64 43}
!127 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv, ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, i64 43}
!128 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl6NumberEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 43}
!129 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl15isValidFunctionERKNS_14XalanDOMStringE, i64 63}
!130 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE, i64 63}
!131 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv, i64 6}
!132 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl16FunctionPositionEv, i64 10}
!133 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionCountEv, i64 8}
!134 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionNameEi, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionNumberEi, i64 7}
!136 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFloorEv, i64 5}
!137 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi, i64 2}
!138 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionSumEv, i64 7}
!139 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, i64 17}
!140 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 68}
!141 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 34}
!142 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE, i64 17}
!143 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 74}
!144 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, i64 17}
!145 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 17}
!146 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 17}
!147 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionCallEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 57}
!148 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 240}
!149 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl20RelativeLocationPathEv, i64 120}
!150 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12LocationPathEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 120}
!151 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8ArgumentEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, i64 67}
!152 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 142}
!153 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8ArgumentEv, i64 67}
!154 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, i64 28}
!155 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl15isValidFunctionERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XPathFunctionTable16getFunctionIndexEPKtj, i64 63}
!156 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl15isValidFunctionERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE, i64 6}
!157 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16FunctionPositionEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 10}
!158 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16FunctionPositionEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 10}
!159 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl16FunctionPositionEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 10}
!160 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionCountEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 8}
!161 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionCountEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 8}
!162 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionCountEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 8}
!163 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionNameEi, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 1}
!164 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionNameEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 1}
!165 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl12FunctionNameEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 1}
!166 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionNumberEi, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 7}
!167 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionNumberEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 7}
!168 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl14FunctionNumberEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 7}
!169 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFloorEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 5}
!170 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFloorEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 5}
!171 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13FunctionFloorEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 5}
!172 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 2}
!173 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 2}
!174 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 2}
!175 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl20FunctionStringLengthEi, ptr @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_, i64 2}
!176 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionSumEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 7}
!177 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionSumEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 7}
!178 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11FunctionSumEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl21FunctionCallArgumentsEv, i64 7}
!179 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 670}
!180 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 335}
!181 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 7}
!182 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE, i64 7}
!183 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 14}
!184 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, i64 7}
!185 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 171}
!186 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, i64 164}
!187 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl4StepEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9PredicateEv, i64 3}
!188 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, ptr @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti, i64 164}
!189 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8AxisNameEv, i64 2}
!190 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 21}
!191 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 162}
!192 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, i64 164}
!193 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl5BasisEv, ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, i64 164}
!194 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8AxisNameEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE, i64 2}
!195 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8AxisNameEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 2}
!196 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 230}
!197 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE, i64 7}
!198 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 543}
!199 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, ptr @_ZNK11xalanc_1_1018XPathProcessorImpl30replaceTokenWithNamespaceTokenEv, i64 165}
!200 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, ptr @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv, i64 353}
!201 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 6}
!202 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 3}
!203 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6OrExprEv, i64 3}
!204 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl13PredicateExprEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 3}
!205 = !{ptr @_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 12}
!206 = !{ptr @_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_RKS1_, i64 12}
!207 = !{ptr @_ZN11xalanc_1_1015XPathExpression11insertTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XTokenD1Ev, i64 12}
!208 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 64}
!209 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 4}
!210 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 2}
!211 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2EmRKiRN11xercesc_2_713MemoryManagerE, i64 4}
!212 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE, i64 4}
!213 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 6}
!214 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 32}
!215 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19LocationPathPatternEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl19RelativePathPatternEv, i64 26}
!216 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19RelativePathPatternEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, i64 35}
!217 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl19RelativePathPatternEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 9}
!218 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, i64 70}
!219 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl9nextTokenEv, i64 2}
!220 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, ptr @_ZNK11xalanc_1_1018XPathProcessorImpl9lookaheadEPKti, i64 33}
!221 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, ptr @_ZN11xalanc_1_1018XPathProcessorImpl8NodeTestEv, i64 35}
!222 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, ptr @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi, i64 35}
!223 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl23AbbreviatedNodeTestStepEv, ptr @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii, i64 35}
!224 = !{ptr @_ZN11xalanc_1_1018XPathProcessorImpl11searchTableEPKNS0_10TableEntryEmRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107compareEPKtjS1_j, i64 254}
!225 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_106XTokenC1ERKS0_, i64 983}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 164}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 164}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!232 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_RKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_, i64 12}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_mRKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 12}
!239 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIS2_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISE_E4NodeEEEEE, i64 119}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev, i64 29}
!241 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIS2_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISE_E4NodeEEEEE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 119}
!242 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 211}
!243 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_, i64 1}
!244 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_, ptr @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv, i64 119}
!245 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_, i64 1}
!246 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 119}
!247 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERS2_PKS3_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, i64 119}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm, i64 1}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm, i64 29}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm, i64 1}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev, i64 1}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm, i64 1}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_, i64 1}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, i64 28}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 64}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 192}
!257 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, i64 27}
!258 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 34}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 34}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!261 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!262 = !{ptr @_GLOBAL__sub_I_XPathProcessorImpl.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!263 = !{ptr @_GLOBAL__sub_I_XPathProcessorImpl.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!264 = !{ptr @_GLOBAL__sub_I_XPathProcessorImpl.cpp, ptr @__cxa_atexit, i64 1}
!265 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!266 = !{!"function_entry_count", i64 2}
!267 = !{!268, !268, i64 0}
!268 = !{!"vtable pointer", !269, i64 0}
!269 = !{!"Simple C++ TBAA"}
!270 = !{!"branch_weights", i32 2, i32 0}
!271 = !{!272, !280, i64 48}
!272 = !{!"_ZTSN11xalanc_1_1018XPathProcessorImplE", !273, i64 0, !274, i64 8, !280, i64 48, !276, i64 56, !276, i64 64, !276, i64 72, !276, i64 80, !281, i64 88, !281, i64 89, !276, i64 96, !282, i64 104, !283, i64 136, !281, i64 272, !281, i64 273}
!273 = !{!"_ZTSN11xalanc_1_1014XPathProcessorE"}
!274 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !275, i64 0, !279, i64 32}
!275 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!276 = !{!"any pointer", !277, i64 0}
!277 = !{!"omnipotent char", !269, i64 0}
!278 = !{!"long", !277, i64 0}
!279 = !{!"int", !277, i64 0}
!280 = !{!"short", !277, i64 0}
!281 = !{!"bool", !277, i64 0}
!282 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!283 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEEE", !284, i64 0, !285, i64 1, !276, i64 8, !286, i64 16, !278, i64 24, !278, i64 32, !287, i64 40, !287, i64 64, !288, i64 88, !278, i64 120, !278, i64 128}
!284 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!285 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!286 = !{!"float", !277, i64 0}
!287 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !276, i64 0, !276, i64 8, !276, i64 16}
!288 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!289 = !{!282, !276, i64 0}
!290 = !{!283, !276, i64 8}
!291 = !{!283, !286, i64 16}
!292 = !{!283, !278, i64 24}
!293 = !{!283, !278, i64 32}
!294 = !{!287, !276, i64 0}
!295 = !{!288, !276, i64 0}
!296 = !{!283, !278, i64 128}
!297 = !{!272, !281, i64 272}
!298 = !{!272, !281, i64 273}
!299 = !{!"function_entry_count", i64 16}
!300 = !{!282, !278, i64 16}
!301 = !{!"branch_weights", i32 6, i32 10}
!302 = !{!282, !276, i64 24}
!303 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!304 = !{!"function_entry_count", i64 0}
!305 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!306 = !{!288, !278, i64 8}
!307 = !{!"branch_weights", i32 1, i32 1}
!308 = !{!287, !276, i64 8}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!311 = distinct !{!311, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!312 = !{!"branch_weights", i32 0, i32 1}
!313 = !{!314, !276, i64 24}
!314 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !315, i64 0, !276, i64 16, !276, i64 24}
!315 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5EntryE", !276, i64 0, !281, i64 8}
!316 = !{!314, !276, i64 16}
!317 = !{}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!320 = distinct !{!320, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!321 = !{!"branch_weights", i32 0, i32 2}
!322 = !{!315, !276, i64 0}
!323 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!324 = distinct !{!324, !325, !326}
!325 = !{!"llvm.loop.mustprogress"}
!326 = !{!"llvm.loop.unroll.disable"}
!327 = !{!"function_entry_count", i64 137}
!328 = !{!272, !281, i64 89}
!329 = !{!272, !281, i64 88}
!330 = !{!272, !276, i64 56}
!331 = !{!272, !276, i64 64}
!332 = !{!272, !276, i64 72}
!333 = !{!272, !276, i64 80}
!334 = !{!272, !276, i64 96}
!335 = !{!274, !279, i64 32}
!336 = !{!"branch_weights", i32 137, i32 0}
!337 = !{!282, !278, i64 8}
!338 = !{!"function_entry_count", i64 164}
!339 = !{!"VP", i32 0, i64 164, i64 -2492984370683079149, i64 164}
!340 = !{!341, !276, i64 80}
!341 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !342, i64 0, !279, i64 32, !343, i64 40, !279, i64 72, !276, i64 80, !344, i64 88}
!342 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!343 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!344 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!345 = !{!"VP", i32 0, i64 164, i64 5287555200792350651, i64 164}
!346 = !{!"branch_weights", i32 163, i32 1}
!347 = !{!"branch_weights", i32 53, i32 111}
!348 = !{!275, !276, i64 24}
!349 = !{!280, !280, i64 0}
!350 = !{!"branch_weights", i32 2559, i32 0, i32 7, i32 0, i32 0, i32 32, i32 0, i32 10, i32 19, i32 74, i32 3, i32 74, i32 3, i32 1, i32 66, i32 9, i32 5, i32 4, i32 28, i32 0, i32 0, i32 0, i32 12, i32 0, i32 0, i32 169}
!351 = distinct !{!351, !325, !326}
!352 = !{!"branch_weights", i32 7, i32 0}
!353 = !{!"branch_weights", i32 1, i32 223}
!354 = distinct !{!354, !325, !326}
!355 = !{!"branch_weights", i32 0, i32 48}
!356 = !{!"branch_weights", i32 223, i32 1089}
!357 = !{!"branch_weights", i32 0, i32 7}
!358 = !{!"VP", i32 0, i64 7, i64 -2492984370683079149, i64 7}
!359 = !{!"branch_weights", i32 19, i32 13}
!360 = !{!"branch_weights", i32 13, i32 0}
!361 = !{!"VP", i32 0, i64 13, i64 -2492984370683079149, i64 13}
!362 = !{!"branch_weights", i32 5, i32 5}
!363 = !{!"branch_weights", i32 138, i32 160}
!364 = !{!"branch_weights", i32 85, i32 75}
!365 = !{!"branch_weights", i32 75, i32 0}
!366 = !{!"branch_weights", i32 85, i32 0}
!367 = !{!"VP", i32 0, i64 85, i64 -2492984370683079149, i64 85}
!368 = !{!"branch_weights", i32 303, i32 0}
!369 = !{!"VP", i32 0, i64 303, i64 -2492984370683079149, i64 303}
!370 = !{!"branch_weights", i32 2, i32 167}
!371 = !{!"VP", i32 0, i64 2, i64 -2492984370683079149, i64 2}
!372 = !{!"branch_weights", i32 329, i32 2397}
!373 = !{!277, !277, i64 0}
!374 = !{!"branch_weights", i32 43, i32 286}
!375 = !{!"branch_weights", i32 57, i32 1}
!376 = !{!"branch_weights", i32 0, i32 57}
!377 = !{!"branch_weights", i32 15, i32 42}
!378 = !{!"branch_weights", i32 43, i32 0}
!379 = !{!"VP", i32 0, i64 43, i64 -2492984370683079149, i64 43}
!380 = !{!"branch_weights", i32 2912, i32 163}
!381 = distinct !{!381, !325, !326}
!382 = !{!"branch_weights", i32 21, i32 90}
!383 = !{!"branch_weights", i32 90, i32 0}
!384 = !{!"branch_weights", i32 21, i32 0}
!385 = !{!"VP", i32 0, i64 21, i64 -2492984370683079149, i64 21}
!386 = !{!343, !278, i64 8}
!387 = !{!"branch_weights", i32 0, i32 164}
!388 = !{!341, !279, i64 72}
!389 = !{!"VP", i32 0, i64 164, i64 8649632521824085322, i64 164}
!390 = !{!"function_entry_count", i64 1147}
!391 = !{!"branch_weights", i32 983, i32 164}
!392 = !{!343, !276, i64 24}
!393 = !{!"branch_weights", i32 164, i32 983}
!394 = !{!275, !278, i64 8}
!395 = !{!"VP", i32 0, i64 983, i64 -2661239832470905707, i64 983}
!396 = !{!"branch_weights", i32 0, i32 983}
!397 = !{!288, !276, i64 24}
!398 = !{!"branch_weights", i32 1, i32 163}
!399 = !{!400, !278, i64 8}
!400 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEE", !276, i64 0, !278, i64 8, !278, i64 16, !276, i64 24}
!401 = !{!"branch_weights", i32 4608, i32 119}
!402 = !{!"branch_weights", i32 163, i32 4564}
!403 = distinct !{!403, !325, !326}
!404 = !{!283, !278, i64 120}
!405 = !{!"function_entry_count", i64 27}
!406 = !{!"branch_weights", i32 1, i32 26}
!407 = distinct !{!407, !325, !326}
!408 = !{!"branch_weights", i32 27, i32 0}
!409 = !{!"function_entry_count", i64 165}
!410 = !{!"VP", i32 0, i64 165, i64 5287555200792350651, i64 165}
!411 = !{!"branch_weights", i32 165, i32 0}
!412 = !{!"VP", i32 0, i64 165, i64 3825517595825844648, i64 165}
!413 = !{!"branch_weights", i32 0, i32 165}
!414 = !{!276, !276, i64 0}
!415 = !{!"VP", i32 0, i64 165, i64 -2492984370683079149, i64 165}
!416 = !{!"VP", i32 0, i64 165, i64 8649632521824085322, i64 165}
!417 = !{!"function_entry_count", i64 971}
!418 = !{!342, !276, i64 0}
!419 = !{!"branch_weights", i32 971, i32 0}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_: argument 0"}
!422 = distinct !{!422, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE4findERS2_"}
!423 = !{!424, !276, i64 0}
!424 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEE", !276, i64 0}
!425 = !{!426, !276, i64 40}
!426 = !{!"_ZTSSt4pairIKN11xalanc_1_1014XalanDOMStringEPS2_E", !274, i64 0, !276, i64 40}
!427 = !{!428, !430}
!428 = distinct !{!428, !429, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!429 = distinct !{!429, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!430 = distinct !{!430, !431, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!431 = distinct !{!431, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!432 = !{!"branch_weights", i32 119, i32 46}
!433 = !{!"function_entry_count", i64 197}
!434 = !{!"branch_weights", i32 0, i32 197}
!435 = !{!"branch_weights", i32 194, i32 3}
!436 = !{!"branch_weights", i32 3, i32 194}
!437 = !{!"VP", i32 0, i64 194, i64 -2661239832470905707, i64 194}
!438 = !{!275, !276, i64 0}
!439 = !{!275, !278, i64 16}
!440 = !{i8 0, i8 2}
!441 = !{!442, !276, i64 8}
!442 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !276, i64 8}
!443 = !{!"function_entry_count", i64 217}
!444 = !{!342, !278, i64 8}
!445 = !{!"branch_weights", i32 217, i32 0}
!446 = !{!342, !276, i64 24}
!447 = !{!279, !279, i64 0}
!448 = !{!"branch_weights", i32 137, i32 80}
!449 = !{!"branch_weights", i32 0, i32 217}
!450 = !{!"function_entry_count", i64 221}
!451 = !{!"branch_weights", i32 217, i32 4}
!452 = !{!"branch_weights", i32 0, i32 221}
!453 = !{!"branch_weights", i32 4, i32 217}
!454 = !{!"branch_weights", i32 4, i32 0}
!455 = !{!"branch_weights", i32 0, i32 4}
!456 = !{!"branch_weights", i32 221, i32 0}
!457 = !{!"branch_weights", i32 137, i32 84}
!458 = !{!"branch_weights", i32 84, i32 0, i32 0}
!459 = !{!"branch_weights", i32 84, i32 0}
!460 = !{!"function_entry_count", i64 231}
!461 = !{!"branch_weights", i32 221, i32 10}
!462 = !{!"branch_weights", i32 137, i32 94}
!463 = !{!"branch_weights", i32 5, i32 89}
!464 = !{!"branch_weights", i32 10, i32 0}
!465 = !{!"branch_weights", i32 0, i32 10}
!466 = !{!"function_entry_count", i64 249}
!467 = !{!"branch_weights", i32 231, i32 18}
!468 = !{!"branch_weights", i32 231, i32 0}
!469 = !{!"branch_weights", i32 137, i32 112}
!470 = !{!"branch_weights", i32 5, i32 107}
!471 = !{!"branch_weights", i32 0, i32 107}
!472 = !{!"branch_weights", i32 8, i32 99}
!473 = !{!"branch_weights", i32 0, i32 99}
!474 = !{!"branch_weights", i32 5, i32 94}
!475 = !{!"branch_weights", i32 94, i32 18}
!476 = !{!"branch_weights", i32 18, i32 0}
!477 = !{!"branch_weights", i32 0, i32 18}
!478 = !{!"branch_weights", i32 249, i32 0}
!479 = !{!"branch_weights", i32 0, i32 249}
!480 = distinct !{!480, !325, !326}
!481 = !{!"function_entry_count", i64 120}
!482 = !{!"branch_weights", i32 51, i32 69}
!483 = !{!"branch_weights", i32 0, i32 51}
!484 = distinct !{!484, !325, !326}
!485 = !{!"branch_weights", i32 213, i32 7, i32 0, i32 12, i32 10, i32 7}
!486 = !{!"branch_weights", i32 0, i32 12}
!487 = !{!"branch_weights", i32 43, i32 177}
!488 = !{!"branch_weights", i32 2, i32 175}
!489 = !{!"VP", i32 0, i64 175, i64 -2661239832470905707, i64 175}
!490 = !{!"branch_weights", i32 172, i32 5}
!491 = !{!"branch_weights", i32 63, i32 109}
!492 = !{!"branch_weights", i32 2, i32 112}
!493 = !{!"VP", i32 0, i64 112, i64 -2661239832470905707, i64 112}
!494 = !{!"branch_weights", i32 109, i32 5}
!495 = !{!"branch_weights", i32 99, i32 10}
!496 = !{!"branch_weights", i32 51, i32 48}
!497 = !{!"VP", i32 0, i64 48, i64 -2661239832470905707, i64 48}
!498 = !{!"branch_weights", i32 48, i32 51}
!499 = !{!"function_entry_count", i64 3}
!500 = !{!"branch_weights", i32 3, i32 0}
!501 = !{!"function_entry_count", i64 7}
!502 = !{!"VP", i32 0, i64 7, i64 -5842568502186695876, i64 7}
!503 = !{!"function_entry_count", i64 12}
!504 = !{!"branch_weights", i32 3, i32 9}
!505 = !{!"VP", i32 0, i64 9, i64 -2661239832470905707, i64 9}
!506 = !{!"branch_weights", i32 9, i32 3}
!507 = !{!"branch_weights", i32 0, i32 9}
!508 = !{!"function_entry_count", i64 43}
!509 = !{!"branch_weights", i32 0, i32 43}
!510 = !{!"VP", i32 0, i64 43, i64 5287555200792350651, i64 43}
!511 = !{!"VP", i32 0, i64 43, i64 8649632521824085322, i64 43}
!512 = !{!"function_entry_count", i64 63}
!513 = !{!"branch_weights", i32 63, i32 0}
!514 = !{!"branch_weights", i32 0, i32 63}
!515 = !{!"VP", i32 0, i64 63, i64 -2661239832470905707, i64 63}
!516 = !{!342, !278, i64 16}
!517 = !{!518, !519, i64 8}
!518 = !{!"_ZTSN11xalanc_1_1018XPathProcessorImpl10TableEntryE", !276, i64 0, !519, i64 8}
!519 = !{!"_ZTSN11xalanc_1_1015XPathExpression8eOpCodesE", !277, i64 0}
!520 = !{!"branch_weights", i32 17, i32 0, i32 0, i32 0, i32 6, i32 10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 7, i32 5, i32 0, i32 0, i32 2, i32 7}
!521 = !{!"branch_weights", i32 0, i32 17}
!522 = !{!281, !281, i64 0}
!523 = !{!"branch_weights", i32 17, i32 0}
!524 = !{!"VP", i32 0, i64 17, i64 -7405368087501025645, i64 17}
!525 = !{!"branch_weights", i32 120, i32 0}
!526 = !{!"branch_weights", i32 0, i32 120}
!527 = !{!"function_entry_count", i64 67}
!528 = !{!"branch_weights", i32 67, i32 0}
!529 = !{!"function_entry_count", i64 57}
!530 = !{!"branch_weights", i32 57, i32 0}
!531 = !{!"branch_weights", i32 1, i32 227}
!532 = !{!"branch_weights", i32 0, i32 67}
!533 = distinct !{!533, !325, !326}
!534 = !{!"branch_weights", i32 0, i32 39, i32 28}
!535 = !{!"branch_weights", i32 0, i32 28}
!536 = !{!"branch_weights", i32 227, i32 41}
!537 = !{!"function_entry_count", i64 28}
!538 = !{!"branch_weights", i32 28, i32 0}
!539 = !{!"branch_weights", i32 6, i32 57}
!540 = !{!"function_entry_count", i64 10}
!541 = !{!"function_entry_count", i64 8}
!542 = !{!"branch_weights", i32 8, i32 0}
!543 = !{!"function_entry_count", i64 1}
!544 = !{!"branch_weights", i32 0, i32 1, i32 0}
!545 = !{!"branch_weights", i32 0, i32 7, i32 0}
!546 = !{!"function_entry_count", i64 5}
!547 = !{!"branch_weights", i32 5, i32 0}
!548 = !{!"branch_weights", i32 0, i32 0, i32 2}
!549 = !{!"function_entry_count", i64 171}
!550 = !{!"branch_weights", i32 171, i32 0}
!551 = !{!"branch_weights", i32 0, i32 171}
!552 = !{!"branch_weights", i32 7, i32 164}
!553 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!554 = !{!"branch_weights", i32 147, i32 0, i32 17, i32 0, i32 0}
!555 = !{!"branch_weights", i32 147, i32 0}
!556 = !{!"branch_weights", i32 3, i32 161}
!557 = !{!"branch_weights", i32 0, i32 3}
!558 = distinct !{!558, !325, !326}
!559 = !{!"branch_weights", i32 164, i32 0}
!560 = !{!"branch_weights", i32 2, i32 162}
!561 = !{!"branch_weights", i32 145, i32 17, i32 0}
!562 = !{!"function_entry_count", i64 199}
!563 = !{!"branch_weights", i32 21, i32 178}
!564 = !{!"VP", i32 0, i64 178, i64 -2661239832470905707, i64 178}
!565 = !{!"branch_weights", i32 178, i32 21}
!566 = !{!"branch_weights", i32 7, i32 171}
!567 = !{!"branch_weights", i32 21, i32 171}
!568 = !{!"VP", i32 0, i64 171, i64 -2661239832470905707, i64 171}
!569 = !{!"branch_weights", i32 171, i32 21}
!570 = !{!"branch_weights", i32 165, i32 6}
!571 = !{!"branch_weights", i32 4, i32 188}
!572 = !{!"branch_weights", i32 188, i32 0, i32 0}
!573 = !{!"branch_weights", i32 0, i32 188}
!574 = !{!"branch_weights", i32 188, i32 0}
!575 = !{!"branch_weights", i32 12, i32 0}
!576 = !{!"branch_weights", i32 3, i32 25}
!577 = !{!"VP", i32 0, i64 25, i64 -2661239832470905707, i64 25}
!578 = !{!"branch_weights", i32 25, i32 3}
!579 = !{!"branch_weights", i32 1, i32 24}
!580 = !{!"branch_weights", i32 4, i32 24}
!581 = !{!"branch_weights", i32 2, i32 2}
!582 = !{!"VP", i32 0, i64 2, i64 -2661239832470905707, i64 2}
!583 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!584 = !{!"branch_weights", i32 2, i32 26}
!585 = !{!"branch_weights", i32 0, i32 26}
!586 = !{!"function_entry_count", i64 26}
!587 = !{!"branch_weights", i32 9, i32 17}
!588 = distinct !{!588, !325, !326}
!589 = !{!"function_entry_count", i64 35}
!590 = !{!"branch_weights", i32 35, i32 0}
!591 = !{!"branch_weights", i32 2, i32 33}
!592 = !{!"branch_weights", i32 0, i32 33}
!593 = !{!"branch_weights", i32 33, i32 0}
!594 = distinct !{!594, !325, !326}
!595 = !{!"branch_weights", i32 9, i32 26}
!596 = !{!"branch_weights", i32 1, i32 8}
!597 = !{!"function_entry_count", i64 78}
!598 = !{!"branch_weights", i32 17, i32 254}
!599 = !{!"branch_weights", i32 0, i32 254}
!600 = !{!518, !276, i64 0}
!601 = !{!"branch_weights", i32 254, i32 1740}
!602 = distinct !{!602, !325, !326}
!603 = !{!"branch_weights", i32 254, i32 1560}
!604 = !{!"branch_weights", i32 82, i32 172}
!605 = !{!"branch_weights", i32 61, i32 111}
!606 = !{!"branch_weights", i32 193, i32 61}
!607 = distinct !{!607, !325, !326}
!608 = !{!"function_entry_count", i64 42470003}
!609 = !{!"branch_weights", i32 52000, i32 42418003}
!610 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!611 = !{!"function_entry_count", i64 983}
!612 = !{!343, !278, i64 16}
!613 = !{!"branch_weights", i32 983, i32 0}
!614 = !{!343, !276, i64 0}
!615 = !{!"VP", i32 0, i64 164, i64 8345045103670217670, i64 164}
!616 = !{!"function_entry_count", i64 328}
!617 = !{!"branch_weights", i32 164, i32 164}
!618 = !{!"branch_weights", i32 1, i32 0}
!619 = distinct !{!619, !325, !326}
!620 = !{!"VP", i32 0, i64 164, i64 -7405368087501025645, i64 164}
!621 = distinct !{!621, !325, !326}
!622 = distinct !{!622, !325, !326}
!623 = distinct !{!623, !325, !326}
!624 = !{!625, !276, i64 24}
!625 = !{!"_ZTSN11xalanc_1_106XTokenE", !626, i64 0, !276, i64 24, !629, i64 32, !281, i64 40}
!626 = !{!"_ZTSN11xalanc_1_107XObjectE", !627, i64 0, !628, i64 12, !276, i64 16}
!627 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !279, i64 8}
!628 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !277, i64 0}
!629 = !{!"double", !277, i64 0}
!630 = !{!625, !629, i64 32}
!631 = distinct !{!631, !325, !326}
!632 = distinct !{!632, !325, !326}
!633 = distinct !{!633, !325, !326}
!634 = !{!"function_entry_count", i64 41614}
!635 = !{!"branch_weights", i32 0, i32 41614}
!636 = !{!"branch_weights", i32 12, i32 41602}
!637 = !{!"branch_weights", i32 5, i32 7}
!638 = !{!"branch_weights", i32 354, i32 41248}
!639 = !{!"branch_weights", i32 40889, i32 359}
!640 = !{!"branch_weights", i32 40581, i32 1021}
!641 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!642 = !{!"function_entry_count", i64 22}
!643 = !{!"branch_weights", i32 64551590, i32 18}
!644 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!645 = !{!"branch_weights", i32 4, i32 64551586}
!646 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!647 = !{!"function_entry_count", i64 155828046}
!648 = !{!"branch_weights", i32 0, i32 155828046}
!649 = !{!"branch_weights", i32 133170777, i32 22657269}
!650 = !{!"branch_weights", i32 20, i32 133170757}
!651 = !{!"branch_weights", i32 1, i32 19024395}
!652 = !{!"branch_weights", i32 19024395, i32 -26420601}
!653 = distinct !{!653, !325, !326}
!654 = !{!"branch_weights", i32 20748786, i32 1908483}
!655 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!656 = !{!"branch_weights", i32 20748786, i32 0}
!657 = !{!"branch_weights", i32 0, i32 20748786}
!658 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!659 = !{!"branch_weights", i32 0, i32 1908483}
!660 = !{!"branch_weights", i32 1, i32 1908482}
!661 = !{!"branch_weights", i32 1908482, i32 49797853}
!662 = distinct !{!662, !325, !326}
!663 = !{!"branch_weights", i32 1908482, i32 1}
!664 = distinct !{!664, !325, !326}
!665 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!666 = distinct !{!666, !325, !326}
!667 = !{!"function_entry_count", i64 124150652}
!668 = !{!"branch_weights", i32 124150652, i32 0}
!669 = !{!"function_entry_count", i64 64551586}
!670 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!671 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!672 = !{!"branch_weights", i32 42418193, i32 22133393}
!673 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!674 = distinct !{!674, !325, !326}
!675 = !{!"branch_weights", i32 1, i32 191}
!676 = distinct !{!676, !325, !326}
!677 = !{!"branch_weights", i32 191, i32 1}
!678 = distinct !{!678, !325, !326}
!679 = distinct !{!679, !325, !326}
!680 = !{!"branch_weights", i32 1, i32 143}
!681 = !{!"branch_weights", i32 143, i32 1}
!682 = distinct !{!682, !325, !326}
!683 = !{!"branch_weights", i32 465, i32 143}
!684 = !{!"function_entry_count", i64 4}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!687 = distinct !{!687, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!690 = distinct !{!690, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!691 = !{!"branch_weights", i32 2, i32 1}
!692 = !{!693}
!693 = distinct !{!693, !694, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi: argument 0"}
!694 = distinct !{!694, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi"}
!695 = distinct !{!695, !325, !326}
!696 = !{!287, !276, i64 16}
!697 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!698 = !{!"function_entry_count", i64 166}
!699 = !{!"branch_weights", i32 47, i32 119}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!702 = distinct !{!702, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!703 = !{!704, !701}
!704 = distinct !{!704, !705, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!705 = distinct !{!705, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!706 = !{!"branch_weights", i32 0, i32 119}
!707 = !{!"branch_weights", i32 119, i32 0}
!708 = distinct !{!708, !325, !326}
!709 = !{!288, !278, i64 16}
!710 = !{!"branch_weights", i32 1, i32 127}
!711 = !{!"branch_weights", i32 127, i32 3585}
!712 = distinct !{!712, !325, !326}
!713 = !{!"function_entry_count", i64 119}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!716 = distinct !{!716, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!717 = !{!315, !281, i64 8}
!718 = !{!"function_entry_count", i64 29}
!719 = !{!400, !278, i64 16}
!720 = !{!"branch_weights", i32 28, i32 1}
!721 = !{!400, !276, i64 24}
!722 = !{!400, !276, i64 0}
!723 = !{!"function_entry_count", i64 330}
!724 = !{!"branch_weights", i32 119, i32 211}
!725 = !{!"branch_weights", i32 0, i32 211}
!726 = !{!"branch_weights", i32 1, i32 210}
!727 = !{!"branch_weights", i32 210, i32 634}
!728 = distinct !{!728, !325, !326}
!729 = !{!"branch_weights", i32 211, i32 0}
!730 = distinct !{!730, !325, !326}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!733 = distinct !{!733, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPKS1_NS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!734 = !{!735, !732}
!735 = distinct !{!735, !736, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!736 = distinct !{!736, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!737 = !{!"branch_weights", i32 1, i32 118}
!738 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!739 = !{!"branch_weights", i32 1, i32 237}
!740 = !{!"branch_weights", i32 237, i32 715}
!741 = !{!742}
!742 = distinct !{!742, !743, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!743 = distinct !{!743, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!746 = distinct !{!746, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!749 = distinct !{!749, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!752 = distinct !{!752, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!755 = distinct !{!755, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!758 = distinct !{!758, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!761 = distinct !{!761, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!762 = !{!763}
!763 = distinct !{!763, !764, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!764 = distinct !{!764, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!765 = !{!766}
!766 = distinct !{!766, !767, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!767 = distinct !{!767, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPKS3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!768 = distinct !{!768, !325, !326}
!769 = distinct !{!769, !325, !326}
!770 = distinct !{!770, !325, !326}
!771 = distinct !{!771, !325, !326}
!772 = distinct !{!772, !325, !326}
!773 = distinct !{!773, !325, !326}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!776 = distinct !{!776, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!779 = distinct !{!779, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!780 = distinct !{!780, !325, !326}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!783 = distinct !{!783, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPKS2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!784 = !{i64 0, i64 8, !414, i64 8, i64 1, !522}
!785 = distinct !{!785, !325, !326}
!786 = distinct !{!786, !325, !326}
!787 = distinct !{!787, !325, !326}
!788 = distinct !{!788, !325, !326}
!789 = distinct !{!789, !325, !326}
!790 = !{!"function_entry_count", i64 30}
!791 = !{!"branch_weights", i32 30, i32 0}
!792 = !{!"branch_weights", i32 29, i32 1}
!793 = distinct !{!793, !325, !326}
!794 = distinct !{!794, !325, !326}
!795 = distinct !{!795, !325, !326}
!796 = distinct !{!796, !325, !326}
!797 = distinct !{!797, !325, !326}
!798 = distinct !{!798, !325, !326}
!799 = !{!"branch_weights", i32 119, i32 1}
!800 = !{!"function_entry_count", i64 60}
!801 = !{!"branch_weights", i32 28, i32 32}
!802 = !{!"branch_weights", i32 223, i32 137}
!803 = distinct !{!803, !325, !326}
!804 = !{!"branch_weights", i32 0, i32 32}
!805 = !{!"branch_weights", i32 32, i32 0}
!806 = distinct !{!806, !325, !326}
!807 = distinct !{!807, !325, !326}
!808 = distinct !{!808, !325, !326}
!809 = !{!"branch_weights", i32 127, i32 129}
!810 = distinct !{!810, !325, !326}
!811 = !{!"VP", i32 1, i64 32, i64 4, i64 10, i64 17, i64 9, i64 65, i64 8, i64 33, i64 5}
!812 = distinct !{!812, !325, !326}
!813 = distinct !{!813, !325, !326}
!814 = distinct !{!814, !325, !326}
!815 = distinct !{!815, !325, !326}
!816 = !{!"function_entry_count", i64 2562}
!817 = !{!"branch_weights", i32 2562, i32 0}
!818 = !{!"function_entry_count", i64 192}
!819 = !{!"branch_weights", i32 192, i32 0}
!820 = !{!"function_entry_count", i64 219}
!821 = !{!"branch_weights", i32 192, i32 27}
!822 = !{!"VP", i32 0, i64 27, i64 8345045103670217670, i64 27}
!823 = !{!"branch_weights", i32 0, i32 192}
!824 = !{!"VP", i32 0, i64 192, i64 8345045103670217670, i64 192}
!825 = !{!"function_entry_count", i64 4975155}
!826 = !{!"branch_weights", i32 4975121, i32 34}
!827 = !{!"branch_weights", i32 9, i32 25}
!828 = !{!"branch_weights", i32 34, i32 0}
!829 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!830 = !{!"branch_weights", i32 10, i32 25}
!831 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!832 = !{!"branch_weights", i32 25, i32 0}
!833 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!834 = !{!"function_entry_count", i64 25}
!835 = !{!"branch_weights", i32 0, i32 25}
!836 = !{!"branch_weights", i32 1, i32 199}
!837 = !{!"branch_weights", i32 199, i32 393}
!838 = distinct !{!838, !325, !326}
!839 = distinct !{!839, !325, !326}
!840 = distinct !{!840, !325, !326}
!841 = distinct !{!841, !325, !326}
!842 = !{!"XPathProcessorImpl.cpp;_GLOBAL__sub_I_XPathProcessorImpl.cpp"}
