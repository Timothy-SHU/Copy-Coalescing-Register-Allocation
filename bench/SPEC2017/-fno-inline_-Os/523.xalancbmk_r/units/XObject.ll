; ModuleID = 'XObject.cpp'
source_filename = "XObject.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"struct.xalanc_1_10::equalsDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::equalFunction" = type { i8 }
%"struct.xalanc_1_10::notEqualsDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::notEqualFunction" = type { i8 }
%"struct.xalanc_1_10::lessThanDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::lessThanFunction" = type { i8 }
%"struct.xalanc_1_10::greaterThanDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::greaterThanFunction" = type { i8 }
%"struct.xalanc_1_10::lessThanOrEqualDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::lessThanOrEqualFunction" = type { i8 }
%"struct.xalanc_1_10::greaterThanOrEqualDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::greaterThanOrEqualFunction" = type { i8 }
%"class.xalanc_1_10::XObject::XObjectInvalidConversionException" = type { %"class.xalanc_1_10::XObject::XObjectException", i32, i32 }
%"class.xalanc_1_10::XObject::XObjectException" = type { %"class.xalanc_1_10::XalanXPathException" }
%"class.xalanc_1_10::XalanXPathException" = type { %"class.xalanc_1_10::XSLException", ptr }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"struct.xalanc_1_10::getStringFromNodeFunction" = type { ptr }
%"struct.xalanc_1_10::getNumberFromNodeFunction" = type { ptr }
%"struct.xalanc_1_10::DOMStringEqualsFunction" = type { i8 }
%struct.anon = type { i32, i32 }
%"struct.xalanc_1_10::DOMStringNotEqualsFunction" = type { i8 }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE = comdat any

$_ZNK11xalanc_1_107XObject7getTypeEv = comdat any

$_ZN11xalanc_1_106appendERNS_14XalanDOMStringERKS0_ = comdat any

$_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_1015notEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1013DoubleSupport8notEqualEdd = comdat any

$_ZN11xalanc_1_10neERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_1015lessThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1018greaterThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1022lessThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1025greaterThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZNK11xalanc_1_107XObject33XObjectInvalidConversionException7getTypeEv = comdat any

$_ZNK11xalanc_1_107XObject16XObjectException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString4swapERS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendERKS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015equalsDOMStringC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport13equalFunctionclERKdS3_ = comdat any

$_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport13equalFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_ = comdat any

$_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1013DoubleSupport5isNaNEd = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1015equalsDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZN11xalanc_1_105clearERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1017getStringFromNodeERKNS_9XalanNodeERNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1023DOMStringEqualsFunctionclERKNS_14XalanDOMStringES3_ = comdat any

$_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZSt4copyIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE = comdat any

$_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

$_ZNK11xalanc_1_1015equalsDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1018notEqualsDOMStringC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport16notEqualFunctionclERKdS3_ = comdat any

$_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16notEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_ = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1018notEqualsDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZNK11xalanc_1_1026DOMStringNotEqualsFunctionclERKNS_14XalanDOMStringES3_ = comdat any

$_ZNK11xalanc_1_1018notEqualsDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017lessThanDOMStringC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport16lessThanFunctionclERKdS3_ = comdat any

$_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16lessThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_ = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1020greaterThanDOMStringC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport19greaterThanFunctionclERKdS3_ = comdat any

$_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport19greaterThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_ = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1024lessThanOrEqualDOMStringC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport23lessThanOrEqualFunctionclERKdS3_ = comdat any

$_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport23lessThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_ = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1027greaterThanOrEqualDOMStringC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport26greaterThanOrEqualFunctionclERKdS3_ = comdat any

$_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport26greaterThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_ = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE = comdat any

@_ZN11xalanc_1_10L20s_localBooleanStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L18s_localFalseStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L20s_localNodesetStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_localNumberStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_localStringStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_localTrueStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_107XObject15s_booleanStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, align 8
@_ZN11xalanc_1_107XObject13s_falseStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_localFalseStringE, align 8
@_ZN11xalanc_1_107XObject15s_nodesetStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, align 8
@_ZN11xalanc_1_107XObject14s_numberStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L19s_localNumberStringE, align 8
@_ZN11xalanc_1_107XObject26s_resultTreeFragmentStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, align 8
@_ZN11xalanc_1_107XObject14s_stringStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L19s_localStringStringE, align 8
@_ZN11xalanc_1_107XObject12s_trueStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L17s_localTrueStringE, align 8
@_ZN11xalanc_1_107XObject13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L9s_booleanE = internal constant [8 x i16] [i16 98, i16 111, i16 111, i16 108, i16 101, i16 97, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L7s_falseE = internal constant [6 x i16] [i16 102, i16 97, i16 108, i16 115, i16 101, i16 0], align 2
@_ZN11xalanc_1_10L9s_nodesetE = internal constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L8s_numberE = internal constant [7 x i16] [i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_10L20s_resultTreeFragmentE = internal constant [21 x i16] [i16 114, i16 101, i16 115, i16 117, i16 108, i16 116, i16 32, i16 116, i16 114, i16 101, i16 101, i16 32, i16 102, i16 114, i16 97, i16 103, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L8s_stringE = internal constant [7 x i16] [i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@_ZN11xalanc_1_10L6s_trueE = internal constant [5 x i16] [i16 116, i16 114, i16 117, i16 101, i16 0], align 2
@_ZTVN11xalanc_1_107XObjectE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107XObjectE, ptr @_ZN11xalanc_1_107XObjectD2Ev, ptr @_ZN11xalanc_1_107XObjectD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject3numEv, ptr @_ZNK11xalanc_1_107XObject7booleanEv, ptr @_ZNK11xalanc_1_107XObject3strEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE = dso_local constant [59 x i8] c"N11xalanc_1_107XObject33XObjectInvalidConversionExceptionE\00", align 1
@_ZTSN11xalanc_1_107XObject16XObjectExceptionE = dso_local constant [42 x i8] c"N11xalanc_1_107XObject16XObjectExceptionE\00", align 1
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@_ZTIN11xalanc_1_107XObject16XObjectExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107XObject16XObjectExceptionE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr @_ZTIN11xalanc_1_107XObject16XObjectExceptionE }, align 8
@_ZN11xalanc_1_10L11s_dummyListE = internal global %"class.xalanc_1_10::NodeRefList" zeroinitializer, align 8
@_ZN11xalanc_1_107XObject16XObjectException6m_typeE = dso_local constant [17 x i16] [i16 88, i16 79, i16 98, i16 106, i16 101, i16 99, i16 116, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_107XObject16XObjectExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107XObject16XObjectExceptionE, ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev, ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD0Ev, ptr @_ZNK11xalanc_1_107XObject16XObjectException7getTypeEv] }, align 8
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionException6m_typeE = dso_local constant [36 x i16] [i16 88, i16 79, i16 98, i16 106, i16 101, i16 99, i16 116, i16 73, i16 110, i16 118, i16 97, i16 108, i16 105, i16 100, i16 67, i16 111, i16 110, i16 118, i16 101, i16 114, i16 115, i16 97, i16 116, i16 105, i16 111, i16 110, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev, ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD0Ev, ptr @_ZNK11xalanc_1_107XObject33XObjectInvalidConversionException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_107XObjectE = dso_local constant [24 x i8] c"N11xalanc_1_107XObjectE\00", align 1
@_ZTIN11xalanc_1_1027XalanReferenceCountedObjectE = external constant ptr
@_ZTIN11xalanc_1_107XObjectE = dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107XObjectE, i32 0, i32 1, ptr @_ZTIN11xalanc_1_1027XalanReferenceCountedObjectE, i64 0 }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XObject.cpp, ptr null }]

@_ZN11xalanc_1_107XObjectD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObjectD2Ev
@_ZN11xalanc_1_107XObject16XObjectExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_107XObject16XObjectExceptionC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKS1_
@_ZN11xalanc_1_107XObject16XObjectExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC1ENS0_11eObjectTypeES2_ = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ERKS1_
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !128 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_localFalseStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_localFalseStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localNumberStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_localNumberStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localStringStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_localStringStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.6() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L17s_localTrueStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_localTrueStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.7() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 !prof !129 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L9s_booleanE) #15
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_localFalseStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L7s_falseE) #15
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L9s_nodesetE) #15
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localNumberStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L8s_numberE) #15
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L20s_resultTreeFragmentE) #15
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localStringStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L8s_stringE) #15
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L17s_localTrueStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L6s_trueE) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject9terminateEv() local_unnamed_addr #4 align 2 !prof !129 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_localFalseStringE, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localNumberStringE, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localStringStringE, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L17s_localTrueStringE, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !130 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  invoke void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %0) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 align 2 !prof !131 {
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #15
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_107XObjectE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !132
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !135
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 !prof !143 {
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #15
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_107XObjectE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !132
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !135
  store i32 %5, ptr %3, align 4, !tbaa !135
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !142
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !144 {
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_107XObjectD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 !prof !145 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !135
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_107XObject10referencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !146 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %3 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %4 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  invoke void @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %4) #15
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  %7 = invoke noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
          to label %8 unwind label %9

8:                                                ; preds = %5
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret double %7

9:                                                ; preds = %5, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 !prof !148 {
  store ptr %1, ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !132
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store ptr %7, ptr %3, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !152 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !153 {
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !154 {
  %3 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !159

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !149
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #15
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !160 {
  %3 = load ptr, ptr %1, align 8, !tbaa !132
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !161

8:                                                ; preds = %2
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  %10 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %17

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !132
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #15
  %16 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi double [ %10, %8 ], [ %16, %11 ]
  ret double %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !163

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0) #15
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !164 {
  %3 = load ptr, ptr %0, align 8, !tbaa !132
  %4 = getelementptr inbounds ptr, ptr %3, i64 17
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext false) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_107XObject3numEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #16
  %3 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %3, i32 noundef 3) #15
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #19
  unreachable

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !135
  ret i32 %3
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject7booleanEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #16
  %3 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %3, i32 noundef 2) #15
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #19
  unreachable

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_107XObject3strEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #16
  %3 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %3, i32 noundef 4) #15
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #19
  unreachable

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZNK11xalanc_1_107XObject3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 120) #16
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %5, i32 noundef %6, i32 noundef 4) #15
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #16
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #4 align 2 !prof !167 {
  %3 = load ptr, ptr %0, align 8, !tbaa !132
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %6) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat !prof !168 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #16
  %3 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %3, i32 noundef 6) #15
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #19
  unreachable

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %6
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.8() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  tail call void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11xalanc_1_10L11s_dummyListE, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1011NodeRefListD1Ev, ptr nonnull @_ZN11xalanc_1_10L11s_dummyListE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #16
  %3 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %3, i32 noundef 5) #15
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #19
  unreachable

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 !prof !169 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %57, label %5, !prof !170

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  switch i32 %6, label %13 [
    i32 1, label %57
    i32 0, label %7
    i32 5, label %10
  ], !prof !171

7:                                                ; preds = %5
  %8 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %9 = icmp eq i32 %8, 0
  br label %57

10:                                               ; preds = %5
  %11 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %57

13:                                               ; preds = %5
  %14 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %18, !prof !172

16:                                               ; preds = %13
  %17 = tail call noundef zeroext i1 @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %57

18:                                               ; preds = %13
  %19 = icmp eq i32 %6, 2
  %20 = icmp eq i32 %14, 2
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %33, !prof !173

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !132
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %27 = load ptr, ptr %1, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %31 = xor i1 %26, %30
  %32 = xor i1 %31, true
  br label %57

33:                                               ; preds = %18
  %34 = icmp eq i32 %6, 3
  br i1 %34, label %37, label %35, !prof !174

35:                                               ; preds = %33
  %36 = icmp eq i32 %14, 3
  br i1 %36, label %37, label %47

37:                                               ; preds = %35, %33
  %38 = load ptr, ptr %0, align 8, !tbaa !132
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %42 = load ptr, ptr %1, align 8, !tbaa !132
  %43 = getelementptr inbounds ptr, ptr %42, i64 6
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef double %44(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %46 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %41, double noundef %45) #15
  br label %57

47:                                               ; preds = %35
  %48 = load ptr, ptr %0, align 8, !tbaa !132
  %49 = getelementptr inbounds ptr, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef nonnull align 8 dereferenceable(36) ptr %50(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %52 = load ptr, ptr %1, align 8, !tbaa !132
  %53 = getelementptr inbounds ptr, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef nonnull align 8 dereferenceable(36) ptr %54(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %56 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %55) #15
  br label %57

57:                                               ; preds = %7, %10, %5, %47, %37, %22, %16, %3
  %58 = phi i1 [ true, %3 ], [ %9, %7 ], [ %12, %10 ], [ false, %5 ], [ %17, %16 ], [ %32, %22 ], [ %46, %37 ], [ %56, %47 ]
  ret i1 %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat !prof !175 {
  %5 = alloca %"struct.xalanc_1_10::equalsDOMString", align 8
  %6 = alloca %"struct.xalanc_1_10::DoubleSupport::equalFunction", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN11xalanc_1_1015equalsDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat !prof !176 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject9notEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 !prof !165 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %55, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  switch i32 %6, label %13 [
    i32 1, label %55
    i32 0, label %7
    i32 5, label %10
  ]

7:                                                ; preds = %5
  %8 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %9 = icmp ne i32 %8, 0
  br label %55

10:                                               ; preds = %5
  %11 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015notEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %55

13:                                               ; preds = %5
  %14 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015notEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %55

18:                                               ; preds = %13
  %19 = icmp eq i32 %6, 2
  %20 = icmp eq i32 %14, 2
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !132
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %27 = load ptr, ptr %1, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %31 = xor i1 %26, %30
  br label %55

32:                                               ; preds = %18
  %33 = icmp eq i32 %6, 3
  %34 = icmp eq i32 %14, 3
  %35 = or i1 %33, %34
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  br i1 %35, label %37, label %46

37:                                               ; preds = %32
  %38 = getelementptr inbounds ptr, ptr %36, i64 6
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef double %39(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %41 = load ptr, ptr %1, align 8, !tbaa !132
  %42 = getelementptr inbounds ptr, ptr %41, i64 6
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef double %43(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %45 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8notEqualEdd(double noundef %40, double noundef %44) #15
  br label %55

46:                                               ; preds = %32
  %47 = getelementptr inbounds ptr, ptr %36, i64 8
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef nonnull align 8 dereferenceable(36) ptr %48(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %50 = load ptr, ptr %1, align 8, !tbaa !132
  %51 = getelementptr inbounds ptr, ptr %50, i64 8
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef nonnull align 8 dereferenceable(36) ptr %52(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %54 = tail call noundef zeroext i1 @_ZN11xalanc_1_10neERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %49, ptr noundef nonnull align 8 dereferenceable(36) %53) #15
  br label %55

55:                                               ; preds = %7, %10, %5, %46, %37, %22, %16, %3
  %56 = phi i1 [ false, %3 ], [ %9, %7 ], [ %12, %10 ], [ true, %5 ], [ %17, %16 ], [ %31, %22 ], [ %45, %37 ], [ %54, %46 ]
  ret i1 %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015notEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca %"struct.xalanc_1_10::notEqualsDOMString", align 8
  %6 = alloca %"struct.xalanc_1_10::DoubleSupport::notEqualFunction", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN11xalanc_1_1018notEqualsDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8notEqualEdd(double noundef %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %0, double noundef %1) #15
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10neERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat !prof !165 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject8lessThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 !prof !165 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, 5
  %10 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br i1 %9, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015lessThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 5
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018greaterThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !132
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef double %20(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %22 = load ptr, ptr %1, align 8, !tbaa !132
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef double %24(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %21, double noundef %25) #15
  br label %27

27:                                               ; preds = %11, %15, %17, %5, %3
  %28 = phi i1 [ false, %3 ], [ %12, %11 ], [ %16, %15 ], [ %26, %17 ], [ false, %5 ]
  ret i1 %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015lessThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca %"struct.xalanc_1_10::lessThanDOMString", align 8
  %6 = alloca %"struct.xalanc_1_10::DoubleSupport::lessThanFunction", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN11xalanc_1_1017lessThanDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1018greaterThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca %"struct.xalanc_1_10::greaterThanDOMString", align 8
  %6 = alloca %"struct.xalanc_1_10::DoubleSupport::greaterThanFunction", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN11xalanc_1_1020greaterThanDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject16lessThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 !prof !165 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, 5
  %10 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br i1 %9, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022lessThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 5
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZN11xalanc_1_1025greaterThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !132
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef double %20(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %22 = load ptr, ptr %1, align 8, !tbaa !132
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef double %24(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %21, double noundef %25) #15
  br label %27

27:                                               ; preds = %11, %15, %17, %5, %3
  %28 = phi i1 [ false, %3 ], [ %12, %11 ], [ %16, %15 ], [ %26, %17 ], [ false, %5 ]
  ret i1 %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022lessThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca %"struct.xalanc_1_10::lessThanOrEqualDOMString", align 8
  %6 = alloca %"struct.xalanc_1_10::DoubleSupport::lessThanOrEqualFunction", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN11xalanc_1_1024lessThanOrEqualDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1025greaterThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca %"struct.xalanc_1_10::greaterThanOrEqualDOMString", align 8
  %6 = alloca %"struct.xalanc_1_10::DoubleSupport::greaterThanOrEqualFunction", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN11xalanc_1_1027greaterThanOrEqualDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject11greaterThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 !prof !165 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, 5
  %10 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br i1 %9, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018greaterThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 5
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015lessThanNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !132
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef double %20(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %22 = load ptr, ptr %1, align 8, !tbaa !132
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef double %24(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %21, double noundef %25) #15
  br label %27

27:                                               ; preds = %11, %15, %17, %5, %3
  %28 = phi i1 [ false, %3 ], [ %12, %11 ], [ %16, %15 ], [ %26, %17 ], [ false, %5 ]
  ret i1 %28
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject19greaterThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 !prof !165 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, 5
  %10 = tail call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br i1 %9, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1025greaterThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 5
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022lessThanOrEqualNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  br label %27

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !132
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef double %20(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %22 = load ptr, ptr %1, align 8, !tbaa !132
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef double %24(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %21, double noundef %25) #15
  br label %27

27:                                               ; preds = %11, %15, %17, %5, %3
  %28 = phi i1 [ false, %3 ], [ %12, %11 ], [ %16, %15 ], [ %26, %17 ], [ false, %5 ]
  ret i1 %28
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 !prof !165 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject16XObjectExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !132
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #4 align 2 !prof !165 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject16XObjectExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !132
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 !prof !165 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #15
          to label %7 unwind label %11

7:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
          to label %8 unwind label %11

8:                                                ; preds = %7
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !177
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 2
  store i32 %2, ptr %10, align 4, !tbaa !185
  ret void

11:                                               ; preds = %7, %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #4 align 2 !prof !165 {
  tail call void @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) #15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !132
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %1, i64 0, i32 1
  %5 = load <2 x i32>, ptr %4, align 8, !tbaa !186
  store <2 x i32> %5, ptr %3, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionException17formatErrorStringERKNS_14XalanDOMStringES4_RS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 align 2 !prof !165 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !187
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_107XObject33XObjectInvalidConversionException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 !prof !165 {
  ret ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionException6m_typeE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_107XObject16XObjectException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 !prof !165 {
  ret ptr @_ZN11xalanc_1_107XObject16XObjectException6m_typeE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !188 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !189
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !190

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #15
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !192 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !193 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !194

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #15
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !195, !llvm.loop !196

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !198 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !199 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !193 {
  %3 = load ptr, ptr %0, align 8, !tbaa !200
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !201 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !202 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !204 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  tail call void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !205 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !206 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !191
  %7 = load ptr, ptr %1, align 8, !tbaa !200
  store ptr %7, ptr %0, align 8, !tbaa !200
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !207
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  store ptr %11, ptr %5, align 8, !tbaa !191
  store ptr %3, ptr %1, align 8, !tbaa !200
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !207
  store <2 x i64> %9, ptr %4, align 8, !tbaa !207
  store <2 x i64> %12, ptr %8, align 8, !tbaa !207
  store ptr %6, ptr %10, align 8, !tbaa !191
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat !prof !204 {
  %3 = load i32, ptr %0, align 4, !tbaa !208
  %4 = load i32, ptr %1, align 4, !tbaa !208
  store i32 %4, ptr %0, align 4, !tbaa !208
  store i32 %3, ptr %1, align 4, !tbaa !208
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !209 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %3, i32 noundef %4) #15
  ret ptr %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !210 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br i1 %2, label %5, label %3, !prof !211

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !212 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !213 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !203
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !214 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !215 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !216
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !175 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %12 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %13 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %69 [
    i32 5, label %14
    i32 2, label %24
    i32 3, label %35
    i32 6, label %45
    i32 4, label %63
  ], !prof !217

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !132
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %23 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %69

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %29 = select i1 %28, double 1.000000e+00, double 0.000000e+00
  store double %29, ptr %8, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !132
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef double %32(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store double %33, ptr %9, align 8, !tbaa !218
  %34 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport13equalFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %44 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport13equalFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %10, double noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %69

45:                                               ; preds = %6
  %46 = load ptr, ptr %1, align 8, !tbaa !132
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef double %48(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %49) #15
  %51 = load ptr, ptr %0, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %50, label %61, label %55

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !132
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport13equalFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %69

61:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %69

63:                                               ; preds = %6
  %64 = load ptr, ptr %0, align 8, !tbaa !132
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %68 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %69

69:                                               ; preds = %6, %55, %61, %24, %63, %35, %14
  %70 = phi i1 [ %23, %14 ], [ %34, %24 ], [ %44, %35 ], [ %68, %63 ], [ %60, %55 ], [ %62, %61 ], [ false, %6 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015equalsDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !175 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %24 unwind label %22

20:                                               ; preds = %65
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %21 = icmp ne i8 %68, 0
  br label %75

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %73

24:                                               ; preds = %19, %65
  %25 = phi i8 [ %37, %65 ], [ 0, %19 ]
  %26 = phi i32 [ %66, %65 ], [ 0, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26) #15
          to label %31 unwind label %39

31:                                               ; preds = %24
  %32 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %32) #15
          to label %33 unwind label %39

33:                                               ; preds = %31
  %34 = and i8 %25, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %58, %33
  %37 = phi i8 [ %25, %33 ], [ %59, %58 ]
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %65 unwind label %39

39:                                               ; preds = %36, %31, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %71

41:                                               ; preds = %33, %58
  %42 = phi i8 [ %59, %58 ], [ %25, %33 ]
  %43 = phi i32 [ %60, %58 ], [ 0, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %43) #15
          to label %48 unwind label %56

48:                                               ; preds = %41
  %49 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(36) %49) #15
          to label %50 unwind label %56

50:                                               ; preds = %48
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %53 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015equalsDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52) #15
          to label %54 unwind label %56

54:                                               ; preds = %50
  %55 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
          to label %58 unwind label %56

56:                                               ; preds = %54, %50, %48, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %54
  %59 = select i1 %53, i8 1, i8 %42
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %17
  %62 = and i8 %59, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %41, label %36, !llvm.loop !221

65:                                               ; preds = %36
  %66 = add nuw i32 %26, 1
  %67 = icmp ult i32 %66, %11
  %68 = and i8 %37, 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %24, label %20, !llvm.loop !222

71:                                               ; preds = %56, %39
  %72 = phi { ptr, i32 } [ %57, %56 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %73

73:                                               ; preds = %71, %22
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %74

75:                                               ; preds = %13, %20, %5
  %76 = phi i1 [ false, %5 ], [ %21, %20 ], [ false, %13 ]
  ret i1 %76
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !175 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport13equalFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load double, ptr %1, align 8, !tbaa !218
  %5 = load double, ptr %2, align 8, !tbaa !218
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %4, double noundef %5) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport13equalFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %2, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %16
  %13 = icmp ne i8 %28, 0
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i1 [ false, %4 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %4, %16
  %17 = phi i8 [ %25, %16 ], [ 0, %4 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %23 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  store double %23, ptr %6, align 8, !tbaa !218
  %24 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport13equalFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %25 = select i1 %24, i8 1, i8 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %26 = add nuw i32 %18, 1
  %27 = icmp ult i32 %26, %10
  %28 = and i8 %25, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %16, label %12, !llvm.loop !223
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) local_unnamed_addr #4 comdat align 2 !prof !224 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, double noundef %0) #15
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !175 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %22, label %13, !prof !225

13:                                               ; preds = %5, %35
  %14 = phi i8 [ %36, %35 ], [ 0, %5 ]
  %15 = phi i32 [ %37, %35 ], [ 0, %5 ]
  %16 = and i8 %14, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18, !prof !226

18:                                               ; preds = %35, %13
  %19 = phi i8 [ %14, %13 ], [ %36, %35 ]
  %20 = and i8 %19, 1
  %21 = icmp ne i8 %20, 0
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ false, %5 ], [ %21, %18 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i1 %23

24:                                               ; preds = %13
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %15) #15
          to label %29 unwind label %33

29:                                               ; preds = %24
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %30 unwind label %33

30:                                               ; preds = %29
  %31 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015equalsDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %32 unwind label %33

32:                                               ; preds = %30
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %35 unwind label %33

33:                                               ; preds = %32, %30, %29, %24
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %34

35:                                               ; preds = %32
  %36 = select i1 %31, i8 1, i8 %14
  %37 = add nuw i32 %15, 1
  %38 = icmp eq i32 %37, %10
  br i1 %38, label %18, label %13, !prof !227, !llvm.loop !228
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  tail call void @_ZN11xalanc_1_1017getStringFromNodeERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1015equalsDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = alloca %"struct.xalanc_1_10::DOMStringEqualsFunction", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1023DOMStringEqualsFunctionclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat !prof !229 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017getStringFromNodeERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat !prof !165 {
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1023DOMStringEqualsFunctionclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat !prof !230 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #15
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !231 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #15
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !216
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !232 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !233

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #15
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #15
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !234 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !234 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !235

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !236, !llvm.loop !237

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !238 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !234 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !220
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !239 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !240 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !234 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !241 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !234 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !240 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !242

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !243 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !203
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !203
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !191
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #15
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !238 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !220
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !238 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !238 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %3 = tail call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %3 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !244
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  invoke void @_ZN11xalanc_1_1017getStringFromNodeERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %5) #15
          to label %6 unwind label %12

6:                                                ; preds = %2
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %8 = load ptr, ptr %0, align 8, !tbaa !244
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  %10 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
          to label %11 unwind label %12

11:                                               ; preds = %6
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret double %10

12:                                               ; preds = %6, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !246 {
  %3 = load i32, ptr %0, align 8, !tbaa !247
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !248
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1015equalsDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = alloca %"struct.xalanc_1_10::DOMStringEqualsFunction", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %5 = load ptr, ptr %2, align 8, !tbaa !132
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %9 = call noundef zeroext i1 @_ZNK11xalanc_1_1023DOMStringEqualsFunctionclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i1 %9
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !165 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %12 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %13 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %69 [
    i32 5, label %14
    i32 2, label %24
    i32 3, label %35
    i32 6, label %45
    i32 4, label %63
  ]

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !132
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %23 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %69

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %29 = select i1 %28, double 1.000000e+00, double 0.000000e+00
  store double %29, ptr %8, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !132
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef double %32(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store double %33, ptr %9, align 8, !tbaa !218
  %34 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport16notEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %44 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16notEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %10, double noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %69

45:                                               ; preds = %6
  %46 = load ptr, ptr %1, align 8, !tbaa !132
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef double %48(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %49) #15
  %51 = load ptr, ptr %0, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %50, label %61, label %55

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !132
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16notEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %69

61:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %69

63:                                               ; preds = %6
  %64 = load ptr, ptr %0, align 8, !tbaa !132
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %68 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %69

69:                                               ; preds = %6, %55, %61, %24, %63, %35, %14
  %70 = phi i1 [ %23, %14 ], [ %34, %24 ], [ %44, %35 ], [ %68, %63 ], [ %60, %55 ], [ %62, %61 ], [ false, %6 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018notEqualsDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %24 unwind label %22

20:                                               ; preds = %65
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %21 = icmp ne i8 %68, 0
  br label %75

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %73

24:                                               ; preds = %19, %65
  %25 = phi i8 [ %37, %65 ], [ 0, %19 ]
  %26 = phi i32 [ %66, %65 ], [ 0, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26) #15
          to label %31 unwind label %39

31:                                               ; preds = %24
  %32 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %32) #15
          to label %33 unwind label %39

33:                                               ; preds = %31
  %34 = and i8 %25, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %58, %33
  %37 = phi i8 [ %25, %33 ], [ %59, %58 ]
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %65 unwind label %39

39:                                               ; preds = %36, %31, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %71

41:                                               ; preds = %33, %58
  %42 = phi i8 [ %59, %58 ], [ %25, %33 ]
  %43 = phi i32 [ %60, %58 ], [ 0, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %43) #15
          to label %48 unwind label %56

48:                                               ; preds = %41
  %49 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(36) %49) #15
          to label %50 unwind label %56

50:                                               ; preds = %48
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %53 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018notEqualsDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52) #15
          to label %54 unwind label %56

54:                                               ; preds = %50
  %55 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
          to label %58 unwind label %56

56:                                               ; preds = %54, %50, %48, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %54
  %59 = select i1 %53, i8 1, i8 %42
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %17
  %62 = and i8 %59, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %41, label %36, !llvm.loop !249

65:                                               ; preds = %36
  %66 = add nuw i32 %26, 1
  %67 = icmp ult i32 %66, %11
  %68 = and i8 %37, 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %24, label %20, !llvm.loop !250

71:                                               ; preds = %56, %39
  %72 = phi { ptr, i32 } [ %57, %56 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %73

73:                                               ; preds = %71, %22
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %74

75:                                               ; preds = %13, %20, %5
  %76 = phi i1 [ false, %5 ], [ %21, %20 ], [ false, %13 ]
  ret i1 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport16notEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load double, ptr %1, align 8, !tbaa !218
  %5 = load double, ptr %2, align 8, !tbaa !218
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8notEqualEdd(double noundef %4, double noundef %5) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16notEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %2, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %16
  %13 = icmp ne i8 %28, 0
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i1 [ false, %4 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %4, %16
  %17 = phi i8 [ %25, %16 ], [ 0, %4 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %23 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  store double %23, ptr %6, align 8, !tbaa !218
  %24 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport16notEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %25 = select i1 %24, i8 1, i8 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %26 = add nuw i32 %18, 1
  %27 = icmp ult i32 %26, %10
  %28 = and i8 %25, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %16, label %12, !llvm.loop !251
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %15, label %17

13:                                               ; preds = %30
  %14 = icmp ne i8 %34, 0
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i1 [ false, %5 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i1 %16

17:                                               ; preds = %5, %30
  %18 = phi i8 [ %31, %30 ], [ 0, %5 ]
  %19 = phi i32 [ %32, %30 ], [ 0, %5 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !132
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %19) #15
          to label %24 unwind label %28

24:                                               ; preds = %17
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %25 unwind label %28

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018notEqualsDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %27 unwind label %28

27:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %30 unwind label %28

28:                                               ; preds = %27, %25, %24, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %29

30:                                               ; preds = %27
  %31 = select i1 %26, i8 1, i8 %18
  %32 = add nuw i32 %19, 1
  %33 = icmp ult i32 %32, %10
  %34 = and i8 %31, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %17, label %13, !llvm.loop !252
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018notEqualsDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = alloca %"struct.xalanc_1_10::DOMStringNotEqualsFunction", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1026DOMStringNotEqualsFunctionclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1026DOMStringNotEqualsFunctionclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #15
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018notEqualsDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = alloca %"struct.xalanc_1_10::DOMStringNotEqualsFunction", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %5 = load ptr, ptr %2, align 8, !tbaa !132
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %9 = call noundef zeroext i1 @_ZNK11xalanc_1_1026DOMStringNotEqualsFunctionclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !165 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %12 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %13 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %69 [
    i32 5, label %14
    i32 2, label %24
    i32 3, label %35
    i32 6, label %45
    i32 4, label %63
  ]

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !132
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %23 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %69

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %29 = select i1 %28, double 1.000000e+00, double 0.000000e+00
  store double %29, ptr %8, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !132
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef double %32(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store double %33, ptr %9, align 8, !tbaa !218
  %34 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport16lessThanFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %44 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16lessThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %10, double noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %69

45:                                               ; preds = %6
  %46 = load ptr, ptr %1, align 8, !tbaa !132
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef double %48(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %49) #15
  %51 = load ptr, ptr %0, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %50, label %61, label %55

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !132
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16lessThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %69

61:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %69

63:                                               ; preds = %6
  %64 = load ptr, ptr %0, align 8, !tbaa !132
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %68 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %69

69:                                               ; preds = %6, %55, %61, %24, %63, %35, %14
  %70 = phi i1 [ %23, %14 ], [ %34, %24 ], [ %44, %35 ], [ %68, %63 ], [ %60, %55 ], [ %62, %61 ], [ false, %6 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017lessThanDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %24 unwind label %22

20:                                               ; preds = %65
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %21 = icmp ne i8 %68, 0
  br label %75

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %73

24:                                               ; preds = %19, %65
  %25 = phi i8 [ %37, %65 ], [ 0, %19 ]
  %26 = phi i32 [ %66, %65 ], [ 0, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26) #15
          to label %31 unwind label %39

31:                                               ; preds = %24
  %32 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %32) #15
          to label %33 unwind label %39

33:                                               ; preds = %31
  %34 = and i8 %25, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %58, %33
  %37 = phi i8 [ %25, %33 ], [ %59, %58 ]
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %65 unwind label %39

39:                                               ; preds = %36, %31, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %71

41:                                               ; preds = %33, %58
  %42 = phi i8 [ %59, %58 ], [ %25, %33 ]
  %43 = phi i32 [ %60, %58 ], [ 0, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %43) #15
          to label %48 unwind label %56

48:                                               ; preds = %41
  %49 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(36) %49) #15
          to label %50 unwind label %56

50:                                               ; preds = %48
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %53 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52) #15
          to label %54 unwind label %56

54:                                               ; preds = %50
  %55 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
          to label %58 unwind label %56

56:                                               ; preds = %54, %50, %48, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %54
  %59 = select i1 %53, i8 1, i8 %42
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %17
  %62 = and i8 %59, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %41, label %36, !llvm.loop !253

65:                                               ; preds = %36
  %66 = add nuw i32 %26, 1
  %67 = icmp ult i32 %66, %11
  %68 = and i8 %37, 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %24, label %20, !llvm.loop !254

71:                                               ; preds = %56, %39
  %72 = phi { ptr, i32 } [ %57, %56 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %73

73:                                               ; preds = %71, %22
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %74

75:                                               ; preds = %13, %20, %5
  %76 = phi i1 [ false, %5 ], [ %21, %20 ], [ false, %13 ]
  ret i1 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport16lessThanFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load double, ptr %1, align 8, !tbaa !218
  %5 = load double, ptr %2, align 8, !tbaa !218
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %4, double noundef %5) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport16lessThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %2, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %16
  %13 = icmp ne i8 %28, 0
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i1 [ false, %4 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %4, %16
  %17 = phi i8 [ %25, %16 ], [ 0, %4 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %23 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  store double %23, ptr %6, align 8, !tbaa !218
  %24 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport16lessThanFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %25 = select i1 %24, i8 1, i8 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %26 = add nuw i32 %18, 1
  %27 = icmp ult i32 %26, %10
  %28 = and i8 %25, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %16, label %12, !llvm.loop !255
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %15, label %17

13:                                               ; preds = %30
  %14 = icmp ne i8 %34, 0
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i1 [ false, %5 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i1 %16

17:                                               ; preds = %5, %30
  %18 = phi i8 [ %31, %30 ], [ 0, %5 ]
  %19 = phi i32 [ %32, %30 ], [ 0, %5 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !132
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %19) #15
          to label %24 unwind label %28

24:                                               ; preds = %17
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %25 unwind label %28

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %27 unwind label %28

27:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %30 unwind label %28

28:                                               ; preds = %27, %25, %24, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %29

30:                                               ; preds = %27
  %31 = select i1 %26, i8 1, i8 %18
  %32 = add nuw i32 %19, 1
  %33 = icmp ult i32 %32, %10
  %34 = and i8 %31, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %17, label %13, !llvm.loop !256
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !257
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !257
  %7 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %5, double noundef %7) #15
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !165 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  %4 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret double %4
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat !prof !259 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !257
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !132
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef double %8(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %5, double noundef %9) #15
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !165 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %12 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %13 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %69 [
    i32 5, label %14
    i32 2, label %24
    i32 3, label %35
    i32 6, label %45
    i32 4, label %63
  ]

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !132
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %23 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %69

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %29 = select i1 %28, double 1.000000e+00, double 0.000000e+00
  store double %29, ptr %8, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !132
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef double %32(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store double %33, ptr %9, align 8, !tbaa !218
  %34 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport19greaterThanFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %44 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport19greaterThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %10, double noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %69

45:                                               ; preds = %6
  %46 = load ptr, ptr %1, align 8, !tbaa !132
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef double %48(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %49) #15
  %51 = load ptr, ptr %0, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %50, label %61, label %55

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !132
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport19greaterThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %69

61:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %69

63:                                               ; preds = %6
  %64 = load ptr, ptr %0, align 8, !tbaa !132
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %68 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %69

69:                                               ; preds = %6, %55, %61, %24, %63, %35, %14
  %70 = phi i1 [ %23, %14 ], [ %34, %24 ], [ %44, %35 ], [ %68, %63 ], [ %60, %55 ], [ %62, %61 ], [ false, %6 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020greaterThanDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %24 unwind label %22

20:                                               ; preds = %65
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %21 = icmp ne i8 %68, 0
  br label %75

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %73

24:                                               ; preds = %19, %65
  %25 = phi i8 [ %37, %65 ], [ 0, %19 ]
  %26 = phi i32 [ %66, %65 ], [ 0, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26) #15
          to label %31 unwind label %39

31:                                               ; preds = %24
  %32 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %32) #15
          to label %33 unwind label %39

33:                                               ; preds = %31
  %34 = and i8 %25, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %58, %33
  %37 = phi i8 [ %25, %33 ], [ %59, %58 ]
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %65 unwind label %39

39:                                               ; preds = %36, %31, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %71

41:                                               ; preds = %33, %58
  %42 = phi i8 [ %59, %58 ], [ %25, %33 ]
  %43 = phi i32 [ %60, %58 ], [ 0, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %43) #15
          to label %48 unwind label %56

48:                                               ; preds = %41
  %49 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(36) %49) #15
          to label %50 unwind label %56

50:                                               ; preds = %48
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %53 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52) #15
          to label %54 unwind label %56

54:                                               ; preds = %50
  %55 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
          to label %58 unwind label %56

56:                                               ; preds = %54, %50, %48, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %54
  %59 = select i1 %53, i8 1, i8 %42
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %17
  %62 = and i8 %59, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %41, label %36, !llvm.loop !260

65:                                               ; preds = %36
  %66 = add nuw i32 %26, 1
  %67 = icmp ult i32 %66, %11
  %68 = and i8 %37, 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %24, label %20, !llvm.loop !261

71:                                               ; preds = %56, %39
  %72 = phi { ptr, i32 } [ %57, %56 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %73

73:                                               ; preds = %71, %22
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %74

75:                                               ; preds = %13, %20, %5
  %76 = phi i1 [ false, %5 ], [ %21, %20 ], [ false, %13 ]
  ret i1 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport19greaterThanFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load double, ptr %1, align 8, !tbaa !218
  %5 = load double, ptr %2, align 8, !tbaa !218
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %4, double noundef %5) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport19greaterThanFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %2, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %16
  %13 = icmp ne i8 %28, 0
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i1 [ false, %4 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %4, %16
  %17 = phi i8 [ %25, %16 ], [ 0, %4 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %23 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  store double %23, ptr %6, align 8, !tbaa !218
  %24 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport19greaterThanFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %25 = select i1 %24, i8 1, i8 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %26 = add nuw i32 %18, 1
  %27 = icmp ult i32 %26, %10
  %28 = and i8 %25, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %16, label %12, !llvm.loop !262
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %15, label %17

13:                                               ; preds = %30
  %14 = icmp ne i8 %34, 0
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i1 [ false, %5 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i1 %16

17:                                               ; preds = %5, %30
  %18 = phi i8 [ %31, %30 ], [ 0, %5 ]
  %19 = phi i32 [ %32, %30 ], [ 0, %5 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !132
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %19) #15
          to label %24 unwind label %28

24:                                               ; preds = %17
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %25 unwind label %28

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %27 unwind label %28

27:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %30 unwind label %28

28:                                               ; preds = %27, %25, %24, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %29

30:                                               ; preds = %27
  %31 = select i1 %26, i8 1, i8 %18
  %32 = add nuw i32 %19, 1
  %33 = icmp ult i32 %32, %10
  %34 = and i8 %31, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %17, label %13, !llvm.loop !263
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !264
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !264
  %7 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %5, double noundef %7) #15
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !264
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !132
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef double %8(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %5, double noundef %9) #15
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !165 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %12 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %13 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %69 [
    i32 5, label %14
    i32 2, label %24
    i32 3, label %35
    i32 6, label %45
    i32 4, label %63
  ]

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !132
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %23 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %69

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %29 = select i1 %28, double 1.000000e+00, double 0.000000e+00
  store double %29, ptr %8, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !132
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef double %32(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store double %33, ptr %9, align 8, !tbaa !218
  %34 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport23lessThanOrEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %44 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport23lessThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %10, double noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %69

45:                                               ; preds = %6
  %46 = load ptr, ptr %1, align 8, !tbaa !132
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef double %48(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %49) #15
  %51 = load ptr, ptr %0, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %50, label %61, label %55

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !132
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport23lessThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %69

61:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %69

63:                                               ; preds = %6
  %64 = load ptr, ptr %0, align 8, !tbaa !132
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %68 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %69

69:                                               ; preds = %6, %55, %61, %24, %63, %35, %14
  %70 = phi i1 [ %23, %14 ], [ %34, %24 ], [ %44, %35 ], [ %68, %63 ], [ %60, %55 ], [ %62, %61 ], [ false, %6 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024lessThanOrEqualDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %24 unwind label %22

20:                                               ; preds = %65
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %21 = icmp ne i8 %68, 0
  br label %75

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %73

24:                                               ; preds = %19, %65
  %25 = phi i8 [ %37, %65 ], [ 0, %19 ]
  %26 = phi i32 [ %66, %65 ], [ 0, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26) #15
          to label %31 unwind label %39

31:                                               ; preds = %24
  %32 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %32) #15
          to label %33 unwind label %39

33:                                               ; preds = %31
  %34 = and i8 %25, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %58, %33
  %37 = phi i8 [ %25, %33 ], [ %59, %58 ]
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %65 unwind label %39

39:                                               ; preds = %36, %31, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %71

41:                                               ; preds = %33, %58
  %42 = phi i8 [ %59, %58 ], [ %25, %33 ]
  %43 = phi i32 [ %60, %58 ], [ 0, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %43) #15
          to label %48 unwind label %56

48:                                               ; preds = %41
  %49 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(36) %49) #15
          to label %50 unwind label %56

50:                                               ; preds = %48
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %53 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52) #15
          to label %54 unwind label %56

54:                                               ; preds = %50
  %55 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
          to label %58 unwind label %56

56:                                               ; preds = %54, %50, %48, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %54
  %59 = select i1 %53, i8 1, i8 %42
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %17
  %62 = and i8 %59, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %41, label %36, !llvm.loop !266

65:                                               ; preds = %36
  %66 = add nuw i32 %26, 1
  %67 = icmp ult i32 %66, %11
  %68 = and i8 %37, 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %24, label %20, !llvm.loop !267

71:                                               ; preds = %56, %39
  %72 = phi { ptr, i32 } [ %57, %56 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %73

73:                                               ; preds = %71, %22
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %74

75:                                               ; preds = %13, %20, %5
  %76 = phi i1 [ false, %5 ], [ %21, %20 ], [ false, %13 ]
  ret i1 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport23lessThanOrEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load double, ptr %1, align 8, !tbaa !218
  %5 = load double, ptr %2, align 8, !tbaa !218
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %4, double noundef %5) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport23lessThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %2, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %16
  %13 = icmp ne i8 %28, 0
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i1 [ false, %4 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %4, %16
  %17 = phi i8 [ %25, %16 ], [ 0, %4 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %23 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  store double %23, ptr %6, align 8, !tbaa !218
  %24 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport23lessThanOrEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %25 = select i1 %24, i8 1, i8 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %26 = add nuw i32 %18, 1
  %27 = icmp ult i32 %26, %10
  %28 = and i8 %25, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %16, label %12, !llvm.loop !268
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %15, label %17

13:                                               ; preds = %30
  %14 = icmp ne i8 %34, 0
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i1 [ false, %5 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i1 %16

17:                                               ; preds = %5, %30
  %18 = phi i8 [ %31, %30 ], [ 0, %5 ]
  %19 = phi i32 [ %32, %30 ], [ 0, %5 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !132
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %19) #15
          to label %24 unwind label %28

24:                                               ; preds = %17
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %25 unwind label %28

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %27 unwind label %28

27:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %30 unwind label %28

28:                                               ; preds = %27, %25, %24, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %29

30:                                               ; preds = %27
  %31 = select i1 %26, i8 1, i8 %18
  %32 = add nuw i32 %19, 1
  %33 = icmp ult i32 %32, %10
  %34 = and i8 %31, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %17, label %13, !llvm.loop !269
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !270
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !270
  %7 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %5, double noundef %7) #15
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !270
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !132
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef double %8(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %5, double noundef %9) #15
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !165 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %12 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %13 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %69 [
    i32 5, label %14
    i32 2, label %24
    i32 3, label %35
    i32 6, label %45
    i32 4, label %63
  ]

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !132
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %23 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %69

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !132
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %29 = select i1 %28, double 1.000000e+00, double 0.000000e+00
  store double %29, ptr %8, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !132
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef double %32(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  store double %33, ptr %9, align 8, !tbaa !218
  %34 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport26greaterThanOrEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 8, !tbaa !132
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !132
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %44 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport26greaterThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %10, double noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %69

45:                                               ; preds = %6
  %46 = load ptr, ptr %1, align 8, !tbaa !132
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef double %48(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %49) #15
  %51 = load ptr, ptr %0, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %50, label %61, label %55

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %56 = load ptr, ptr %1, align 8, !tbaa !132
  %57 = getelementptr inbounds ptr, ptr %56, i64 6
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport26greaterThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef %59, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %69

61:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %62 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %69

63:                                               ; preds = %6
  %64 = load ptr, ptr %0, align 8, !tbaa !132
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %68 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %69

69:                                               ; preds = %6, %55, %61, %24, %63, %35, %14
  %70 = phi i1 [ %23, %14 ], [ %34, %24 ], [ %44, %35 ], [ %68, %63 ], [ %60, %55 ], [ %62, %61 ], [ false, %6 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1027greaterThanOrEqualDOMStringC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !132
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %24 unwind label %22

20:                                               ; preds = %65
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %21 = icmp ne i8 %68, 0
  br label %75

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %73

24:                                               ; preds = %19, %65
  %25 = phi i8 [ %37, %65 ], [ 0, %19 ]
  %26 = phi i32 [ %66, %65 ], [ 0, %19 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !132
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26) #15
          to label %31 unwind label %39

31:                                               ; preds = %24
  %32 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %32) #15
          to label %33 unwind label %39

33:                                               ; preds = %31
  %34 = and i8 %25, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %58, %33
  %37 = phi i8 [ %25, %33 ], [ %59, %58 ]
  %38 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %38) #15
          to label %65 unwind label %39

39:                                               ; preds = %36, %31, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %71

41:                                               ; preds = %33, %58
  %42 = phi i8 [ %59, %58 ], [ %25, %33 ]
  %43 = phi i32 [ %60, %58 ], [ 0, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %43) #15
          to label %48 unwind label %56

48:                                               ; preds = %41
  %49 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(36) %49) #15
          to label %50 unwind label %56

50:                                               ; preds = %48
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  %53 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52) #15
          to label %54 unwind label %56

54:                                               ; preds = %50
  %55 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %55) #15
          to label %58 unwind label %56

56:                                               ; preds = %54, %50, %48, %41
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %54
  %59 = select i1 %53, i8 1, i8 %42
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %17
  %62 = and i8 %59, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %41, label %36, !llvm.loop !272

65:                                               ; preds = %36
  %66 = add nuw i32 %26, 1
  %67 = icmp ult i32 %66, %11
  %68 = and i8 %37, 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %24, label %20, !llvm.loop !273

71:                                               ; preds = %56, %39
  %72 = phi { ptr, i32 } [ %57, %56 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  br label %73

73:                                               ; preds = %71, %22
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %74

75:                                               ; preds = %13, %20, %5
  %76 = phi i1 [ false, %5 ], [ %21, %20 ], [ false, %13 ]
  ret i1 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport26greaterThanOrEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load double, ptr %1, align 8, !tbaa !218
  %5 = load double, ptr %2, align 8, !tbaa !218
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %4, double noundef %5) #15
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport26greaterThanOrEqualFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !165 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %2, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %16
  %13 = icmp ne i8 %28, 0
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i1 [ false, %4 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %4, %16
  %17 = phi i8 [ %25, %16 ], [ 0, %4 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !132
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %23 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunctionclERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  store double %23, ptr %6, align 8, !tbaa !218
  %24 = call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport26greaterThanOrEqualFunctionclERKdS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %25 = select i1 %24, i8 1, i8 %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %26 = add nuw i32 %18, 1
  %27 = icmp ult i32 %26, %10
  %28 = and i8 %25, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %16, label %12, !llvm.loop !274
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !165 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %15, label %17

13:                                               ; preds = %30
  %14 = icmp ne i8 %34, 0
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i1 [ false, %5 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i1 %16

17:                                               ; preds = %5, %30
  %18 = phi i8 [ %31, %30 ], [ 0, %5 ]
  %19 = phi i32 [ %32, %30 ], [ 0, %5 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !132
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %19) #15
          to label %24 unwind label %28

24:                                               ; preds = %17
  invoke void @_ZNK11xalanc_1_1025getStringFromNodeFunctionclERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %25 unwind label %28

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %27 unwind label %28

27:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %11) #15
          to label %30 unwind label %28

28:                                               ; preds = %27, %25, %24, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  resume { ptr, i32 } %29

30:                                               ; preds = %27
  %31 = select i1 %26, i8 1, i8 %18
  %32 = add nuw i32 %19, 1
  %33 = icmp ult i32 %32, %10
  %34 = and i8 %31, 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %17, label %13, !llvm.loop !275
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !276
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !276
  %7 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %5, double noundef %7) #15
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %4 = load ptr, ptr %0, align 8, !tbaa !276
  %5 = tail call noundef double @_ZN11xalanc_1_1017DOMStringToDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !132
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef double %8(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %5, double noundef %9) #15
  ret i1 %10
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XObject.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.5()
  tail call fastcc void @__cxx_global_var_init.6()
  tail call fastcc void @__cxx_global_var_init.7()
  tail call fastcc void @__cxx_global_var_init.8()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!127}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt, i64 7}
!37 = !{ptr @_ZN11xalanc_1_107XObject9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 7}
!38 = !{ptr @_ZN11xalanc_1_107XObject9terminateEv, ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 7}
!39 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 153}
!40 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, i64 153}
!41 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 153}
!42 = !{ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev, i64 156792955}
!43 = !{ptr @_ZN11xalanc_1_107XObjectC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev, i64 983}
!44 = !{ptr @_ZN11xalanc_1_107XObjectD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev, i64 156793938}
!45 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 71882}
!46 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 71882}
!47 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 71882}
!48 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 71882}
!49 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 71882}
!50 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 71882}
!51 = !{ptr @_ZN11xalanc_1_107XObject6stringERKNS_9XalanNodeERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 136932}
!52 = !{ptr @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 77882}
!53 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!54 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 5999}
!55 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_107XObject6numberERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 5999}
!56 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, i64 1}
!57 = !{ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE, i64 201646770}
!58 = !{ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringERKS0_, i64 44714704}
!59 = !{ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, i64 45197691}
!60 = !{ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_107XObject7getTypeEv, i64 44760619}
!61 = !{ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE, i64 19397}
!62 = !{ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport5equalEdd, i64 22360909}
!63 = !{ptr @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 19395}
!64 = !{ptr @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1015equalsDOMStringC2ERN11xercesc_2_713MemoryManagerE, i64 19395}
!65 = !{ptr @_ZN11xalanc_1_1012equalNodeSetERKNS_7XObjectES2_NS0_11eObjectTypeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, i64 19395}
!66 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!77 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 320}
!78 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 320}
!79 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_, i64 320}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!81 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45461869}
!82 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 45461869}
!83 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 45461869}
!84 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!85 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!86 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!87 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!88 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!89 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!90 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!91 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1025getStringFromNodeFunctionC2ERNS_21XPathExecutionContextE, i64 19391}
!92 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1013DoubleSupport13equalFunctionclERKdS3_, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1025getNumberFromNodeFunctionC2ERNS_21XPathExecutionContextE, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1015doCompareNumberINS_13DoubleSupport13equalFunctionENS_25getNumberFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_dRKT_, i64 1}
!96 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 1}
!97 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE, i64 19390}
!98 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 404042974}
!99 = !{ptr @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 19395}
!100 = !{ptr @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 19395}
!101 = !{ptr @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 19395}
!102 = !{ptr @_ZN11xalanc_1_105clearERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, i64 48076702}
!103 = !{ptr @_ZN11xalanc_1_106equalsERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 4704705}
!104 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!105 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!106 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!107 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!113 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!114 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!117 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!118 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!119 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!120 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!121 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!124 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!125 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!126 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!127 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!128 = !{!"function_entry_count", i64 43398227}
!129 = !{!"function_entry_count", i64 1}
!130 = !{!"function_entry_count", i64 153}
!131 = !{!"function_entry_count", i64 156792955}
!132 = !{!133, !133, i64 0}
!133 = !{!"vtable pointer", !134, i64 0}
!134 = !{!"Simple C++ TBAA"}
!135 = !{!136, !140, i64 12}
!136 = !{!"_ZTSN11xalanc_1_107XObjectE", !137, i64 0, !140, i64 12, !141, i64 16}
!137 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !138, i64 8}
!138 = !{!"int", !139, i64 0}
!139 = !{!"omnipotent char", !134, i64 0}
!140 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !139, i64 0}
!141 = !{!"any pointer", !139, i64 0}
!142 = !{!136, !141, i64 16}
!143 = !{!"function_entry_count", i64 983}
!144 = !{!"function_entry_count", i64 156793938}
!145 = !{!"function_entry_count", i64 44892080}
!146 = !{!"function_entry_count", i64 201703441}
!147 = !{!"function_entry_count", i64 71882}
!148 = !{!"function_entry_count", i64 67594463}
!149 = !{!150, !141, i64 0}
!150 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !141, i64 0, !141, i64 8}
!151 = !{!150, !141, i64 8}
!152 = !{!"function_entry_count", i64 201578993}
!153 = !{!"function_entry_count", i64 136932}
!154 = !{!"function_entry_count", i64 77882}
!155 = !{!"function_entry_count", i64 280295}
!156 = !{!157, !141, i64 8}
!157 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !141, i64 8}
!158 = !{!"function_entry_count", i64 134708288}
!159 = !{!"branch_weights", i32 67113826, i32 67594464}
!160 = !{!"function_entry_count", i64 6000}
!161 = !{!"branch_weights", i32 6001, i32 1}
!162 = !{!"function_entry_count", i64 201666166}
!163 = !{!"branch_weights", i32 19396, i32 201646772}
!164 = !{!"function_entry_count", i64 201646771}
!165 = !{!"function_entry_count", i64 0}
!166 = !{!"function_entry_count", i64 44780017}
!167 = !{!"function_entry_count", i64 44714704}
!168 = !{!"function_entry_count", i64 45197691}
!169 = !{!"function_entry_count", i64 22380311}
!170 = !{!"branch_weights", i32 1, i32 22380312}
!171 = !{!"branch_weights", i32 -1748359496, i32 113, i32 113, i32 2208943}
!172 = !{!"branch_weights", i32 1, i32 22360917}
!173 = !{!"branch_weights", i32 341, i32 -480189090}
!174 = !{!"branch_weights", i32 22360917, i32 1}
!175 = !{!"function_entry_count", i64 19395}
!176 = !{!"function_entry_count", i64 555646850}
!177 = !{!178, !140, i64 112}
!178 = !{!"_ZTSN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE", !179, i64 0, !140, i64 112, !140, i64 116}
!179 = !{!"_ZTSN11xalanc_1_107XObject16XObjectExceptionE", !180, i64 0}
!180 = !{!"_ZTSN11xalanc_1_1019XalanXPathExceptionE", !181, i64 0, !141, i64 104}
!181 = !{!"_ZTSN11xalanc_1_1012XSLExceptionE", !182, i64 8, !182, i64 48, !184, i64 88, !184, i64 96}
!182 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !183, i64 0, !138, i64 32}
!183 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !141, i64 0, !184, i64 8, !184, i64 16, !141, i64 24}
!184 = !{!"long", !139, i64 0}
!185 = !{!178, !140, i64 116}
!186 = !{!140, !140, i64 0}
!187 = !{!137, !138, i64 8}
!188 = !{!"function_entry_count", i64 128698679}
!189 = !{!183, !184, i64 16}
!190 = !{!"branch_weights", i32 43398290, i32 85300391}
!191 = !{!183, !141, i64 24}
!192 = !{!"function_entry_count", i64 6521798493}
!193 = !{!"function_entry_count", i64 85300390}
!194 = !{!"branch_weights", i32 1, i32 12185770}
!195 = !{!"branch_weights", i32 12185770, i32 -193930396}
!196 = distinct !{!196, !197}
!197 = !{!"llvm.loop.mustprogress"}
!198 = !{!"function_entry_count", i64 227375739}
!199 = !{!"function_entry_count", i64 568333389}
!200 = !{!183, !141, i64 0}
!201 = !{!"function_entry_count", i64 30137156660}
!202 = !{!"function_entry_count", i64 825654971}
!203 = !{!183, !184, i64 8}
!204 = !{!"function_entry_count", i64 320}
!205 = !{!"function_entry_count", i64 3070433834}
!206 = !{!"function_entry_count", i64 85300747}
!207 = !{!184, !184, i64 0}
!208 = !{!138, !138, i64 0}
!209 = !{!"function_entry_count", i64 45461869}
!210 = !{!"function_entry_count", i64 967143541}
!211 = !{!"branch_weights", i32 403628487, i32 563515056}
!212 = !{!"function_entry_count", i64 230527004}
!213 = !{!"function_entry_count", i64 1083116306}
!214 = !{!"function_entry_count", i64 565220908}
!215 = !{!"function_entry_count", i64 1414337980}
!216 = !{!182, !138, i64 32}
!217 = !{!"branch_weights", i32 128720, i32 128746, i32 128740, i32 128733, i32 128727, i32 -1798297827}
!218 = !{!219, !219, i64 0}
!219 = !{!"double", !139, i64 0}
!220 = !{!141, !141, i64 0}
!221 = distinct !{!221, !197}
!222 = distinct !{!222, !197}
!223 = distinct !{!223, !197}
!224 = !{!"function_entry_count", i64 404042974}
!225 = !{!"branch_weights", i32 19395, i32 1}
!226 = !{!"branch_weights", i32 1, i32 19396}
!227 = !{!"branch_weights", i32 1, i32 0}
!228 = distinct !{!228, !197}
!229 = !{!"function_entry_count", i64 48076702}
!230 = !{!"function_entry_count", i64 4704705}
!231 = !{!"function_entry_count", i64 48269220}
!232 = !{!"function_entry_count", i64 120786442}
!233 = !{!"branch_weights", i32 92627942, i32 28158502}
!234 = !{!"function_entry_count", i64 28158501}
!235 = !{!"branch_weights", i32 1, i32 28158501}
!236 = !{!"branch_weights", i32 28158501, i32 1251710038}
!237 = distinct !{!237, !197}
!238 = !{!"function_entry_count", i64 185895030}
!239 = !{!"function_entry_count", i64 56317002}
!240 = !{!"function_entry_count", i64 30109074}
!241 = !{!"function_entry_count", i64 86426076}
!242 = !{!"branch_weights", i32 28199083, i32 1909993}
!243 = !{!"function_entry_count", i64 1344597976}
!244 = !{!245, !141, i64 0}
!245 = !{!"_ZTSN11xalanc_1_1025getNumberFromNodeFunctionE", !141, i64 0}
!246 = !{!"function_entry_count", i64 740164859}
!247 = !{!139, !139, i64 0}
!248 = !{!"branch_weights", i32 740024103, i32 140758}
!249 = distinct !{!249, !197}
!250 = distinct !{!250, !197}
!251 = distinct !{!251, !197}
!252 = distinct !{!252, !197}
!253 = distinct !{!253, !197}
!254 = distinct !{!254, !197}
!255 = distinct !{!255, !197}
!256 = distinct !{!256, !197}
!257 = !{!258, !141, i64 0}
!258 = !{!"_ZTSN11xalanc_1_1017lessThanDOMStringE", !141, i64 0}
!259 = !{!"function_entry_count", i64 12093723}
!260 = distinct !{!260, !197}
!261 = distinct !{!261, !197}
!262 = distinct !{!262, !197}
!263 = distinct !{!263, !197}
!264 = !{!265, !141, i64 0}
!265 = !{!"_ZTSN11xalanc_1_1020greaterThanDOMStringE", !141, i64 0}
!266 = distinct !{!266, !197}
!267 = distinct !{!267, !197}
!268 = distinct !{!268, !197}
!269 = distinct !{!269, !197}
!270 = !{!271, !141, i64 0}
!271 = !{!"_ZTSN11xalanc_1_1024lessThanOrEqualDOMStringE", !141, i64 0}
!272 = distinct !{!272, !197}
!273 = distinct !{!273, !197}
!274 = distinct !{!274, !197}
!275 = distinct !{!275, !197}
!276 = !{!277, !141, i64 0}
!277 = !{!"_ZTSN11xalanc_1_1027greaterThanOrEqualDOMStringE", !141, i64 0}
