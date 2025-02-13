; ModuleID = 'DOMDocumentImpl.cpp'
source_filename = "DOMDocumentImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMDeepNodeListPool" = type { i8, ptr, i64, ptr, ptr, i64, i64, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::RefArrayOf" = type { i32, ptr, ptr }
%"class.xercesc_2_7::RefStackOf" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.2" }
%"class.xercesc_2_7::RefVectorOf.2" = type { %"class.xercesc_2_7::BaseRefVectorOf.3" }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem" = type { ptr, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::RefStackOf.4" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.5" }
%"class.xercesc_2_7::RefVectorOf.5" = type { %"class.xercesc_2_7::BaseRefVectorOf.6" }
%"class.xercesc_2_7::BaseRefVectorOf.6" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::KeyRefPair" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_711DOMDocumentC2Ev = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_716DOMDocumentRangeC2Ev = comdat any

$_ZN11xercesc_2_717DOMXPathEvaluatorC2Ev = comdat any

$_ZN11xercesc_2_720DOMDocumentTraversalC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_711DOMDocumentD2Ev = comdat any

$_ZN11xercesc_2_711DOMDocumentD0Ev = comdat any

$_ZN11xercesc_2_711DOMDocument18createDocumentTypeEPKtS2_S2_ = comdat any

$_ZThn8_N11xercesc_2_711DOMDocumentD1Ev = comdat any

$_ZThn8_N11xercesc_2_711DOMDocumentD0Ev = comdat any

$_ZThn16_N11xercesc_2_711DOMDocumentD1Ev = comdat any

$_ZThn16_N11xercesc_2_711DOMDocumentD0Ev = comdat any

$_ZThn24_N11xercesc_2_711DOMDocumentD1Ev = comdat any

$_ZThn24_N11xercesc_2_711DOMDocumentD0Ev = comdat any

$_ZN11xercesc_2_716DOMDocumentRangeD2Ev = comdat any

$_ZN11xercesc_2_716DOMDocumentRangeD0Ev = comdat any

$_ZN11xercesc_2_717DOMXPathEvaluatorD2Ev = comdat any

$_ZN11xercesc_2_717DOMXPathEvaluatorD0Ev = comdat any

$_ZN11xercesc_2_720DOMDocumentTraversalD2Ev = comdat any

$_ZN11xercesc_2_720DOMDocumentTraversalD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev = comdat any

$_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEE17deleteAllElementsEv = comdat any

$_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEED2Ev = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEED2Ev = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE9removeAllEv = comdat any

$_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeAllEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE7isEmptyEv = comdat any

$_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev = comdat any

$_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev = comdat any

$_ZN11xercesc_2_79DOMBufferD2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE8getByKeyEPKvPKtS6_ = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_ = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE10initializeEm = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEC2EPvPtS4_PS1_PS2_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getErrorCheckingEv = comdat any

$_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb = comdat any

$_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb = comdat any

$_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3getEPKvi = comdat any

$_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE6getKeyEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3putEPviPS3_ = comdat any

$_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEEC2EPvPS1_ = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE13setPrimaryKeyEPKv = comdat any

$_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE10initializeEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE6rehashEv = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPviPS3_PS4_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEEC2EPS6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEE5resetEPS6_ = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE11nextElementEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi = comdat any

$_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE8getValueEv = comdat any

$_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15transferElementEPKvPv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl14isToBeReleasedEb = comdat any

$_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj = comdat any

$_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE4pushEPS1_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE4pushEPS1_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE5emptyEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE3popEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE4sizeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE5emptyEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15orphanElementAtEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_711DOMDocumentE = comdat any

$_ZTSN11xercesc_2_716DOMDocumentRangeE = comdat any

$_ZTIN11xercesc_2_716DOMDocumentRangeE = comdat any

$_ZTSN11xercesc_2_717DOMXPathEvaluatorE = comdat any

$_ZTIN11xercesc_2_717DOMXPathEvaluatorE = comdat any

$_ZTSN11xercesc_2_720DOMDocumentTraversalE = comdat any

$_ZTIN11xercesc_2_720DOMDocumentTraversalE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_711DOMDocumentE = comdat any

$_ZTVN11xercesc_2_711DOMDocumentE = comdat any

$_ZTVN11xercesc_2_716DOMDocumentRangeE = comdat any

$_ZTVN11xercesc_2_717DOMXPathEvaluatorE = comdat any

$_ZTVN11xercesc_2_720DOMDocumentTraversalE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = comdat any

$_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_715DOMDocumentImplE = dso_local unnamed_addr constant { [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] } { [95 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZN11xercesc_2_715DOMDocumentImpl11createRangeEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl13createElementEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl22createDocumentFragmentEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl13createCommentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createCDATASectionEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl27createProcessingInstructionEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl15createAttributeEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl21createEntityReferenceEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getDoctypeEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getImplementationEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getDocumentElementEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl20getElementsByTagNameEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEb, ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl22getElementsByTagNameNSEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getElementByIdEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getActualEncodingEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl17setActualEncodingEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getEncodingEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl11setEncodingEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getStandaloneEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl13setStandaloneEb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getVersionEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl10setVersionEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getDocumentURIEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl14setDocumentURIEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl22getStrictErrorCheckingEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl22setStrictErrorCheckingEb, ptr @_ZN11xercesc_2_715DOMDocumentImpl10renameNodeEPNS_7DOMNodeEPKtS4_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9adoptNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl17normalizeDocumentEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl19getDOMConfigurationEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl12createEntityEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKtS2_S2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl14createNotationEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl9cloneNodeEb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getAttributesEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLastChildEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLocalNameEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getPrefixEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9normalizeEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13hasAttributesEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl9setPrefixEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getTextContentEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl20createElementNoCheckEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb, ptr @_ZN11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getRangesEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getNodeIteratorsEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeRangeEPNS_12DOMRangeImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl18removeNodeIteratorEPNS_19DOMNodeIteratorImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE, ptr @_ZN11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv, ptr @_ZN11xercesc_2_715DOMDocumentImpl7changedEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl7changesEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl19setDOMConfigurationEPNS_16DOMConfigurationE, ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEbb], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImplD1Ev, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImplD1Ev, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb], [42 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImplD1Ev, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeNameEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getNodeValueEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getParentNodeEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getChildNodesEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getFirstChildEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLastChildEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getAttributesEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9cloneNodeEb, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl9normalizeEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9getPrefixEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLocalNameEv, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl9setPrefixEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasAttributesEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10getBaseURIEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getTextContentEv, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl14setTextContentEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl7releaseEv] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715DOMDocumentImplE = dso_local constant [33 x i8] c"N11xercesc_2_715DOMDocumentImplE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_711DOMDocumentE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DOMDocumentE\00", comdat, align 1
@_ZTSN11xercesc_2_716DOMDocumentRangeE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716DOMDocumentRangeE\00", comdat, align 1
@_ZTIN11xercesc_2_716DOMDocumentRangeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716DOMDocumentRangeE }, comdat, align 8
@_ZTSN11xercesc_2_717DOMXPathEvaluatorE = linkonce_odr dso_local constant [35 x i8] c"N11xercesc_2_717DOMXPathEvaluatorE\00", comdat, align 1
@_ZTIN11xercesc_2_717DOMXPathEvaluatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DOMXPathEvaluatorE }, comdat, align 8
@_ZTSN11xercesc_2_720DOMDocumentTraversalE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720DOMDocumentTraversalE\00", comdat, align 1
@_ZTIN11xercesc_2_720DOMDocumentTraversalE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720DOMDocumentTraversalE }, comdat, align 8
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_711DOMDocumentE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMDocumentE, i32 0, i32 4, ptr @_ZTIN11xercesc_2_716DOMDocumentRangeE, i64 2, ptr @_ZTIN11xercesc_2_717DOMXPathEvaluatorE, i64 2050, ptr @_ZTIN11xercesc_2_720DOMDocumentTraversalE, i64 4098, ptr @_ZTIN11xercesc_2_77DOMNodeE, i64 6146 }, comdat, align 8
@_ZTIN11xercesc_2_715DOMDocumentImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMDocumentImplE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_711DOMDocumentE, i64 2 }, align 8
@_ZTVN11xercesc_2_711DOMDocumentE = linkonce_odr dso_local unnamed_addr constant { [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_711DOMDocumentD2Ev, ptr @_ZN11xercesc_2_711DOMDocumentD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_711DOMDocument18createDocumentTypeEPKtS2_S2_, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_711DOMDocumentE, ptr @_ZThn8_N11xercesc_2_711DOMDocumentD1Ev, ptr @_ZThn8_N11xercesc_2_711DOMDocumentD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_711DOMDocumentE, ptr @_ZThn16_N11xercesc_2_711DOMDocumentD1Ev, ptr @_ZThn16_N11xercesc_2_711DOMDocumentD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [42 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_711DOMDocumentE, ptr @_ZThn24_N11xercesc_2_711DOMDocumentD1Ev, ptr @_ZThn24_N11xercesc_2_711DOMDocumentD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716DOMDocumentRangeE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716DOMDocumentRangeE, ptr @_ZN11xercesc_2_716DOMDocumentRangeD2Ev, ptr @_ZN11xercesc_2_716DOMDocumentRangeD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_717DOMXPathEvaluatorE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DOMXPathEvaluatorE, ptr @_ZN11xercesc_2_717DOMXPathEvaluatorD2Ev, ptr @_ZN11xercesc_2_717DOMXPathEvaluatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720DOMDocumentTraversalE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720DOMDocumentTraversalE, ptr @_ZN11xercesc_2_720DOMDocumentTraversalD2Ev, ptr @_ZN11xercesc_2_720DOMDocumentTraversalD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7DOMNodeEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_711RefVectorOfINS_9DOMBufferEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE }, comdat, align 8
@_ZZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEvE3nam = internal constant [10 x i16] [i16 35, i16 100, i16 111, i16 99, i16 117, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv] }, comdat, align 8
@_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK = internal unnamed_addr global [14 x i32] zeroinitializer, align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"./xercesc/dom/impl/DOMDeepNodeListPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE = external constant [0 x i16], align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@.str.2 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev, ptr @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE11nextElementEv, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = linkonce_odr dso_local constant [92 x i8] c"N11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = linkonce_odr dso_local constant [76 x i8] c"N11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE }, comdat, align 8
@_ZTIN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_711DOMNodeImpl8USERDATAE = external local_unnamed_addr constant i16, align 2
@.str.3 = private unnamed_addr constant [30 x i8] c"./xercesc/util/StringPool.hpp\00", align 1
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@.str.4 = private unnamed_addr constant [28 x i8] c"./xercesc/util/RefArrayOf.c\00", align 1
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"./xercesc/util/RefStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715DOMDocumentImplC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_715DOMDocumentImplC1EPKtS2_PNS_15DOMDocumentTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPKtS2_PNS_15DOMDocumentTypeEPNS_13MemoryManagerE
@_ZN11xercesc_2_715DOMDocumentImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11createRangeEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 80, ptr noundef nonnull %0) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_712DOMRangeImplC1EPNS_11DOMDocumentEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %0, ptr noundef %4) #21
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !114
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %9) #21
  %11 = load ptr, ptr %3, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1, i1 noundef zeroext false, ptr noundef %11) #21
          to label %12 unwind label %13

12:                                               ; preds = %8
  store ptr %10, ptr %5, align 8, !tbaa !134
  br label %15

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #20
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %1
  %16 = phi ptr [ %10, %12 ], [ %6, %1 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull %2) #21
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl13createElementEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 96, ptr noundef nonnull %0, i32 noundef 6) #21
  tail call void @_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl22createDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 56, ptr noundef nonnull %0, i32 noundef 4) #21
  tail call void @_ZN11xercesc_2_723DOMDocumentFragmentImplC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #21
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !135 {
  %3 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 56, ptr noundef nonnull %0, i32 noundef 12) #21
  tail call void @_ZN11xercesc_2_711DOMTextImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl13createCommentEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 56, ptr noundef nonnull %0, i32 noundef 3) #21
  tail call void @_ZN11xercesc_2_714DOMCommentImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createCDATASectionEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 88, ptr noundef nonnull %0, i32 noundef 2) #21
  tail call void @_ZN11xercesc_2_719DOMCDATASectionImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl27createProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %6, label %13, label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 5, ptr noundef null, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 72, ptr noundef nonnull %0, i32 noundef 11) #21
  tail call void @_ZN11xercesc_2_728DOMProcessingInstructionImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #21
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15createAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 72, ptr noundef nonnull %0, i32 noundef 0) #21
  tail call void @_ZN11xercesc_2_711DOMAttrImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl21createEntityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 88, ptr noundef nonnull %0, i32 noundef 9) #21
  tail call void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %13, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getDoctypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !136 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getImplementationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getDocumentElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl20getElementsByTagNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !113 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds ptr, ptr %4, i64 92
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext false) #21
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2) #21
  br i1 %6, label %13, label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 5, ptr noundef null, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 128, ptr noundef nonnull %0, i32 noundef 7) #21
  tail call void @_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #21
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5, !prof !142

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2) #21
  br i1 %6, label %13, label %7, !prof !143

7:                                                ; preds = %5, %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 5, ptr noundef null, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 96, ptr noundef nonnull %0, i32 noundef 1) #21
  tail call void @_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #21
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl22getElementsByTagNameNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !113 {
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #21
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getElementByIdEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_712DOMNodeIDMap4findEPKt(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !140
  %11 = getelementptr inbounds ptr, ptr %10, i64 44
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %14

14:                                               ; preds = %9, %6, %2
  %15 = phi ptr [ null, %2 ], [ %13, %9 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getActualEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl17setActualEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !146 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) #21
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl11setEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !138 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) #21
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13getStandaloneEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !148, !range !149, !noundef !150
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl13setStandaloneEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(293) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 !prof !138 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getVersionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl10setVersionEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !152

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !153
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7, !prof !152

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_0E) #21
  br i1 %8, label %17, label %9, !prof !154

9:                                                ; preds = %7
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_1E) #21
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 9, ptr noundef null, ptr noundef %13) #21
          to label %14 unwind label %15

14:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #22
  resume { ptr, i32 } %16

17:                                               ; preds = %9, %7, %4, %2
  %18 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) #21
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getDocumentURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl14setDocumentURIEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !138 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4, !prof !152

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !153
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7, !prof !152

7:                                                ; preds = %4
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #21
  %9 = add i32 %8, 9
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 1
  %12 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %11) #21
  tail call void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef nonnull %1, ptr noundef %12) #21
  br label %13

13:                                               ; preds = %2, %4, %7
  %14 = phi ptr [ %12, %7 ], [ null, %4 ], [ null, %2 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 9
  store ptr %14, ptr %15, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl22getStrictErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #0 align 2 !prof !113 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl22setStrictErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(293) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(293) %0, i1 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl10renameNodeEPNS_7DOMNodeEPKtS4_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = load ptr, ptr %1, align 8, !tbaa !140
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %9 = icmp eq ptr %8, %0
  %10 = load ptr, ptr %1, align 8, !tbaa !140
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  br i1 %9, label %26, label %14

14:                                               ; preds = %4
  %15 = icmp eq i16 %13, 9
  %16 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  br i1 %15, label %18, label %22

18:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 9, ptr noundef null, ptr noundef %17) #21
          to label %19 unwind label %20

19:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %45

22:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 4, ptr noundef null, ptr noundef %17) #21
          to label %23 unwind label %24

23:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

24:                                               ; preds = %22
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %45

26:                                               ; preds = %4
  switch i16 %13, label %37 [
    i16 1, label %27
    i16 2, label %32
  ]

27:                                               ; preds = %26
  %28 = load ptr, ptr %1, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 64
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2, ptr noundef %3) #21
  br label %43

32:                                               ; preds = %26
  %33 = load ptr, ptr %1, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 48
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef %3) #21
  br label %43

37:                                               ; preds = %26
  %38 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %39 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %38, i16 noundef signext 9, ptr noundef null, ptr noundef %39) #21
          to label %40 unwind label %41

40:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %32, %27
  %44 = phi ptr [ %36, %32 ], [ %31, %27 ]
  ret ptr %44

45:                                               ; preds = %41, %24, %20
  %46 = phi ptr [ %38, %41 ], [ %16, %24 ], [ %16, %20 ]
  %47 = phi { ptr, i32 } [ %42, %41 ], [ %25, %24 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %46) #22
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl9adoptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %4) #21
          to label %5 unwind label %6

5:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #22
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl17normalizeDocumentEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7) #21
  %9 = load ptr, ptr %6, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_713DOMNormalizerC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !156
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %10, %1
  %14 = phi ptr [ %8, %10 ], [ %3, %1 ]
  tail call void @_ZN11xercesc_2_713DOMNormalizer17normalizeDocumentEPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl19getDOMConfigurationEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 48, ptr noundef nonnull %0) #21
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_720DOMConfigurationImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %8) #21
  store ptr %6, ptr %2, align 8, !tbaa !157
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12createEntityEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 136, ptr noundef nonnull %0, i32 noundef 8) #21
  tail call void @_ZN11xercesc_2_713DOMEntityImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(129) %13, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 136, ptr noundef nonnull %0, i32 noundef 5) #21
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(130) %13, ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %7, label %14, label %8

8:                                                ; preds = %6, %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 5, ptr noundef null, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %6
  %15 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 136, ptr noundef nonnull %0, i32 noundef 5) #21
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtS4_S4_b(ptr noundef nonnull align 8 dereferenceable(130) %15, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #21
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl14createNotationEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 56, ptr noundef nonnull %0, i32 noundef 10) #21
  tail call void @_ZN11xercesc_2_715DOMNotationImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %9, label %7, !prof !158

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2) #21
  br i1 %8, label %15, label %9, !prof !159

9:                                                ; preds = %7, %5
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 5, ptr noundef null, ptr noundef %11) #21
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #22
  resume { ptr, i32 } %14

15:                                               ; preds = %7
  %16 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 144, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4) #21
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !138 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = getelementptr inbounds ptr, ptr %3, i64 58
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef null) #21
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(293) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 296, ptr noundef %4) #21
  %6 = load ptr, ptr %3, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %6) #21
          to label %7 unwind label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr %9, align 2, !tbaa !153
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !tbaa !140
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %9) #21
  br label %20

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #20
  resume { ptr, i32 } %19

20:                                               ; preds = %14, %11, %7
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !151
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i16, ptr %22, align 2, !tbaa !153
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 27
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %22) #21
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 6
  %33 = load i8, ptr %32, align 8, !tbaa !148, !range !149, !noundef !150
  %34 = icmp ne i8 %33, 0
  %35 = load ptr, ptr %5, align 8, !tbaa !140
  %36 = getelementptr inbounds ptr, ptr %35, i64 25
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(293) %5, i1 noundef zeroext %34) #21
  br i1 %1, label %38, label %59

38:                                               ; preds = %31
  %39 = load ptr, ptr %0, align 8, !tbaa !140
  %40 = getelementptr inbounds ptr, ptr %39, i64 45
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %38, %44
  %45 = phi ptr [ %57, %44 ], [ %42, %38 ]
  %46 = load ptr, ptr %5, align 8, !tbaa !140
  %47 = getelementptr inbounds ptr, ptr %46, i64 92
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %45, i1 noundef zeroext true, i1 noundef zeroext true) #21
  %50 = load ptr, ptr %5, align 8, !tbaa !140
  %51 = getelementptr inbounds ptr, ptr %50, i64 41
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %49) #21
  %54 = load ptr, ptr %45, align 8, !tbaa !140
  %55 = getelementptr inbounds ptr, ptr %54, i64 10
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %45) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !160

59:                                               ; preds = %44, %38, %31
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %61 = getelementptr inbounds i8, ptr %0, i64 24
  %62 = getelementptr inbounds i8, ptr %5, i64 24
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %60, i32 noundef 1, ptr noundef nonnull %61, ptr noundef nonnull %62) #21
  ret ptr %62
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !113 {
  ret ptr @_ZZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEvE3nam
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !138 {
  ret i16 9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !113 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %4 = load ptr, ptr %1, align 8, !tbaa !140
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %8 = icmp ne i16 %7, 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %8, i1 true, i1 %11
  br i1 %12, label %13, label %23, !prof !162

13:                                               ; preds = %3
  %14 = load ptr, ptr %1, align 8, !tbaa !140
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef signext i16 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %18 = icmp ne i16 %17, 10
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = select i1 %18, i1 true, i1 %21
  br i1 %22, label %29, label %23, !prof !163

23:                                               ; preds = %13, %3
  %24 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %24, i16 noundef signext 3, ptr noundef null, ptr noundef %25) #21
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #22
  resume { ptr, i32 } %28

29:                                               ; preds = %13
  %30 = load ptr, ptr %1, align 8, !tbaa !140
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef signext i16 %32(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %34 = icmp eq i16 %33, 10
  br i1 %34, label %35, label %45, !prof !152

35:                                               ; preds = %29
  %36 = load ptr, ptr %1, align 8, !tbaa !140
  %37 = getelementptr inbounds ptr, ptr %36, i64 12
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load ptr, ptr %1, align 8, !tbaa !140
  %43 = getelementptr inbounds ptr, ptr %42, i64 49
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(130) %1, ptr noundef nonnull %0) #21
  br label %45

45:                                               ; preds = %41, %35, %29
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %47 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull %1, ptr noundef %2) #21
  %48 = load ptr, ptr %1, align 8, !tbaa !140
  %49 = getelementptr inbounds ptr, ptr %48, i64 4
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef signext i16 %50(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %59, label %53, !prof !154

53:                                               ; preds = %45
  %54 = load ptr, ptr %1, align 8, !tbaa !140
  %55 = getelementptr inbounds ptr, ptr %54, i64 4
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef signext i16 %56(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %58 = icmp eq i16 %57, 10
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %45
  %60 = phi ptr [ %9, %45 ], [ %19, %53 ]
  store ptr %1, ptr %60, align 8, !tbaa !164
  br label %61

61:                                               ; preds = %59, %53
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef returned %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #21
  %5 = load ptr, ptr %1, align 8, !tbaa !140
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  br label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !140
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %17 = icmp eq i16 %16, 10
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi ptr [ %19, %18 ], [ %11, %10 ]
  store ptr null, ptr %21, align 8, !tbaa !164
  br label %22

22:                                               ; preds = %20, %12
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %5 = load <2 x ptr>, ptr %4, align 8, !tbaa !164
  %6 = load ptr, ptr %2, align 8, !tbaa !140
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %2, align 8, !tbaa !140
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11, %3
  %19 = phi ptr [ %4, %3 ], [ %12, %11 ]
  store ptr null, ptr %19, align 8, !tbaa !164
  br label %20

20:                                               ; preds = %18, %11
  %21 = load ptr, ptr %0, align 8, !tbaa !140
  %22 = getelementptr inbounds ptr, ptr %21, i64 58
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef nonnull %2) #21
          to label %25 unwind label %42

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !tbaa !140
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef signext i16 %28(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
          to label %30 unwind label %42

30:                                               ; preds = %25
  %31 = icmp eq i16 %29, 10
  br i1 %31, label %39, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %2, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef signext i16 %35(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
          to label %37 unwind label %42

37:                                               ; preds = %32
  %38 = icmp eq i16 %36, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %37, %30
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %41 = invoke noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull %2) #21
          to label %60 unwind label %42

42:                                               ; preds = %51, %39, %32, %25, %20
  %43 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  %45 = extractvalue { ptr, i32 } %43, 1
  %46 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #22
  %47 = icmp eq i32 %45, %46
  %48 = tail call ptr @__cxa_begin_catch(ptr %44) #22
  br i1 %47, label %49, label %50

49:                                               ; preds = %42
  invoke void @__cxa_rethrow() #23
          to label %67 unwind label %58

50:                                               ; preds = %42
  store <2 x ptr> %5, ptr %4, align 8, !tbaa !164
  invoke void @__cxa_rethrow() #23
          to label %67 unwind label %56

51:                                               ; preds = %37
  %52 = load ptr, ptr %0, align 8, !tbaa !140
  %53 = getelementptr inbounds ptr, ptr %52, i64 60
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2) #21
          to label %60 unwind label %42

56:                                               ; preds = %50
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %62 unwind label %64

58:                                               ; preds = %49
  %59 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %62 unwind label %64

60:                                               ; preds = %51, %39
  %61 = phi ptr [ %41, %39 ], [ %55, %51 ]
  ret ptr %61

62:                                               ; preds = %58, %56
  %63 = phi { ptr, i32 } [ %57, %56 ], [ %59, %58 ]
  resume { ptr, i32 } %63

64:                                               ; preds = %58, %56
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #24
  unreachable

67:                                               ; preds = %49, %50
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #21
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !113 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #21
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret i16 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #21
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !154

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %7) #21
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !prof !154

12:                                               ; preds = %8
  %13 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %10) #21
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14isToBeReleasedEb(ptr noundef nonnull align 8 dereferenceable(10) %13, i1 noundef zeroext true) #21
  %14 = load ptr, ptr %9, align 8, !tbaa !137
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = getelementptr inbounds ptr, ptr %15, i64 39
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %14) #21
  br label %18

18:                                               ; preds = %8, %12
  %19 = load ptr, ptr %0, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl20createElementNoCheckEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 96, ptr noundef nonnull %0, i32 noundef 6) #21
  tail call void @_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 9, ptr noundef null, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  br label %28

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 64, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_719DOMNodeIteratorImplC1EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %14, ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) #21
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %20) #21
  %22 = load ptr, ptr %19, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 1, i1 noundef zeroext false, ptr noundef %22) #21
          to label %23 unwind label %24

23:                                               ; preds = %18
  store ptr %21, ptr %15, align 8, !tbaa !166
  br label %26

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #20
  br label %28

26:                                               ; preds = %23, %13
  %27 = phi ptr [ %21, %23 ], [ %16, %13 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull %14) #21
  ret ptr %14

28:                                               ; preds = %24, %11
  %29 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 9, ptr noundef null, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 48, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_717DOMTreeWalkerImplC1EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(41) %14, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) #21
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getRangesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getNodeIteratorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl11removeRangeEPNS_12DOMRangeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef readnone %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #21
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %24, label %13, !llvm.loop !168

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !134
  %16 = trunc i64 %14 to i32
  %17 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %16) #21
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %10

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 8, !tbaa !134
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %16) #21
  br label %24

24:                                               ; preds = %10, %6, %19, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl18removeNodeIteratorEPNS_19DOMNodeIteratorImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef readnone %1) unnamed_addr #1 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #21
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %24, label %13, !llvm.loop !169

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !166
  %16 = trunc i64 %14 to i32
  %17 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %16) #21
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %10

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 8, !tbaa !166
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %16) #21
  br label %24

24:                                               ; preds = %10, %6, %19, %2
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %5 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, i16 noundef signext 9, ptr noundef null, ptr noundef %5) #21
          to label %6 unwind label %7

6:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #22
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %4) #21
          to label %5 unwind label %6

5:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #22
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i16 zeroext %4, ptr nocapture readnone %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 9, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl7changedEv(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #6 align 2 !prof !170 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  %3 = load i32, ptr %2, align 8, !tbaa !171
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715DOMDocumentImpl7changesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #2 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  %3 = load i32, ptr %2, align 8, !tbaa !171
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl19setDOMConfigurationEPNS_16DOMConfigurationE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEbb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  %6 = load i8, ptr %5, align 4, !tbaa !172, !range !149, !noundef !150
  %7 = load ptr, ptr %1, align 8, !tbaa !140
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  switch i16 %10, label %397 [
    i16 1, label %11
    i16 2, label %98
    i16 3, label %125
    i16 4, label %134
    i16 5, label %143
    i16 6, label %155
    i16 7, label %186
    i16 8, label %199
    i16 10, label %208
    i16 11, label %369
    i16 12, label %374
  ]

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !140
  %13 = getelementptr inbounds ptr, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr %1, align 8, !tbaa !140
  br i1 %16, label %18, label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds ptr, ptr %17, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !140
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %21) #21
  br label %38

26:                                               ; preds = %11
  %27 = getelementptr inbounds ptr, ptr %17, i64 22
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %30 = load ptr, ptr %1, align 8, !tbaa !140
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %34 = load ptr, ptr %0, align 8, !tbaa !140
  %35 = getelementptr inbounds ptr, ptr %34, i64 16
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %29, ptr noundef %33) #21
  br label %38

38:                                               ; preds = %26, %18
  %39 = phi ptr [ %25, %18 ], [ %37, %26 ]
  %40 = load ptr, ptr %1, align 8, !tbaa !140
  %41 = getelementptr inbounds ptr, ptr %40, i64 11
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %403, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %43, align 8, !tbaa !140
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef i64 %48(ptr noundef nonnull align 8 dereferenceable(8) %43) #21
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %403, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  br label %53

53:                                               ; preds = %51, %91
  %54 = phi i64 [ 0, %51 ], [ %92, %91 ]
  %55 = load ptr, ptr %43, align 8, !tbaa !140
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %54) #21
  %59 = load ptr, ptr %58, align 8, !tbaa !140
  %60 = getelementptr inbounds ptr, ptr %59, i64 41
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(8) %58) #21
  %63 = or i1 %62, %3
  br i1 %63, label %64, label %91

64:                                               ; preds = %53
  %65 = load ptr, ptr %0, align 8, !tbaa !140
  %66 = getelementptr inbounds ptr, ptr %65, i64 92
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %58, i1 noundef zeroext true, i1 noundef zeroext false) #21
  %69 = load ptr, ptr %58, align 8, !tbaa !140
  %70 = getelementptr inbounds ptr, ptr %69, i64 24
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %58) #21
  %73 = icmp eq ptr %72, null
  %74 = load ptr, ptr %39, align 8, !tbaa !140
  %75 = select i1 %73, i64 45, i64 52
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %68) #21
  %79 = load ptr, ptr %58, align 8, !tbaa !140
  %80 = getelementptr inbounds ptr, ptr %79, i64 45
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef zeroext i1 %81(ptr noundef nonnull align 8 dereferenceable(8) %58) #21
  br i1 %82, label %83, label %91

83:                                               ; preds = %64
  %84 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %68) #21
  tail call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %84, i1 noundef zeroext true) #21
  %85 = load ptr, ptr %52, align 8, !tbaa !144
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 56, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %88, i32 noundef 500, ptr noundef nonnull %0) #21
  store ptr %88, ptr %52, align 8, !tbaa !144
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %88, %87 ], [ %85, %83 ]
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %90, ptr noundef %68) #21
  br label %91

91:                                               ; preds = %64, %89, %53
  %92 = add nuw i64 %54, 1
  %93 = load ptr, ptr %43, align 8, !tbaa !140
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef i64 %95(ptr noundef nonnull align 8 dereferenceable(8) %43) #21
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %53, label %403, !llvm.loop !173

98:                                               ; preds = %4
  %99 = load ptr, ptr %1, align 8, !tbaa !140
  %100 = getelementptr inbounds ptr, ptr %99, i64 24
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %103 = icmp eq ptr %102, null
  %104 = load ptr, ptr %1, align 8, !tbaa !140
  br i1 %103, label %105, label %113

105:                                              ; preds = %98
  %106 = getelementptr inbounds ptr, ptr %104, i64 2
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %109 = load ptr, ptr %0, align 8, !tbaa !140
  %110 = getelementptr inbounds ptr, ptr %109, i64 9
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %108) #21
  br label %405

113:                                              ; preds = %98
  %114 = getelementptr inbounds ptr, ptr %104, i64 22
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %117 = load ptr, ptr %1, align 8, !tbaa !140
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %121 = load ptr, ptr %0, align 8, !tbaa !140
  %122 = getelementptr inbounds ptr, ptr %121, i64 17
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %116, ptr noundef %120) #21
  br label %405

125:                                              ; preds = %4
  %126 = load ptr, ptr %1, align 8, !tbaa !140
  %127 = getelementptr inbounds ptr, ptr %126, i64 3
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %130 = load ptr, ptr %0, align 8, !tbaa !140
  %131 = getelementptr inbounds ptr, ptr %130, i64 5
  %132 = load ptr, ptr %131, align 8
  %133 = tail call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %129) #21
  br i1 %2, label %405, label %427

134:                                              ; preds = %4
  %135 = load ptr, ptr %1, align 8, !tbaa !140
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %139 = load ptr, ptr %0, align 8, !tbaa !140
  %140 = getelementptr inbounds ptr, ptr %139, i64 7
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %138) #21
  br i1 %2, label %405, label %427

143:                                              ; preds = %4
  %144 = load ptr, ptr %1, align 8, !tbaa !140
  %145 = getelementptr inbounds ptr, ptr %144, i64 2
  %146 = load ptr, ptr %145, align 8
  %147 = tail call noundef ptr %146(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %148 = load ptr, ptr %0, align 8, !tbaa !140
  %149 = getelementptr inbounds ptr, ptr %148, i64 10
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %147) #21
  store i8 0, ptr %5, align 4, !tbaa !172
  %152 = load ptr, ptr %151, align 8, !tbaa !140
  %153 = getelementptr inbounds ptr, ptr %152, i64 40
  %154 = load ptr, ptr %153, align 8
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(88) %151, i1 noundef zeroext false, i1 noundef zeroext true) #21
  br i1 %2, label %405, label %427

155:                                              ; preds = %4
  %156 = load ptr, ptr %1, align 8, !tbaa !140
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %160 = load ptr, ptr %0, align 8, !tbaa !140
  %161 = getelementptr inbounds ptr, ptr %160, i64 36
  %162 = load ptr, ptr %161, align 8
  %163 = tail call noundef ptr %162(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %159) #21
  %164 = load ptr, ptr %1, align 8, !tbaa !140
  %165 = getelementptr inbounds ptr, ptr %164, i64 40
  %166 = load ptr, ptr %165, align 8
  %167 = tail call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %168 = load ptr, ptr %163, align 8, !tbaa !140
  %169 = getelementptr inbounds ptr, ptr %168, i64 50
  %170 = load ptr, ptr %169, align 8
  tail call void %170(ptr noundef nonnull align 8 dereferenceable(129) %163, ptr noundef %167) #21
  %171 = load ptr, ptr %1, align 8, !tbaa !140
  %172 = getelementptr inbounds ptr, ptr %171, i64 41
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %175 = load ptr, ptr %163, align 8, !tbaa !140
  %176 = getelementptr inbounds ptr, ptr %175, i64 51
  %177 = load ptr, ptr %176, align 8
  tail call void %177(ptr noundef nonnull align 8 dereferenceable(129) %163, ptr noundef %174) #21
  %178 = load ptr, ptr %1, align 8, !tbaa !140
  %179 = getelementptr inbounds ptr, ptr %178, i64 42
  %180 = load ptr, ptr %179, align 8
  %181 = tail call noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %182 = load ptr, ptr %163, align 8, !tbaa !140
  %183 = getelementptr inbounds ptr, ptr %182, i64 49
  %184 = load ptr, ptr %183, align 8
  tail call void %184(ptr noundef nonnull align 8 dereferenceable(129) %163, ptr noundef %181) #21
  %185 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %163) #21
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %185, i1 noundef zeroext false, i1 noundef zeroext true) #21
  br i1 %2, label %405, label %427

186:                                              ; preds = %4
  %187 = load ptr, ptr %1, align 8, !tbaa !140
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8
  %190 = tail call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %191 = load ptr, ptr %1, align 8, !tbaa !140
  %192 = getelementptr inbounds ptr, ptr %191, i64 3
  %193 = load ptr, ptr %192, align 8
  %194 = tail call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %195 = load ptr, ptr %0, align 8, !tbaa !140
  %196 = getelementptr inbounds ptr, ptr %195, i64 8
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %190, ptr noundef %194) #21
  br i1 %2, label %405, label %427

199:                                              ; preds = %4
  %200 = load ptr, ptr %1, align 8, !tbaa !140
  %201 = getelementptr inbounds ptr, ptr %200, i64 3
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %204 = load ptr, ptr %0, align 8, !tbaa !140
  %205 = getelementptr inbounds ptr, ptr %204, i64 6
  %206 = load ptr, ptr %205, align 8
  %207 = tail call noundef ptr %206(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %203) #21
  br i1 %2, label %405, label %427

208:                                              ; preds = %4
  br i1 %3, label %215, label %209

209:                                              ; preds = %208
  %210 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %211 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %210, i16 noundef signext 9, ptr noundef null, ptr noundef %211) #21
          to label %212 unwind label %213

212:                                              ; preds = %209
  tail call void @__cxa_throw(ptr nonnull %210, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

213:                                              ; preds = %209
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %446

215:                                              ; preds = %208
  %216 = load ptr, ptr %1, align 8, !tbaa !140
  %217 = getelementptr inbounds ptr, ptr %216, i64 2
  %218 = load ptr, ptr %217, align 8
  %219 = tail call noundef ptr %218(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %220 = load ptr, ptr %1, align 8, !tbaa !140
  %221 = getelementptr inbounds ptr, ptr %220, i64 43
  %222 = load ptr, ptr %221, align 8
  %223 = tail call noundef ptr %222(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %224 = load ptr, ptr %1, align 8, !tbaa !140
  %225 = getelementptr inbounds ptr, ptr %224, i64 44
  %226 = load ptr, ptr %225, align 8
  %227 = tail call noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %228 = load ptr, ptr %0, align 8, !tbaa !140
  %229 = getelementptr inbounds ptr, ptr %228, i64 38
  %230 = load ptr, ptr %229, align 8
  %231 = tail call noundef ptr %230(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %219, ptr noundef %223, ptr noundef %227) #21
  %232 = load ptr, ptr %1, align 8, !tbaa !140
  %233 = getelementptr inbounds ptr, ptr %232, i64 41
  %234 = load ptr, ptr %233, align 8
  %235 = tail call noundef ptr %234(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %236 = load ptr, ptr %231, align 8, !tbaa !140
  %237 = getelementptr inbounds ptr, ptr %236, i64 41
  %238 = load ptr, ptr %237, align 8
  %239 = tail call noundef ptr %238(ptr noundef nonnull align 8 dereferenceable(8) %231) #21
  %240 = icmp eq ptr %235, null
  br i1 %240, label %267, label %241

241:                                              ; preds = %215
  %242 = load ptr, ptr %235, align 8, !tbaa !140
  %243 = getelementptr inbounds ptr, ptr %242, i64 5
  %244 = load ptr, ptr %243, align 8
  %245 = tail call noundef i64 %244(ptr noundef nonnull align 8 dereferenceable(8) %235) #21
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %267, label %247

247:                                              ; preds = %241, %247
  %248 = phi i64 [ %261, %247 ], [ 0, %241 ]
  %249 = load ptr, ptr %235, align 8, !tbaa !140
  %250 = getelementptr inbounds ptr, ptr %249, i64 3
  %251 = load ptr, ptr %250, align 8
  %252 = tail call noundef ptr %251(ptr noundef nonnull align 8 dereferenceable(8) %235, i64 noundef %248) #21
  %253 = load ptr, ptr %0, align 8, !tbaa !140
  %254 = getelementptr inbounds ptr, ptr %253, i64 92
  %255 = load ptr, ptr %254, align 8
  %256 = tail call noundef ptr %255(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %252, i1 noundef zeroext true, i1 noundef zeroext false) #21
  %257 = load ptr, ptr %239, align 8, !tbaa !140
  %258 = getelementptr inbounds ptr, ptr %257, i64 2
  %259 = load ptr, ptr %258, align 8
  %260 = tail call noundef ptr %259(ptr noundef nonnull align 8 dereferenceable(8) %239, ptr noundef %256) #21
  %261 = add nuw i64 %248, 1
  %262 = load ptr, ptr %235, align 8, !tbaa !140
  %263 = getelementptr inbounds ptr, ptr %262, i64 5
  %264 = load ptr, ptr %263, align 8
  %265 = tail call noundef i64 %264(ptr noundef nonnull align 8 dereferenceable(8) %235) #21
  %266 = icmp ult i64 %261, %265
  br i1 %266, label %247, label %267, !llvm.loop !174

267:                                              ; preds = %247, %241, %215
  %268 = load ptr, ptr %1, align 8, !tbaa !140
  %269 = getelementptr inbounds ptr, ptr %268, i64 42
  %270 = load ptr, ptr %269, align 8
  %271 = tail call noundef ptr %270(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %272 = load ptr, ptr %231, align 8, !tbaa !140
  %273 = getelementptr inbounds ptr, ptr %272, i64 42
  %274 = load ptr, ptr %273, align 8
  %275 = tail call noundef ptr %274(ptr noundef nonnull align 8 dereferenceable(8) %231) #21
  %276 = icmp eq ptr %271, null
  br i1 %276, label %303, label %277

277:                                              ; preds = %267
  %278 = load ptr, ptr %271, align 8, !tbaa !140
  %279 = getelementptr inbounds ptr, ptr %278, i64 5
  %280 = load ptr, ptr %279, align 8
  %281 = tail call noundef i64 %280(ptr noundef nonnull align 8 dereferenceable(8) %271) #21
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %303, label %283

283:                                              ; preds = %277, %283
  %284 = phi i64 [ %297, %283 ], [ 0, %277 ]
  %285 = load ptr, ptr %271, align 8, !tbaa !140
  %286 = getelementptr inbounds ptr, ptr %285, i64 3
  %287 = load ptr, ptr %286, align 8
  %288 = tail call noundef ptr %287(ptr noundef nonnull align 8 dereferenceable(8) %271, i64 noundef %284) #21
  %289 = load ptr, ptr %0, align 8, !tbaa !140
  %290 = getelementptr inbounds ptr, ptr %289, i64 92
  %291 = load ptr, ptr %290, align 8
  %292 = tail call noundef ptr %291(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %288, i1 noundef zeroext true, i1 noundef zeroext false) #21
  %293 = load ptr, ptr %275, align 8, !tbaa !140
  %294 = getelementptr inbounds ptr, ptr %293, i64 2
  %295 = load ptr, ptr %294, align 8
  %296 = tail call noundef ptr %295(ptr noundef nonnull align 8 dereferenceable(8) %275, ptr noundef %292) #21
  %297 = add nuw i64 %284, 1
  %298 = load ptr, ptr %271, align 8, !tbaa !140
  %299 = getelementptr inbounds ptr, ptr %298, i64 5
  %300 = load ptr, ptr %299, align 8
  %301 = tail call noundef i64 %300(ptr noundef nonnull align 8 dereferenceable(8) %271) #21
  %302 = icmp ult i64 %297, %301
  br i1 %302, label %283, label %303, !llvm.loop !175

303:                                              ; preds = %283, %277, %267
  %304 = load ptr, ptr %1, align 8, !tbaa !140
  %305 = getelementptr inbounds ptr, ptr %304, i64 45
  %306 = load ptr, ptr %305, align 8
  %307 = tail call noundef ptr %306(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %308 = icmp eq ptr %307, null
  br i1 %308, label %313, label %309

309:                                              ; preds = %303
  %310 = load ptr, ptr %231, align 8, !tbaa !140
  %311 = getelementptr inbounds ptr, ptr %310, i64 48
  %312 = load ptr, ptr %311, align 8
  tail call void %312(ptr noundef nonnull align 8 dereferenceable(130) %231, ptr noundef nonnull %307) #21
  br label %313

313:                                              ; preds = %309, %303
  %314 = load ptr, ptr %1, align 8, !tbaa !140
  %315 = getelementptr inbounds ptr, ptr %314, i64 38
  %316 = load ptr, ptr %315, align 8
  %317 = invoke noundef ptr %316(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE) #21
          to label %318 unwind label %340

318:                                              ; preds = %313
  %319 = icmp eq ptr %317, null
  br i1 %319, label %403, label %320

320:                                              ; preds = %318
  %321 = load ptr, ptr %317, align 8, !tbaa !140
  %322 = getelementptr inbounds ptr, ptr %321, i64 50
  %323 = load ptr, ptr %322, align 8
  %324 = invoke noundef ptr %323(ptr noundef nonnull align 8 dereferenceable(130) %317) #21
          to label %325 unwind label %340

325:                                              ; preds = %320
  %326 = load ptr, ptr %231, align 8, !tbaa !140
  %327 = getelementptr inbounds ptr, ptr %326, i64 50
  %328 = load ptr, ptr %327, align 8
  %329 = invoke noundef ptr %328(ptr noundef nonnull align 8 dereferenceable(130) %231) #21
          to label %330 unwind label %340

330:                                              ; preds = %325
  %331 = icmp eq ptr %324, null
  br i1 %331, label %403, label %332

332:                                              ; preds = %330, %359
  %333 = phi i64 [ %360, %359 ], [ 0, %330 ]
  %334 = load ptr, ptr %324, align 8, !tbaa !140
  %335 = getelementptr inbounds ptr, ptr %334, i64 5
  %336 = load ptr, ptr %335, align 8
  %337 = invoke noundef i64 %336(ptr noundef nonnull align 8 dereferenceable(8) %324) #21
          to label %338 unwind label %342

338:                                              ; preds = %332
  %339 = icmp ult i64 %333, %337
  br i1 %339, label %344, label %403

340:                                              ; preds = %325, %320, %313
  %341 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  br label %361

342:                                              ; preds = %354, %349, %344, %332
  %343 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  br label %361

344:                                              ; preds = %338
  %345 = load ptr, ptr %324, align 8, !tbaa !140
  %346 = getelementptr inbounds ptr, ptr %345, i64 3
  %347 = load ptr, ptr %346, align 8
  %348 = invoke noundef ptr %347(ptr noundef nonnull align 8 dereferenceable(8) %324, i64 noundef %333) #21
          to label %349 unwind label %342

349:                                              ; preds = %344
  %350 = load ptr, ptr %0, align 8, !tbaa !140
  %351 = getelementptr inbounds ptr, ptr %350, i64 92
  %352 = load ptr, ptr %351, align 8
  %353 = invoke noundef ptr %352(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %348, i1 noundef zeroext true, i1 noundef zeroext true) #21
          to label %354 unwind label %342

354:                                              ; preds = %349
  %355 = load ptr, ptr %329, align 8, !tbaa !140
  %356 = getelementptr inbounds ptr, ptr %355, i64 2
  %357 = load ptr, ptr %356, align 8
  %358 = invoke noundef ptr %357(ptr noundef nonnull align 8 dereferenceable(8) %329, ptr noundef %353) #21
          to label %359 unwind label %342

359:                                              ; preds = %354
  %360 = add nuw i64 %333, 1
  br label %332, !llvm.loop !176

361:                                              ; preds = %342, %340
  %362 = phi { ptr, i32 } [ %343, %342 ], [ %341, %340 ]
  %363 = extractvalue { ptr, i32 } %362, 1
  %364 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #22
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %449

366:                                              ; preds = %361
  %367 = extractvalue { ptr, i32 } %362, 0
  %368 = tail call ptr @__cxa_begin_catch(ptr %367) #22
  tail call void @__cxa_end_catch()
  br i1 %2, label %405, label %427

369:                                              ; preds = %4
  %370 = load ptr, ptr %0, align 8, !tbaa !140
  %371 = getelementptr inbounds ptr, ptr %370, i64 4
  %372 = load ptr, ptr %371, align 8
  %373 = tail call noundef ptr %372(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  br i1 %2, label %405, label %427

374:                                              ; preds = %4
  %375 = load ptr, ptr %1, align 8, !tbaa !140
  %376 = getelementptr inbounds ptr, ptr %375, i64 2
  %377 = load ptr, ptr %376, align 8
  %378 = tail call noundef ptr %377(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %379 = load ptr, ptr %0, align 8, !tbaa !140
  %380 = getelementptr inbounds ptr, ptr %379, i64 39
  %381 = load ptr, ptr %380, align 8
  %382 = tail call noundef ptr %381(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %378) #21
  %383 = load ptr, ptr %1, align 8, !tbaa !140
  %384 = getelementptr inbounds ptr, ptr %383, i64 40
  %385 = load ptr, ptr %384, align 8
  %386 = tail call noundef ptr %385(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %387 = load ptr, ptr %382, align 8, !tbaa !140
  %388 = getelementptr inbounds ptr, ptr %387, i64 42
  %389 = load ptr, ptr %388, align 8
  tail call void %389(ptr noundef nonnull align 8 dereferenceable(56) %382, ptr noundef %386) #21
  %390 = load ptr, ptr %1, align 8, !tbaa !140
  %391 = getelementptr inbounds ptr, ptr %390, i64 41
  %392 = load ptr, ptr %391, align 8
  %393 = tail call noundef ptr %392(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %394 = load ptr, ptr %382, align 8, !tbaa !140
  %395 = getelementptr inbounds ptr, ptr %394, i64 43
  %396 = load ptr, ptr %395, align 8
  tail call void %396(ptr noundef nonnull align 8 dereferenceable(56) %382, ptr noundef %393) #21
  br i1 %2, label %405, label %427

397:                                              ; preds = %4
  %398 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %399 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %398, i16 noundef signext 9, ptr noundef null, ptr noundef %399) #21
          to label %400 unwind label %401

400:                                              ; preds = %397
  tail call void @__cxa_throw(ptr nonnull %398, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

401:                                              ; preds = %397
  %402 = landingpad { ptr, i32 }
          cleanup
  br label %446

403:                                              ; preds = %338, %91, %45, %330, %318, %38
  %404 = phi ptr [ %39, %38 ], [ %231, %318 ], [ %231, %330 ], [ %39, %45 ], [ %39, %91 ], [ %231, %338 ]
  br i1 %2, label %405, label %427

405:                                              ; preds = %105, %113, %366, %125, %134, %143, %155, %186, %199, %369, %374, %403
  %406 = phi ptr [ %404, %403 ], [ %382, %374 ], [ %373, %369 ], [ %207, %199 ], [ %198, %186 ], [ %163, %155 ], [ %151, %143 ], [ %142, %134 ], [ %133, %125 ], [ %231, %366 ], [ %124, %113 ], [ %112, %105 ]
  %407 = load ptr, ptr %1, align 8, !tbaa !140
  %408 = getelementptr inbounds ptr, ptr %407, i64 7
  %409 = load ptr, ptr %408, align 8
  %410 = tail call noundef ptr %409(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %411 = icmp eq ptr %410, null
  br i1 %411, label %427, label %412

412:                                              ; preds = %405, %412
  %413 = phi ptr [ %425, %412 ], [ %410, %405 ]
  %414 = load ptr, ptr %0, align 8, !tbaa !140
  %415 = getelementptr inbounds ptr, ptr %414, i64 92
  %416 = load ptr, ptr %415, align 8
  %417 = tail call noundef ptr %416(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %413, i1 noundef zeroext true, i1 noundef zeroext false) #21
  %418 = load ptr, ptr %406, align 8, !tbaa !140
  %419 = getelementptr inbounds ptr, ptr %418, i64 17
  %420 = load ptr, ptr %419, align 8
  %421 = tail call noundef ptr %420(ptr noundef nonnull align 8 dereferenceable(8) %406, ptr noundef %417) #21
  %422 = load ptr, ptr %413, align 8, !tbaa !140
  %423 = getelementptr inbounds ptr, ptr %422, i64 10
  %424 = load ptr, ptr %423, align 8
  %425 = tail call noundef ptr %424(ptr noundef nonnull align 8 dereferenceable(8) %413) #21
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %412, !llvm.loop !177

427:                                              ; preds = %412, %405, %366, %125, %134, %143, %155, %186, %199, %369, %374, %403
  %428 = phi ptr [ %404, %403 ], [ %382, %374 ], [ %373, %369 ], [ %207, %199 ], [ %198, %186 ], [ %163, %155 ], [ %151, %143 ], [ %142, %134 ], [ %133, %125 ], [ %231, %366 ], [ %406, %405 ], [ %406, %412 ]
  %429 = load ptr, ptr %428, align 8, !tbaa !140
  %430 = getelementptr inbounds ptr, ptr %429, i64 4
  %431 = load ptr, ptr %430, align 8
  %432 = tail call noundef signext i16 %431(ptr noundef nonnull align 8 dereferenceable(8) %428) #21
  %433 = icmp eq i16 %432, 5
  br i1 %433, label %440, label %434

434:                                              ; preds = %427
  %435 = load ptr, ptr %428, align 8, !tbaa !140
  %436 = getelementptr inbounds ptr, ptr %435, i64 4
  %437 = load ptr, ptr %436, align 8
  %438 = tail call noundef signext i16 %437(ptr noundef nonnull align 8 dereferenceable(8) %428) #21
  %439 = icmp eq i16 %438, 6
  br i1 %439, label %440, label %442

440:                                              ; preds = %434, %427
  %441 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %428) #21
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %441, i1 noundef zeroext true, i1 noundef zeroext true) #21
  store i8 %6, ptr %5, align 4, !tbaa !172
  br label %442

442:                                              ; preds = %440, %434
  br i1 %3, label %445, label %443

443:                                              ; preds = %442
  %444 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %444, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %428) #21
  br label %445

445:                                              ; preds = %443, %442
  ret ptr %428

446:                                              ; preds = %213, %401
  %447 = phi ptr [ %398, %401 ], [ %210, %213 ]
  %448 = phi { ptr, i32 } [ %402, %401 ], [ %214, %213 ]
  tail call void @__cxa_free_exception(ptr %447) #22
  br label %449

449:                                              ; preds = %446, %361
  %450 = phi { ptr, i32 } [ %362, %361 ], [ %448, %446 ]
  resume { ptr, i32 } %450
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_715DOMDocumentImplD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #20
  ret void
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr poison, ptr poison) #21
  unreachable
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE(ptr noundef %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr poison) #21
  unreachable
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i16 zeroext %4, ptr nocapture readnone %5) unnamed_addr #8 align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -8
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr poison, ptr poison, ptr poison, i16 zeroext poison, ptr poison) #21
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_715DOMDocumentImplD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #20
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #9 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) #21
  ret ptr %7
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #9 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) #21
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImplD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeNameEv(ptr nocapture readnone %0) unnamed_addr #5 align 2 {
  ret ptr @_ZZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEvE3nam
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getNodeValueEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv(ptr nocapture readnone %0) unnamed_addr #5 align 2 {
  ret i16 9
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getParentNodeEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getChildNodesEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getFirstChildEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLastChildEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getAttributesEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv(ptr nocapture readnone %0) unnamed_addr #5 align 2 {
  ret ptr null
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9cloneNodeEb(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(293) %3, i1 noundef zeroext %1) #21
  ret ptr %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef %1, ptr noundef %2) #21
  ret ptr %1
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef %1, ptr noundef %2) #21
  ret ptr %5
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE(ptr noundef %0, ptr noundef returned %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret ptr %1
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret i1 %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl9normalizeEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef %1, ptr noundef %2) #21
  ret i1 %5
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9getPrefixEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLocalNameEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl9setPrefixEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasAttributesEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret i1 %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret i1 %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret i1 %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  %6 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10getBaseURIEv(ptr nocapture noundef readonly %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef signext i16 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret i16 %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getTextContentEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl14setTextContentEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  %5 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef %1, i1 noundef zeroext %2) #21
  ret ptr %5
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret i1 %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl7releaseEv(ptr noundef %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(293) %2) #21
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  tail call void @_ZN11xercesc_2_711DOMDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !140
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef nonnull %5) #21
          to label %7 unwind label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %0) #21
          to label %9 unwind label %24

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %10, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 17, ptr noundef %1) #21
          to label %13 unwind label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %14, i8 0, i64 104, i1 false)
  store ptr %1, ptr %15, align 8, !tbaa !114
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  store i32 0, ptr %16, align 8, !tbaa !171
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 1, ptr %17, align 4, !tbaa !172
  %18 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef nonnull %0) #21
          to label %19 unwind label %28

19:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(20) %18, i32 noundef 257, ptr noundef nonnull %0) #21
          to label %20 unwind label %28

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 21
  store ptr %18, ptr %21, align 8, !tbaa !178
  ret void

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %34

24:                                               ; preds = %7
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %32

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %19, %13
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #20
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #20
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %23, %22 ]
  tail call void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !179 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  tail call void @_ZN11xercesc_2_716DOMDocumentRangeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_717DOMXPathEvaluatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_720DOMDocumentTraversalC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !140
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !140
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !140
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #11

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !180 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #21
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMDocumentRangeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMDocumentRangeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMXPathEvaluatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMXPathEvaluatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720DOMDocumentTraversalC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720DOMDocumentTraversalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !181 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_720DOMDocumentTraversalD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_717DOMXPathEvaluatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  tail call void @_ZN11xercesc_2_716DOMDocumentRangeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #24
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_711DOMDocument18createDocumentTypeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_711DOMDocumentD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_711DOMDocumentD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_711DOMDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_711DOMDocumentD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_711DOMDocumentD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_711DOMDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_711DOMDocumentD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_711DOMDocumentD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_711DOMDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMDocumentRangeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMDocumentRangeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMXPathEvaluatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMXPathEvaluatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720DOMDocumentTraversalD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720DOMDocumentTraversalD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1) local_unnamed_addr #1 align 2 !prof !182 {
  %3 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef %1) #21
  %4 = icmp ugt i64 %3, 4096
  br i1 %4, label %5, label %24, !prof !183

5:                                                ; preds = %2
  %6 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8) #21
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = add i64 %6, %3
  %10 = load ptr, ptr %8, align 8, !tbaa !140
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %9) #21
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr %15, align 8, !tbaa !164
  store ptr %18, ptr %13, align 8, !tbaa !164
  %19 = load ptr, ptr %14, align 8, !tbaa !184
  store ptr %13, ptr %19, align 8, !tbaa !164
  br label %22

20:                                               ; preds = %5
  store ptr %13, ptr %14, align 8, !tbaa !184
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds i8, ptr %13, i64 %6
  br label %49

24:                                               ; preds = %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %26 = load i64, ptr %25, align 8, !tbaa !185
  %27 = icmp ugt i64 %3, %26
  br i1 %27, label %31, label %28, !prof !186

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  br label %43

31:                                               ; preds = %24
  %32 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8) #21
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = load ptr, ptr %34, align 8, !tbaa !140
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef 65536) #21
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !184
  store ptr %40, ptr %38, align 8, !tbaa !164
  store ptr %38, ptr %39, align 8, !tbaa !184
  %41 = getelementptr inbounds i8, ptr %38, i64 %32
  %42 = sub i64 65536, %32
  br label %43

43:                                               ; preds = %28, %31
  %44 = phi i64 [ %26, %28 ], [ %42, %31 ]
  %45 = phi ptr [ %30, %28 ], [ %41, %31 ]
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %47 = getelementptr inbounds i8, ptr %45, i64 %3
  store ptr %47, ptr %46, align 8, !tbaa !187
  %48 = sub i64 %44, %3
  store i64 %48, ptr %25, align 8, !tbaa !185
  br label %49

49:                                               ; preds = %43, %22
  %50 = phi ptr [ %23, %22 ], [ %45, %43 ]
  ret ptr %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplC2EPKtS2_PNS_15DOMDocumentTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  tail call void @_ZN11xercesc_2_711DOMDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !140
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !140
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !140
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %9, ptr noundef nonnull %8) #21
          to label %10 unwind label %37

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %0) #21
          to label %12 unwind label %39

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %13, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 17, ptr noundef %4) #21
          to label %16 unwind label %41

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 21
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %17, i8 0, i64 104, i1 false)
  store ptr %4, ptr %19, align 8, !tbaa !114
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  store i32 0, ptr %20, align 8, !tbaa !171
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 1, ptr %21, align 4, !tbaa !172
  %22 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef nonnull %0) #21
          to label %23 unwind label %43

23:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(20) %22, i32 noundef 257, ptr noundef nonnull %0) #21
          to label %24 unwind label %43

24:                                               ; preds = %23
  store ptr %22, ptr %18, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %3) #21
          to label %25 unwind label %45

25:                                               ; preds = %24
  %26 = icmp eq ptr %2, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %0, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef nonnull %2) #21
          to label %32 unwind label %45

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 41
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %31) #21
          to label %69 unwind label %45

37:                                               ; preds = %5
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %76

39:                                               ; preds = %10
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %74

41:                                               ; preds = %12
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %72

43:                                               ; preds = %23, %16
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %70

45:                                               ; preds = %52, %32, %27, %24
  %46 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %55

47:                                               ; preds = %25
  %48 = icmp eq ptr %1, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %47
  %50 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %51 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %50, i16 noundef signext 14, ptr noundef null, ptr noundef %51) #21
          to label %52 unwind label %53

52:                                               ; preds = %49
  invoke void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
          to label %81 unwind label %45

53:                                               ; preds = %49
  %54 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  tail call void @__cxa_free_exception(ptr %50) #22
  br label %55

55:                                               ; preds = %53, %45
  %56 = phi { ptr, i32 } [ %46, %45 ], [ %54, %53 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  %58 = extractvalue { ptr, i32 } %56, 1
  %59 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #22
  %60 = icmp eq i32 %58, %59
  %61 = tail call ptr @__cxa_begin_catch(ptr %57) #22
  br i1 %60, label %62, label %63

62:                                               ; preds = %55
  invoke void @__cxa_rethrow() #23
          to label %81 unwind label %67

63:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_715DOMDocumentImpl10deleteHeapEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
          to label %64 unwind label %65

64:                                               ; preds = %63
  invoke void @__cxa_rethrow() #23
          to label %81 unwind label %65

65:                                               ; preds = %64, %63
  %66 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %70 unwind label %78

67:                                               ; preds = %62
  %68 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %70 unwind label %78

69:                                               ; preds = %32, %47
  ret void

70:                                               ; preds = %67, %65, %43
  %71 = phi { ptr, i32 } [ %66, %65 ], [ %44, %43 ], [ %68, %67 ]
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #20
  br label %72

72:                                               ; preds = %70, %41
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %42, %41 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  br label %74

74:                                               ; preds = %72, %39
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %9) #20
  br label %76

76:                                               ; preds = %74, %37
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  resume { ptr, i32 } %77

78:                                               ; preds = %67, %65
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  tail call void @__clang_call_terminate(ptr %80) #24
  unreachable

81:                                               ; preds = %62, %64, %52
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !140
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !140
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %18 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %17, i16 noundef signext 4, ptr noundef null, ptr noundef %18) #21
          to label %19 unwind label %20

19:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #22
  resume { ptr, i32 } %21

22:                                               ; preds = %10, %4
  %23 = load ptr, ptr %1, align 8, !tbaa !140
  %24 = getelementptr inbounds ptr, ptr %23, i64 49
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(130) %1, ptr noundef nonnull %0) #21
  %26 = load ptr, ptr %0, align 8, !tbaa !140
  %27 = getelementptr inbounds ptr, ptr %26, i64 41
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br label %30

30:                                               ; preds = %2, %22
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #12

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #15

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl10deleteHeapEv(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #1 align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !189

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  %10 = load ptr, ptr %6, align 8, !tbaa !114
  %11 = load ptr, ptr %10, align 8, !tbaa !140
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %8) #21
  store ptr %9, ptr %2, align 8, !tbaa !184
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %7, !prof !190, !llvm.loop !191

15:                                               ; preds = %7, %1
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !140
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !140
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !154

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #21
          to label %9 unwind label %53

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !154

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !140
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #20
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !166
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !154

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !140
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #20
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !154

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %27) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #20
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !193
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34, !prof !154

34:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEE17deleteAllElementsEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #21
  %35 = load ptr, ptr %31, align 8, !tbaa !193
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %35) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %35) #20
  br label %38

38:                                               ; preds = %34, %37, %30
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !154

42:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %40) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %40) #20
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 22
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_713DOMNormalizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %45) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #20
  br label %48

48:                                               ; preds = %47, %43
  invoke void @_ZN11xercesc_2_715DOMDocumentImpl10deleteHeapEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
          to label %49 unwind label %53

49:                                               ; preds = %48
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %50) #20
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %51) #20
  %52 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %52) #20
  tail call void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void

53:                                               ; preds = %48, %8
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #24
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #21
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = load ptr, ptr %3, align 8, !tbaa !140
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #21
  %9 = load ptr, ptr %2, align 8, !tbaa !195
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !198
  %12 = load ptr, ptr %9, align 8, !tbaa !140
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #21
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #20
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !202
  %6 = load ptr, ptr %3, align 8, !tbaa !140
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #21
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !203
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !140
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #24
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEE17deleteAllElementsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = load i32, ptr %0, align 8, !tbaa !204
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 1
  br label %7

6:                                                ; preds = %17, %1
  ret void

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %2, %4 ], [ %18, %17 ]
  %9 = phi i64 [ 0, %4 ], [ %21, %17 ]
  %10 = load ptr, ptr %5, align 8, !tbaa !206
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %12) #20
  %15 = load ptr, ptr %5, align 8, !tbaa !206
  %16 = load i32, ptr %0, align 8, !tbaa !204
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ %8, %7 ]
  %19 = phi ptr [ %15, %14 ], [ %10, %7 ]
  %20 = getelementptr inbounds ptr, ptr %19, i64 %9
  store ptr null, ptr %20, align 8, !tbaa !164
  %21 = add nuw nsw i64 %9, 1
  %22 = zext i32 %18 to i64
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %7, label %6, !llvm.loop !207
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = load ptr, ptr %3, align 8, !tbaa !140
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #21
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713DOMNormalizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !209
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  br label %10

8:                                                ; preds = %47, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  store i64 0, ptr %9, align 8, !tbaa !210
  ret void

10:                                               ; preds = %5, %47
  %11 = phi i64 [ %3, %5 ], [ %48, %47 ]
  %12 = phi i64 [ 0, %5 ], [ %51, %47 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !198
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  %21 = load i8, ptr %0, align 8, !tbaa !213, !range !149, !noundef !150
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !214
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !140
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(58) %24) #20
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %7, align 8, !tbaa !195
  %32 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %18, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !215
  %34 = load ptr, ptr %31, align 8, !tbaa !140
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33) #21
  %37 = load ptr, ptr %7, align 8, !tbaa !195
  %38 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %18, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !216
  %40 = load ptr, ptr %37, align 8, !tbaa !140
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %39) #21
  tail call void @_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #20
  %43 = icmp eq ptr %20, null
  br i1 %43, label %44, label %17, !llvm.loop !217

44:                                               ; preds = %30
  %45 = load ptr, ptr %6, align 8, !tbaa !198
  %46 = load i64, ptr %2, align 8, !tbaa !209
  br label %47

47:                                               ; preds = %44, %10
  %48 = phi i64 [ %46, %44 ], [ %11, %10 ]
  %49 = phi ptr [ %45, %44 ], [ %13, %10 ]
  %50 = getelementptr inbounds ptr, ptr %49, i64 %12
  store ptr null, ptr %50, align 8, !tbaa !164
  %51 = add nuw i64 %12, 1
  %52 = icmp ult i64 %51, %48
  br i1 %52, label %10, label %8, !llvm.loop !218
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !219
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !220
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !202
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = load i8, ptr %9, align 8, !tbaa !223, !range !149, !noundef !150
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !224
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #20
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !200
  %31 = load ptr, ptr %30, align 8, !tbaa !140
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #21
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !225

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !202
  %37 = load i32, ptr %4, align 8, !tbaa !219
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !164
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !226

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !220
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !227, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !229
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !230
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #20
  %22 = load i32, ptr %6, align 4, !tbaa !229
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !231

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !232
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !230
  %33 = load ptr, ptr %30, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !229
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !227, !range !149, !noundef !150
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !230
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !164
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25) #20
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !230
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !229
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !227, !range !149, !noundef !150
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !230
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !140
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  %23 = load ptr, ptr %7, align 8, !tbaa !230
  %24 = load i32, ptr %2, align 4, !tbaa !229
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !164
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !233
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !227, !range !149, !noundef !150
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !230
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !140
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  %28 = load i32, ptr %3, align 4, !tbaa !229
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !230
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !230
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !230
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !164
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !164
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !234

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !164
  store i32 %31, ptr %3, align 4, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !229
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !227, !range !149, !noundef !150
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !230
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !140
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !227, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !229
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !230
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #20
  %22 = load i32, ptr %6, align 4, !tbaa !229
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !235

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !232
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !230
  %33 = load ptr, ptr %30, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !239, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !242
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  tail call void @_ZdlPv(ptr noundef nonnull %16) #25
  %19 = load i32, ptr %6, align 4, !tbaa !241
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !243

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !244
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !242
  %30 = load ptr, ptr %27, align 8, !tbaa !140
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #21
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !241
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !239, !range !149, !noundef !150
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !242
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !164
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #20
  tail call void @_ZdlPv(ptr noundef nonnull %25) #25
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !242
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !241
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !239, !range !149, !noundef !150
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !242
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #20
  tail call void @_ZdlPv(ptr noundef nonnull %17) #25
  %20 = load ptr, ptr %7, align 8, !tbaa !242
  %21 = load i32, ptr %2, align 4, !tbaa !241
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !164
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !245
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !244
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !239, !range !149, !noundef !150
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !242
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #20
  tail call void @_ZdlPv(ptr noundef nonnull %22) #25
  %25 = load i32, ptr %3, align 4, !tbaa !241
  br label %26

26:                                               ; preds = %17, %24, %13
  %27 = phi i32 [ %4, %17 ], [ %25, %24 ], [ %4, %13 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  br label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !242
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !242
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !242
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !164
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !164
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !246

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !164
  store i32 %28, ptr %3, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !241
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !239, !range !149, !noundef !150
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !242
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #20
  tail call void @_ZdlPv(ptr noundef nonnull %15) #25
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !239, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !242
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79DOMBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  tail call void @_ZdlPv(ptr noundef nonnull %16) #25
  %19 = load i32, ptr %6, align 4, !tbaa !241
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !247

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !244
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !242
  %30 = load ptr, ptr %27, align 8, !tbaa !140
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #21
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !248 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_1E) #21
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #21
  br i1 %5, label %7, label %9, !prof !249

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef %1, i32 noundef %6) #21
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %1, i32 noundef %6) #21
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i1 [ %8, %7 ], [ %10, %9 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !250 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !250 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !251

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1) #21
  br label %19

9:                                                ; preds = %3
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %2) #21
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #21
  br i1 %14, label %15, label %17

15:                                               ; preds = %13, %9
  %16 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1) #21
  br label %19

17:                                               ; preds = %13
  %18 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #21
  br label %19

19:                                               ; preds = %15, %17, %7
  %20 = phi ptr [ %8, %7 ], [ %16, %15 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMCDATASectionImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMCommentImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723DOMDocumentFragmentImplC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(130), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtS4_S4_b(ptr noundef nonnull align 8 dereferenceable(130), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMEntityImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl29createEntityReferenceByParserEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1) #21
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #22
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) #21
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #23
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  %13 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 88, ptr noundef nonnull %0, i32 noundef 9) #21
  tail call void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(88) %13, ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false) #21
  ret ptr %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMNotationImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_728DOMProcessingInstructionImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMTextImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMNodeIteratorImplC1EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !252
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !254
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !164
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !254
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !255
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !254
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !256
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !252
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !257
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !140
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #21
  store ptr %16, ptr %9, align 8, !tbaa !252
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !252
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !164
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !258
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !255, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !254
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !252
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(57) %16) #20
  %22 = load i32, ptr %6, align 4, !tbaa !254
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !259

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !257
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !252
  %33 = load ptr, ptr %30, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !254
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !257
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !255, !range !149, !noundef !150
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !252
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !164
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(57) %25) #20
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !252
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !254
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !254
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !255, !range !149, !noundef !150
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !252
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !140
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(57) %17) #20
  %23 = load ptr, ptr %7, align 8, !tbaa !252
  %24 = load i32, ptr %2, align 4, !tbaa !254
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !164
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !260
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !254
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !257
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !255, !range !149, !noundef !150
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !252
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !140
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(57) %22) #20
  %28 = load i32, ptr %3, align 4, !tbaa !254
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !252
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !252
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !252
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !164
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !164
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !261

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !164
  store i32 %31, ptr %3, align 4, !tbaa !254
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !254
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !254
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !255, !range !149, !noundef !150
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !140
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #20
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !255, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !254
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !252
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(57) %16) #20
  %22 = load i32, ptr %6, align 4, !tbaa !254
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !262

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !257
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !252
  %33 = load ptr, ptr %30, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !254
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !256
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !257
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !140
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #21
  %21 = load i32, ptr %3, align 4, !tbaa !254
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !164
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !252
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !164
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !164
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !263

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !257
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !252
  %49 = load ptr, ptr %46, align 8, !tbaa !140
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #21
  store ptr %20, ptr %47, align 8, !tbaa !252
  store i32 %12, ptr %6, align 8, !tbaa !256
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !254
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !254
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !257
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !252
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DOMTreeWalkerImplC1EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 64, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 noundef 109, i1 noundef zeroext false, i64 noundef 128) #21
  store ptr %8, ptr %4, align 8, !tbaa !192
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %11 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE8getByKeyEPKvPKtS6_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef %1, ptr noundef %2, ptr noundef null) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !tbaa !192
  %15 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 64, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(58) %15, ptr noundef %1, ptr noundef %2) #21
  %16 = tail call noundef i64 @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %15) #21
  %17 = load ptr, ptr %4, align 8, !tbaa !192
  %18 = shl i64 %16, 32
  %19 = ashr exact i64 %18, 32
  %20 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm(ptr noundef nonnull align 8 dereferenceable(64) %17, i64 noundef %19) #21
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi ptr [ %11, %9 ], [ %20, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !264 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !265

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !153
  %8 = load i16, ptr %1, align 2, !tbaa !153
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !266

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !267

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !153
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !268

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !269

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !153
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !270

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !271

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !153
  %28 = load i16, ptr %26, align 2, !tbaa !153
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !272, !llvm.loop !273

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !274 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !275

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !153
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !276

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !153
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !277, !llvm.loop !278

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !113 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 64, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 noundef 109, i1 noundef zeroext false, i64 noundef 128) #21
  store ptr %9, ptr %5, align 8, !tbaa !192
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %12 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE8getByKeyEPKvPKtS6_(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %1, ptr noundef %3, ptr noundef %2) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !tbaa !192
  %16 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 64, ptr noundef nonnull %0) #21
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(58) %16, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  %17 = tail call noundef i64 @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %16) #21
  %18 = load ptr, ptr %5, align 8, !tbaa !192
  %19 = shl i64 %17, 32
  %20 = ashr exact i64 %19, 32
  %21 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm(ptr noundef nonnull align 8 dereferenceable(64) %18, i64 noundef %20) #21
  br label %22

22:                                               ; preds = %14, %10
  %23 = phi ptr [ %12, %10 ], [ %21, %14 ]
  ret ptr %23
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712DOMNodeIDMap4findEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !167 {
  %2 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #21
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6, !prof !279

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  br label %17

6:                                                ; preds = %27, %1
  %7 = phi i32 [ -1, %1 ], [ %28, %27 ]
  %8 = phi i32 [ 0, %1 ], [ %29, %27 ]
  %9 = icmp eq i32 %2, 0
  %10 = icmp sgt i32 %8, 1
  %11 = select i1 %9, i1 true, i1 %10
  %12 = icmp eq i32 %7, 0
  %13 = select i1 %11, i1 true, i1 %12
  %14 = add nsw i32 %2, -1
  %15 = icmp eq i32 %7, %14
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %35, label %32, !prof !280

17:                                               ; preds = %4, %27
  %18 = phi i64 [ 0, %4 ], [ %30, %27 ]
  %19 = phi i32 [ 0, %4 ], [ %29, %27 ]
  %20 = phi i32 [ -1, %4 ], [ %28, %27 ]
  %21 = getelementptr inbounds i16, ptr %0, i64 %18
  %22 = load i16, ptr %21, align 2, !tbaa !153
  %23 = icmp eq i16 %22, 58
  br i1 %23, label %24, label %27, !prof !281

24:                                               ; preds = %17
  %25 = add nsw i32 %19, 1
  %26 = trunc i64 %18 to i32
  br label %27

27:                                               ; preds = %17, %24
  %28 = phi i32 [ %26, %24 ], [ %20, %17 ]
  %29 = phi i32 [ %25, %24 ], [ %19, %17 ]
  %30 = add nuw nsw i64 %18, 1
  %31 = icmp eq i64 %30, %5
  br i1 %31, label %6, label %17, !prof !282, !llvm.loop !283

32:                                               ; preds = %6
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %35, label %34, !prof !284

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %32, %6
  %36 = phi i32 [ -1, %6 ], [ %7, %34 ], [ 0, %32 ]
  ret i32 %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImplC1EPNS_11DOMDocumentEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !287
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !164
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !288
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !287
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !289
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !285
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !290
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !140
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #21
  store ptr %16, ptr %9, align 8, !tbaa !285
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !285
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !164
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !291
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !287
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !285
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(80) %16) #20
  %22 = load i32, ptr %6, align 4, !tbaa !287
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !292

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !290
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !285
  %33 = load ptr, ptr %30, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !287
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #22
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !288, !range !149, !noundef !150
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !285
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !164
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(80) %25) #20
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !285
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !287
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !288, !range !149, !noundef !150
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !285
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !140
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(80) %17) #20
  %23 = load ptr, ptr %7, align 8, !tbaa !285
  %24 = load i32, ptr %2, align 4, !tbaa !287
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !164
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !293
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !288, !range !149, !noundef !150
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !285
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !140
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(80) %22) #20
  %28 = load i32, ptr %3, align 4, !tbaa !287
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !285
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !285
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !285
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !164
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !164
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !294

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !164
  store i32 %31, ptr %3, align 4, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !287
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !288, !range !149, !noundef !150
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !140
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %15) #20
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !287
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !285
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !140
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(80) %16) #20
  %22 = load i32, ptr %6, align 4, !tbaa !287
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !295

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !290
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !285
  %33 = load ptr, ptr %30, align 8, !tbaa !140
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !289
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !290
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !140
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #21
  %21 = load i32, ptr %3, align 4, !tbaa !287
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !164
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !285
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !164
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !164
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !296

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !290
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !285
  %49 = load ptr, ptr %46, align 8, !tbaa !140
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #21
  store ptr %20, ptr %47, align 8, !tbaa !285
  store i32 %12, ptr %6, align 8, !tbaa !289
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !285
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !167 {
  %3 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 2), align 8, !tbaa !297
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !298

5:                                                ; preds = %2
  store i32 1410, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 9), align 4, !tbaa !297
  store i32 442, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 11), align 4, !tbaa !297
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 12), align 16, !tbaa !297
  store <4 x i32> <i32 442, i32 40, i32 0, i32 0>, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 1), align 4, !tbaa !297
  store <4 x i32> <i32 442, i32 442, i32 0, i32 0>, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 5), align 4, !tbaa !297
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr %0, align 8, !tbaa !140
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %11 = load ptr, ptr %1, align 8, !tbaa !140
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %15 = sext i16 %10 to i64
  %16 = getelementptr inbounds [14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !297
  %18 = zext nneg i16 %14 to i32
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp ne i32 %20, 0
  ret i1 %21
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !299 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4, !prof !300

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #21
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 1
  %8 = add nuw nsw i64 %7, 2
  %9 = and i64 %8, 2
  %10 = add nuw nsw i64 %9, %8
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %10) #21
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %11, ptr noundef nonnull %1) #21
  br label %12

12:                                               ; preds = %2, %4
  %13 = phi ptr [ %11, %4 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !188 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !301

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull %1) #21
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef %0) local_unnamed_addr #0 comdat align 2 !prof !302 {
  %2 = and i64 %0, 7
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %7, label %4, !prof !303

4:                                                ; preds = %1
  %5 = and i64 %0, -8
  %6 = add i64 %5, 8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %6, %4 ], [ %0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %0, align 8, !tbaa !213
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !198
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  store i64 %1, ptr %7, align 8, !tbaa !209
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i64 %3, ptr %9, align 8, !tbaa !304
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  store i64 0, ptr %10, align 8, !tbaa !210
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !164
  store ptr %12, ptr %11, align 8, !tbaa !195
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE10initializeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) #21
  %13 = load ptr, ptr %11, align 8, !tbaa !195
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13) #21
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #21
          to label %15 unwind label %19

15:                                               ; preds = %4
  store ptr %14, ptr %8, align 8, !tbaa !199
  %16 = load i64, ptr %9, align 8, !tbaa !304
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store i64 256, ptr %9, align 8, !tbaa !304
  br label %21

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #20
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = phi i64 [ 256, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %11, align 8, !tbaa !195
  %25 = shl i64 %22, 3
  %26 = load ptr, ptr %24, align 8, !tbaa !140
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #21
  store ptr %29, ptr %23, align 8, !tbaa !197
  store ptr null, ptr %29, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE8getByKeyEPKvPKtS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !214
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %0, align 8, !tbaa !213, !range !149, !noundef !150
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %7, align 8, !tbaa !214
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !140
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull align 8 dereferenceable(58) %13) #20
  br label %19

19:                                               ; preds = %12, %15, %9
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  %22 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !215
  %24 = load ptr, ptr %21, align 8, !tbaa !140
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23) #21
  %27 = load ptr, ptr %20, align 8, !tbaa !195
  %28 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %7, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = load ptr, ptr %27, align 8, !tbaa !140
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #21
  store ptr %4, ptr %7, align 8, !tbaa !214
  %33 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !305
  %34 = load ptr, ptr %20, align 8, !tbaa !195
  %35 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %34) #21
  store ptr %35, ptr %22, align 8, !tbaa !215
  %36 = load ptr, ptr %20, align 8, !tbaa !195
  %37 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %36) #21
  store ptr %37, ptr %28, align 8, !tbaa !216
  br label %54

38:                                               ; preds = %5
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40) #21
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !198
  %44 = load i64, ptr %6, align 8, !tbaa !306
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !164
  %47 = load ptr, ptr %39, align 8, !tbaa !195
  invoke void @_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEC2EPvPtS4_PS1_PS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %46, ptr noundef %47) #21
          to label %48 unwind label %52

48:                                               ; preds = %38
  %49 = load ptr, ptr %42, align 8, !tbaa !198
  %50 = load i64, ptr %6, align 8, !tbaa !306
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr %41, ptr %51, align 8, !tbaa !164
  br label %54

52:                                               ; preds = %38
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  resume { ptr, i32 } %53

54:                                               ; preds = %48, %19
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  %56 = load i64, ptr %55, align 8, !tbaa !210
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 5
  %59 = load i64, ptr %58, align 8, !tbaa !304
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !197
  br label %86

64:                                               ; preds = %54
  %65 = uitofp i64 %57 to double
  %66 = fmul double %65, 1.500000e+00
  %67 = fptoui double %66 to i64
  %68 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !195
  %70 = shl i64 %67, 3
  %71 = load ptr, ptr %69, align 8, !tbaa !140
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %69, i64 noundef %70) #21
  %75 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !197
  %77 = load i64, ptr %58, align 8, !tbaa !304
  %78 = shl i64 %77, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %74, ptr align 8 %76, i64 %78, i1 false)
  %79 = load ptr, ptr %68, align 8, !tbaa !195
  %80 = load ptr, ptr %75, align 8, !tbaa !197
  %81 = load ptr, ptr %79, align 8, !tbaa !140
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  call void %83(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %80) #21
  store ptr %74, ptr %75, align 8, !tbaa !197
  store i64 %67, ptr %58, align 8, !tbaa !304
  %84 = load i64, ptr %55, align 8, !tbaa !210
  %85 = add i64 %84, 1
  br label %86

86:                                               ; preds = %61, %64
  %87 = phi i64 [ %57, %61 ], [ %85, %64 ]
  %88 = phi ptr [ %63, %61 ], [ %74, %64 ]
  store i64 %87, ptr %55, align 8, !tbaa !210
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  store ptr %4, ptr %89, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i64 %87
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = freeze i64 %4
  %6 = add i64 %1, -1
  %7 = icmp ult i64 %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !195
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 264, i32 noundef 67, ptr noundef %11) #21
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #22
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = getelementptr inbounds ptr, ptr %17, i64 %1
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE10initializeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 139, i32 noundef 48, ptr noundef %7) #21
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #22
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !195
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !209
  %16 = shl i64 %15, 3
  %17 = load ptr, ptr %13, align 8, !tbaa !140
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %16) #21
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !198
  %22 = load i64, ptr %14, align 8, !tbaa !209
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %25, %11
  ret void

25:                                               ; preds = %11, %25
  %26 = phi i64 [ %29, %25 ], [ 0, %11 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !198
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  store ptr null, ptr %28, align 8, !tbaa !164
  %29 = add nuw i64 %26, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %24, label %25, !llvm.loop !307
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !199
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !209
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = load ptr, ptr %7, align 8, !tbaa !140
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %10, ptr noundef %12) #21
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %4, align 8, !tbaa !306
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !198
  %19 = getelementptr inbounds ptr, ptr %18, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = icmp eq ptr %20, null
  br i1 %21, label %56, label %22

22:                                               ; preds = %5
  %23 = icmp eq ptr %2, null
  %24 = icmp eq ptr %3, null
  br label %25

25:                                               ; preds = %22, %47
  %26 = phi ptr [ %20, %22 ], [ %49, %47 ]
  %27 = load ptr, ptr %6, align 8, !tbaa !199
  %28 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !305
  %30 = load ptr, ptr %27, align 8, !tbaa !140
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %1, ptr noundef %29) #21
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !215
  %37 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %36) #21
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !216
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef %40) #21
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load ptr, ptr %35, align 8, !tbaa !215
  %44 = icmp eq ptr %43, null
  br i1 %23, label %46, label %45

45:                                               ; preds = %42
  br i1 %44, label %47, label %51

46:                                               ; preds = %42
  br i1 %44, label %51, label %47

47:                                               ; preds = %25, %34, %38, %55, %54, %46, %45
  %48 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !164
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %25, !llvm.loop !308

51:                                               ; preds = %46, %45
  %52 = load ptr, ptr %39, align 8, !tbaa !216
  %53 = icmp eq ptr %52, null
  br i1 %24, label %55, label %54

54:                                               ; preds = %51
  br i1 %53, label %47, label %56

55:                                               ; preds = %51
  br i1 %53, label %56, label %47

56:                                               ; preds = %55, %54, %47, %5
  %57 = phi ptr [ null, %5 ], [ null, %47 ], [ %26, %54 ], [ %26, %55 ]
  ret ptr %57
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !309 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !310

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #21
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !140
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEC2EPvPtS4_PS1_PS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr %4, ptr %0, align 8, !tbaa !214
  %8 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !211
  %9 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !305
  %10 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 4
  %12 = icmp eq ptr %2, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %2, ptr noundef %6) #21
  store ptr %14, ptr %10, align 8, !tbaa !215
  br label %15

15:                                               ; preds = %13, %7
  %16 = icmp eq ptr %3, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %3, ptr noundef %6) #21
  store ptr %18, ptr %11, align 8, !tbaa !216
  br label %19

19:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  %3 = load i8, ptr %2, align 4, !tbaa !172, !range !149, !noundef !150
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMDocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(293) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 %3, ptr %4, align 4, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNormalizerC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNormalizer17normalizeDocumentEPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMConfigurationImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #5 !prof !113 !PGOFuncName !311 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !312
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !153
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !312
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPNS_11DOMNodeImplEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %6 = alloca %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  %8 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2) #21
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !165
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14) #21
  %16 = load ptr, ptr %13, align 8, !tbaa !114
  %17 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %16) #21
          to label %18 unwind label %22

18:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
          to label %19 unwind label %24

19:                                               ; preds = %18
  %20 = load ptr, ptr %13, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 109, i1 noundef zeroext true, ptr noundef nonnull %17, ptr noundef %20) #21
          to label %21 unwind label %22

21:                                               ; preds = %19
  store ptr %15, ptr %9, align 8, !tbaa !165
  br label %34

22:                                               ; preds = %19, %12
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #20
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %23, %22 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #20
  br label %53

28:                                               ; preds = %5
  %29 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %1, i32 noundef %8) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = tail call noundef ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #21
  %33 = load ptr, ptr %9, align 8, !tbaa !165
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef %1, i32 noundef %8) #21
  br label %34

34:                                               ; preds = %28, %31, %21
  %35 = phi ptr [ null, %21 ], [ %32, %31 ], [ null, %28 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %9, align 8, !tbaa !165
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %40) #21
  tail call void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEEC2EPvPS1_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull %3, ptr noundef %4) #21
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3putEPviPS3_(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %1, i32 noundef %8, ptr noundef nonnull %41) #21
  br label %52

42:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #22
  %43 = load ptr, ptr %9, align 8, !tbaa !165
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %45 = load ptr, ptr %44, align 8, !tbaa !114
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %43, i1 noundef zeroext false, ptr noundef %45) #21
  invoke void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE13setPrimaryKeyEPKv(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1) #21
          to label %46 unwind label %49

46:                                               ; preds = %42
  %47 = call noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #21
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  call void @_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(10) %1, i1 noundef zeroext false) #21
  br label %51

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  br label %53

51:                                               ; preds = %48, %46
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  br label %52

52:                                               ; preds = %51, %37
  ret ptr %35

53:                                               ; preds = %49, %26
  %54 = phi { ptr, i32 } [ %50, %49 ], [ %27, %26 ]
  resume { ptr, i32 } %54
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !313 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !315

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !316
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #21
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !113 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr %4, ptr %0, align 8, !tbaa !200
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !223
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !202
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !219
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !220
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !203
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #21
  store ptr %3, ptr %11, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !224
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !219
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !164
  %9 = load ptr, ptr %5, align 8, !tbaa !140
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #21
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %3, %55
  %19 = phi ptr [ %57, %55 ], [ %16, %3 ]
  %20 = phi ptr [ %19, %55 ], [ null, %3 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !203
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !320
  %24 = load ptr, ptr %21, align 8, !tbaa !140
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23) #21
  br i1 %27, label %28, label %55

28:                                               ; preds = %18
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !321
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = icmp eq ptr %20, null
  %34 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !221
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 %14
  %39 = select i1 %33, ptr %38, ptr %36
  store ptr %35, ptr %39, align 8, !tbaa !164
  %40 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !223, !range !149, !noundef !150
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %19, align 8, !tbaa !224
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %44) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %44) #20
  br label %47

47:                                               ; preds = %43, %46, %32
  %48 = load ptr, ptr %0, align 8, !tbaa !200
  %49 = load ptr, ptr %48, align 8, !tbaa !140
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull %19) #21
  %52 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !220
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 4, !tbaa !220
  ret void

55:                                               ; preds = %28, %18
  %56 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !164
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %18, !llvm.loop !322

59:                                               ; preds = %55, %3
  %60 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %61 = load ptr, ptr %0, align 8, !tbaa !200
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 50, ptr noundef %61) #21
          to label %62 unwind label %63

62:                                               ; preds = %59
  tail call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

63:                                               ; preds = %59
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %60) #22
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3putEPviPS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !219
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !220
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !223, !range !149, !noundef !150
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !224
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #20
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #20
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !224
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !320
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !321
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !200
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #21
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !202
  %35 = load i32, ptr %5, align 4, !tbaa !297
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !164
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPviPS3_PS4_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #21
  %39 = load ptr, ptr %33, align 8, !tbaa !202
  %40 = load i32, ptr %5, align 4, !tbaa !297
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !164
  %43 = load i32, ptr %9, align 4, !tbaa !220
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !220
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEEC2EPvPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr %1, ptr %0, align 8, !tbaa !318
  %4 = getelementptr inbounds %"class.xercesc_2_7::KeyRefPair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !323
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !324
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !327
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !328
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !329
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !330
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !331
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %15 = load ptr, ptr %10, align 8, !tbaa !330
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.2, i32 noundef 522, i32 noundef 15, ptr noundef %15) #21
          to label %16 unwind label %17

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
          to label %25 unwind label %19

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #22
  br label %23

19:                                               ; preds = %21, %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
          to label %22 unwind label %19

22:                                               ; preds = %21
  ret void

23:                                               ; preds = %19, %17
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %24

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE13setPrimaryKeyEPKv(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !331
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !328
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !329
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !219
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !312
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8USERDATAE, align 2, !tbaa !153
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !312
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !324, !range !149, !noundef !150
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !329
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !332 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !333

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !334
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret ptr %9
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !336 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !339
  %8 = load ptr, ptr %0, align 8, !tbaa !340
  %9 = load ptr, ptr %5, align 8, !tbaa !140
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #21
  store i32 %11, ptr %2, align 4, !tbaa !297
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !341
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !342

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !337
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !343
  %23 = load ptr, ptr %20, align 8, !tbaa !140
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #21
  br i1 %26, label %31, label %27, !prof !344

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !164
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !345, !llvm.loop !346

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !200
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6) #21
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #22
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !219
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !140
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #21
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !202
  %21 = load i32, ptr %12, align 8, !tbaa !219
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !202
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !164
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !347
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !219
  %9 = load ptr, ptr %0, align 8, !tbaa !200
  %10 = load ptr, ptr %6, align 8, !tbaa !140
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #21
  store i32 %12, ptr %3, align 4, !tbaa !297
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !202
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !321
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !203
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !320
  %28 = load ptr, ptr %25, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #21
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !348

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !219
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !200
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !140
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %14 = load ptr, ptr %0, align 8, !tbaa !200
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEEC2EPS6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !219
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !202
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  store ptr %23, ptr %21, align 8, !tbaa !202
  store i32 %6, ptr %3, align 8, !tbaa !219
  %24 = load ptr, ptr %0, align 8, !tbaa !200
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #21
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !202
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !164
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !221
  %39 = load ptr, ptr %19, align 8, !tbaa !203
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !320
  %42 = load ptr, ptr %0, align 8, !tbaa !200
  %43 = load ptr, ptr %39, align 8, !tbaa !140
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #21
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !164
  store ptr %49, ptr %37, align 8, !tbaa !221
  store ptr %36, ptr %48, align 8, !tbaa !164
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !349

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !219
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !350

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPviPS3_PS4_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 !prof !113 {
  store ptr %3, ptr %0, align 8, !tbaa !224
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !221
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !320
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEEC2EPS6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr %1, ptr %0, align 8, !tbaa !351
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !353
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !351
  store ptr null, ptr %0, align 8, !tbaa !351
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEE5resetEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #21
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #24
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEE5resetEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = load ptr, ptr %0, align 8, !tbaa !351
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !353
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !140
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #21
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #25
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !351
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !353
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !327
  %7 = icmp eq ptr %6, null
  br i1 %4, label %51, label %8

8:                                                ; preds = %1
  br i1 %7, label %9, label %18

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !329
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !328
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  br label %20

18:                                               ; preds = %8
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %17, %9 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  store ptr %22, ptr %5, align 8, !tbaa !327
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %39
  %27 = phi ptr [ %22, %24 ], [ %41, %39 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !329
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !203
  %31 = load ptr, ptr %2, align 8, !tbaa !331
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !320
  %34 = load ptr, ptr %30, align 8, !tbaa !140
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef %33) #21
  %38 = load ptr, ptr %5, align 8, !tbaa !327
  br i1 %37, label %43, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !164
  store ptr %41, ptr %5, align 8, !tbaa !327
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %26, !llvm.loop !354

43:                                               ; preds = %26
  %44 = icmp eq ptr %38, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %39, %20, %43
  %46 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !329
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !219
  %50 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %49, ptr %50, align 8, !tbaa !328
  br label %78

51:                                               ; preds = %1
  br i1 %7, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !221
  store ptr %54, ptr %5, align 8, !tbaa !327
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %51, %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !328
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !328
  %60 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !329
  %62 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !219
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %61, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !202
  br label %68

68:                                               ; preds = %65, %74
  %69 = phi i32 [ %59, %65 ], [ %75, %74 ]
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !164
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = add i32 %69, 1
  store i32 %75, ptr %57, align 8, !tbaa !328
  %76 = icmp eq i32 %75, %63
  br i1 %76, label %78, label %68, !llvm.loop !355

77:                                               ; preds = %68
  store ptr %72, ptr %5, align 8, !tbaa !327
  br label %78

78:                                               ; preds = %74, %56, %43, %45, %77, %52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !330
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 559, i32 noundef 30, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !327
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  %16 = load ptr, ptr %15, align 8, !tbaa !224
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !329
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !219
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !330
  %14 = load ptr, ptr %9, align 8, !tbaa !140
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %3, i32 noundef %11, ptr noundef %13) #21
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i32 [ %16, %5 ], [ -1, %1 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %20, align 8, !tbaa !327
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKNS_11DOMNodeImplEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  %9 = tail call noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8, !tbaa !165
  %13 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %1, i32 noundef %9) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call noundef ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #21
  br label %17

17:                                               ; preds = %11, %7, %15, %3
  %18 = phi ptr [ %16, %15 ], [ null, %3 ], [ null, %7 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !356 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !314
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !357

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !316
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %6 = alloca %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !165
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12, !prof !154

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #22
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef %14) #21
  invoke void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE13setPrimaryKeyEPKv(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1) #21
          to label %15 unwind label %35

15:                                               ; preds = %12
  %16 = call noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #21
  br i1 %16, label %17, label %47

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  br label %19

19:                                               ; preds = %17, %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  invoke void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #21
          to label %20 unwind label %37

20:                                               ; preds = %19
  %21 = load ptr, ptr %9, align 8, !tbaa !165
  %22 = load i32, ptr %8, align 4, !tbaa !297
  %23 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %1, i32 noundef %22) #21
          to label %24 unwind label %39

24:                                               ; preds = %20
  %25 = call noundef ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = call noundef ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #21
  %29 = load i32, ptr %8, align 4, !tbaa !297
  %30 = invoke noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef %29) #21
          to label %31 unwind label %41

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 8, !tbaa !140
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %2, ptr noundef %30, ptr noundef %28, ptr noundef %3, ptr noundef %4) #21
          to label %43 unwind label %41

35:                                               ; preds = %49, %12
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %52

37:                                               ; preds = %19
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %45

39:                                               ; preds = %20
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %45

41:                                               ; preds = %31, %27
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %31, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  %44 = call noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #21
  br i1 %44, label %19, label %47, !llvm.loop !358

45:                                               ; preds = %39, %41, %37
  %46 = phi { ptr, i32 } [ %38, %37 ], [ %42, %41 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %52

47:                                               ; preds = %43, %15
  %48 = icmp eq i32 %2, 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = load ptr, ptr %9, align 8, !tbaa !165
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef %1) #21
          to label %51 unwind label %35

51:                                               ; preds = %49, %47
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  br label %54

52:                                               ; preds = %45, %35
  %53 = phi { ptr, i32 } [ %46, %45 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  resume { ptr, i32 } %53

54:                                               ; preds = %51, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !330
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 575, i32 noundef 30, ptr noundef %11) #21
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #22
  resume { ptr, i32 } %14

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !327
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  %18 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !320
  store ptr %19, ptr %1, align 8, !tbaa !164
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !321
  store i32 %21, ptr %2, align 4, !tbaa !297
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KeyRefPair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !359 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %15, label %8, !prof !360

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !361
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.3, i32 noundef 165, i32 noundef 89, ptr noundef %11) #21
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #22
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !362
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !363
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !219
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !164
  %8 = load ptr, ptr %4, align 8, !tbaa !140
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7) #21
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %61, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  br label %20

20:                                               ; preds = %17, %57
  %21 = phi ptr [ %15, %17 ], [ %59, %57 ]
  %22 = phi ptr [ null, %17 ], [ %58, %57 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !203
  %24 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !320
  %26 = load ptr, ptr %23, align 8, !tbaa !140
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %1, ptr noundef %25) #21
  br i1 %29, label %30, label %54

30:                                               ; preds = %20
  %31 = icmp eq ptr %22, null
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !221
  %34 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds ptr, ptr %35, i64 %13
  %37 = select i1 %31, ptr %36, ptr %34
  store ptr %33, ptr %37, align 8, !tbaa !164
  %38 = load i8, ptr %18, align 8, !tbaa !223, !range !149, !noundef !150
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load ptr, ptr %21, align 8, !tbaa !224
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %41) #20
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !221
  br label %46

46:                                               ; preds = %40, %43, %30
  %47 = phi ptr [ %33, %40 ], [ %45, %43 ], [ %33, %30 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !200
  %49 = load ptr, ptr %48, align 8, !tbaa !140
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull %21) #21
  %52 = load i32, ptr %19, align 4, !tbaa !220
  %53 = add i32 %52, -1
  store i32 %53, ptr %19, align 4, !tbaa !220
  br label %57

54:                                               ; preds = %20
  %55 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !221
  br label %57

57:                                               ; preds = %54, %46
  %58 = phi ptr [ %22, %46 ], [ %21, %54 ]
  %59 = phi ptr [ %47, %46 ], [ %56, %54 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %20, !llvm.loop !364

61:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15transferElementEPKvPv(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, ptr noundef %2) #21
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(10) %1, i1 noundef zeroext false) #21
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(10) %2, i1 noundef zeroext true) #21
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15transferElementEPKvPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !219
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !164
  %10 = load ptr, ptr %6, align 8, !tbaa !140
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #21
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !202
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %82
  %22 = phi ptr [ %17, %19 ], [ %84, %82 ]
  %23 = phi ptr [ null, %19 ], [ %83, %82 ]
  %24 = load ptr, ptr %5, align 8, !tbaa !203
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !320
  %27 = load ptr, ptr %24, align 8, !tbaa !140
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %1, ptr noundef %26) #21
  br i1 %30, label %31, label %79

31:                                               ; preds = %21
  %32 = icmp eq ptr %23, null
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %23, i64 0, i32 1
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds ptr, ptr %36, i64 %15
  %38 = select i1 %32, ptr %37, ptr %35
  store ptr %34, ptr %38, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !321
  %41 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %2, i32 noundef %40, ptr noundef nonnull align 4 dereferenceable(4) %4) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = load i8, ptr %20, align 8, !tbaa !223, !range !149, !noundef !150
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %41, align 8, !tbaa !224
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #20
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #20
  br label %50

50:                                               ; preds = %46, %49, %43
  %51 = load ptr, ptr %22, align 8, !tbaa !224
  store ptr %51, ptr %41, align 8, !tbaa !224
  %52 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %41, i64 0, i32 2
  store ptr %2, ptr %52, align 8, !tbaa !320
  %53 = load i32, ptr %39, align 8, !tbaa !321
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %41, i64 0, i32 3
  store i32 %53, ptr %54, align 8, !tbaa !321
  br label %72

55:                                               ; preds = %31
  %56 = load ptr, ptr %0, align 8, !tbaa !200
  %57 = load ptr, ptr %56, align 8, !tbaa !140
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 32) #21
  %61 = load i32, ptr %39, align 8, !tbaa !321
  %62 = load ptr, ptr %22, align 8, !tbaa !224
  %63 = load ptr, ptr %13, align 8, !tbaa !202
  %64 = load i32, ptr %4, align 4, !tbaa !297
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !164
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPviPS3_PS4_(ptr noundef nonnull align 8 dereferenceable(28) %60, ptr noundef %2, i32 noundef %61, ptr noundef %62, ptr noundef %67) #21
  %68 = load ptr, ptr %13, align 8, !tbaa !202
  %69 = load i32, ptr %4, align 4, !tbaa !297
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  store ptr %60, ptr %71, align 8, !tbaa !164
  br label %72

72:                                               ; preds = %55, %50
  %73 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !221
  %75 = load ptr, ptr %0, align 8, !tbaa !200
  %76 = load ptr, ptr %75, align 8, !tbaa !140
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull %22) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %82

79:                                               ; preds = %21
  %80 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !221
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi ptr [ %23, %72 ], [ %22, %79 ]
  %84 = phi ptr [ %74, %72 ], [ %81, %79 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %21, !llvm.loop !365

86:                                               ; preds = %82, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !113 {
  %3 = load ptr, ptr %1, align 8, !tbaa !140
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2, %33
  %9 = phi ptr [ %37, %33 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  %11 = getelementptr inbounds ptr, ptr %10, i64 11
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %13, align 8, !tbaa !140
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i64 %18(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %21
  %22 = phi i64 [ %27, %21 ], [ 0, %15 ]
  %23 = load ptr, ptr %13, align 8, !tbaa !140
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %22) #21
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %26) #21
  %27 = add nuw i64 %22, 1
  %28 = load ptr, ptr %13, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i64 %30(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %21, label %33, !llvm.loop !366

33:                                               ; preds = %21, %15, %8
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %9) #21
  %34 = load ptr, ptr %9, align 8, !tbaa !140
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %8, !llvm.loop !367

39:                                               ; preds = %33, %2
  %40 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #21
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %40, i32 noundef 3, ptr noundef null, ptr noundef null) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl14isToBeReleasedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !312
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !153
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !312
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %9) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 15, ptr noundef %11) #21
          to label %12 unwind label %13

12:                                               ; preds = %7
  store ptr %10, ptr %4, align 8, !tbaa !193
  br label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #20
  br label %34

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %10, %12 ], [ %5, %3 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %2) #21
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %22) #21
  %24 = load ptr, ptr %21, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, i32 noundef 15, i1 noundef zeroext false, ptr noundef %24) #21
          to label %25 unwind label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr %4, align 8, !tbaa !193
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef %2) #21
  store ptr %23, ptr %27, align 8, !tbaa !164
  br label %30

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #20
  br label %34

30:                                               ; preds = %25, %15
  %31 = load ptr, ptr %4, align 8, !tbaa !193
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef %2) #21
  %33 = load ptr, ptr %32, align 8, !tbaa !164
  tail call void @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef %1) #21
  ret void

34:                                               ; preds = %28, %13
  %35 = phi { ptr, i32 } [ %29, %28 ], [ %14, %13 ]
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store i32 %1, ptr %0, align 8, !tbaa !204
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !206
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !208
  %6 = zext i32 %1 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = load ptr, ptr %2, align 8, !tbaa !140
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %7) #21
  store ptr %11, ptr %4, align 8, !tbaa !206
  %12 = load i32, ptr %0, align 8, !tbaa !204
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = zext i32 %12 to i64
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %21, %17 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !206
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr null, ptr %20, align 8, !tbaa !164
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %16, label %17, !llvm.loop !368
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = load i32, ptr %0, align 8, !tbaa !204
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.4, i32 noundef 86, i32 noundef 6, ptr noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #22
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !227
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !229
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !369
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !230
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !232
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !140
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #21
  store ptr %16, ptr %9, align 8, !tbaa !230
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !230
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !164
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !370
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !230
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !229
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !164
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !229
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !369
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !232
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !140
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #21
  %21 = load i32, ptr %3, align 4, !tbaa !229
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !164
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !230
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !164
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !164
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !371

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !232
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !230
  %49 = load ptr, ptr %46, align 8, !tbaa !140
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #21
  store ptr %20, ptr %47, align 8, !tbaa !230
  store i32 %12, ptr %6, align 8, !tbaa !369
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl13releaseBufferEPNS_9DOMBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %8) #21
  %10 = load ptr, ptr %7, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, i32 noundef 15, i1 noundef zeroext false, ptr noundef %10) #21
          to label %11 unwind label %12

11:                                               ; preds = %6
  store ptr %9, ptr %3, align 8, !tbaa !194
  br label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %11, %2
  %15 = phi ptr [ %9, %11 ], [ %4, %2 ]
  tail call void @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !113 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !239
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !241
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !372
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !242
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !244
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !140
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #21
  store ptr %16, ptr %9, align 8, !tbaa !242
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !242
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !164
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !373
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !242
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !241
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !164
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !372
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !140
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #21
  %21 = load i32, ptr %3, align 4, !tbaa !241
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !164
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !242
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !164
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !164
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !374

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !244
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !242
  %49 = load ptr, ptr %46, align 8, !tbaa !140
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #21
  store ptr %20, ptr %47, align 8, !tbaa !242
  store i32 %12, ptr %6, align 8, !tbaa !372
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) local_unnamed_addr #1 align 2 !prof !135 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !143

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #21
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %2, align 8, !tbaa !194
  %9 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #21
  br label %10

10:                                               ; preds = %1, %5, %7
  %11 = phi ptr [ %9, %7 ], [ null, %5 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.5, i32 noundef 77, i32 noundef 80, ptr noundef %7) #21
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #22
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %12) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #21
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !244
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !242
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  %23 = zext i32 %19 to i64
  br i1 %22, label %29, label %26

24:                                               ; preds = %29
  %25 = load ptr, ptr %14, align 8, !tbaa !242
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %32, %29 ], [ %16, %21 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !242
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !164
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %24, label %29, !llvm.loop !375

37:                                               ; preds = %13, %26
  %38 = phi ptr [ %28, %26 ], [ %17, %13 ]
  store ptr null, ptr %38, align 8, !tbaa !164
  store i32 %19, ptr %3, align 4, !tbaa !241
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #21
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #21
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #21
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.5, i32 noundef 77, i32 noundef 80, ptr noundef %7) #21
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #22
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %12) #21
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !229
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !232
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !229
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #22
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 116, ptr noundef %9) #21
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #22
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  %23 = zext i32 %19 to i64
  br i1 %22, label %29, label %26

24:                                               ; preds = %29
  %25 = load ptr, ptr %14, align 8, !tbaa !230
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %32, %29 ], [ %16, %21 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !230
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !164
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %24, label %29, !llvm.loop !376

37:                                               ; preds = %13, %26
  %38 = phi ptr [ %28, %26 ], [ %17, %13 ]
  store ptr null, ptr %38, align 8, !tbaa !164
  store i32 %19, ptr %3, align 4, !tbaa !229
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nosync nounwind memory(none) }
attributes #16 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!112}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!36 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt, ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, i64 650}
!37 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt, ptr @_ZN11xercesc_2_711DOMTextImplC1EPNS_11DOMDocumentEPKt, i64 650}
!38 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, i64 649}
!39 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @__cxa_allocate_exception, i64 2}
!40 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv, i64 2}
!41 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE, i64 2}
!42 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @__cxa_throw, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @__cxa_free_exception, i64 1}
!44 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, i64 648}
!45 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_, i64 648}
!46 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17setActualEncodingEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, i64 2}
!47 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11setEncodingEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, i64 1}
!48 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl10setVersionEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, i64 549}
!50 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @__cxa_allocate_exception, i64 2}
!51 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv, i64 2}
!52 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE, i64 2}
!53 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @__cxa_throw, i64 1}
!54 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @__cxa_free_exception, i64 1}
!55 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, i64 548}
!56 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll, i64 548}
!57 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv, ptr @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_, i64 1}
!59 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!60 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711DOMDocumentC2Ev, i64 1}
!61 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE, i64 1}
!62 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE, i64 1}
!63 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, i64 1}
!65 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE, i64 1}
!66 = !{ptr @_ZN11xercesc_2_711DOMDocumentC2Ev, ptr @_ZN11xercesc_2_716DOMDocumentRangeC2Ev, i64 1}
!67 = !{ptr @_ZN11xercesc_2_711DOMDocumentC2Ev, ptr @_ZN11xercesc_2_717DOMXPathEvaluatorC2Ev, i64 1}
!68 = !{ptr @_ZN11xercesc_2_711DOMDocumentC2Ev, ptr @_ZN11xercesc_2_720DOMDocumentTraversalC2Ev, i64 1}
!69 = !{ptr @_ZN11xercesc_2_711DOMDocumentC2Ev, ptr @_ZN11xercesc_2_77DOMNodeC2Ev, i64 1}
!70 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!71 = !{ptr @_ZN11xercesc_2_711DOMDocumentD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, i64 1}
!72 = !{ptr @_ZN11xercesc_2_711DOMDocumentD2Ev, ptr @_ZN11xercesc_2_720DOMDocumentTraversalD2Ev, i64 1}
!73 = !{ptr @_ZN11xercesc_2_711DOMDocumentD2Ev, ptr @_ZN11xercesc_2_717DOMXPathEvaluatorD2Ev, i64 1}
!74 = !{ptr @_ZN11xercesc_2_711DOMDocumentD2Ev, ptr @_ZN11xercesc_2_716DOMDocumentRangeD2Ev, i64 1}
!75 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, ptr @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm, i64 5328}
!76 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_713DOMNormalizerD1Ev, i64 1}
!77 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!78 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_715DOMDocumentImpl10deleteHeapEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD1Ev, i64 1}
!80 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_713DOMParentNodeD2Ev, i64 1}
!81 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_711DOMNodeImplD1Ev, i64 1}
!82 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_711DOMDocumentD2Ev, i64 1}
!83 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1202}
!84 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1202}
!85 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, ptr @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj, i64 1}
!86 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, ptr @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj, i64 1201}
!87 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!88 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 1300}
!89 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj, i64 1}
!90 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE5emptyEv, i64 1}
!91 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1200}
!92 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 3}
!93 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 3}
!94 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 3}
!95 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, i64 2953}
!96 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!97 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1706}
!98 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 291}
!99 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 1798414}
!100 = !{ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1796708}
!101 = !{ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi, i64 5}
!102 = !{ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3getEPKvi, i64 5}
!103 = !{ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE8getValueEv, i64 5}
!104 = !{ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, ptr @_ZN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEE6getKeyEv, i64 3}
!105 = !{ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, i64 3}
!106 = !{ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, ptr @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv, i64 5}
!107 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_allocate_exception, i64 2}
!108 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!109 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_throw, i64 1}
!110 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_free_exception, i64 1}
!111 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv, ptr @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE5emptyEv, i64 1}
!112 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!113 = !{!"function_entry_count", i64 0}
!114 = !{!115, !122, i64 280}
!115 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !116, i64 0, !121, i64 32, !126, i64 48, !122, i64 80, !122, i64 88, !122, i64 96, !129, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !130, i64 136, !122, i64 176, !122, i64 184, !122, i64 192, !133, i64 200, !122, i64 208, !122, i64 216, !122, i64 224, !122, i64 232, !122, i64 240, !122, i64 248, !122, i64 256, !122, i64 264, !122, i64 272, !122, i64 280, !132, i64 288, !129, i64 292}
!116 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !117, i64 0, !118, i64 8, !119, i64 16, !120, i64 24}
!117 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!118 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!119 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!120 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!121 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !122, i64 0, !125, i64 8}
!122 = !{!"any pointer", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C++ TBAA"}
!125 = !{!"short", !123, i64 0}
!126 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !122, i64 0, !122, i64 8, !127, i64 16}
!127 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !128, i64 0, !122, i64 8}
!128 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!129 = !{!"bool", !123, i64 0}
!130 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !131, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !132, i64 32, !132, i64 36}
!131 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!132 = !{!"int", !123, i64 0}
!133 = !{!"long", !123, i64 0}
!134 = !{!115, !122, i64 264}
!135 = !{!"function_entry_count", i64 650}
!136 = !{!"function_entry_count", i64 550}
!137 = !{!115, !122, i64 232}
!138 = !{!"function_entry_count", i64 1}
!139 = !{!115, !122, i64 240}
!140 = !{!141, !141, i64 0}
!141 = !{!"vtable pointer", !124, i64 0}
!142 = !{!"branch_weights", i32 1, i32 651}
!143 = !{!"branch_weights", i32 651, i32 1}
!144 = !{!115, !122, i64 80}
!145 = !{!115, !122, i64 88}
!146 = !{!"function_entry_count", i64 2}
!147 = !{!115, !122, i64 96}
!148 = !{!115, !129, i64 104}
!149 = !{i8 0, i8 2}
!150 = !{}
!151 = !{!115, !122, i64 112}
!152 = !{!"branch_weights", i32 1, i32 2}
!153 = !{!125, !125, i64 0}
!154 = !{!"branch_weights", i32 2, i32 1}
!155 = !{!115, !122, i64 120}
!156 = !{!115, !122, i64 256}
!157 = !{!115, !122, i64 128}
!158 = !{!"branch_weights", i32 1, i32 551}
!159 = !{!"branch_weights", i32 551, i32 1}
!160 = distinct !{!160, !161}
!161 = !{!"llvm.loop.mustprogress"}
!162 = !{!"branch_weights", i32 7, i32 2}
!163 = !{!"branch_weights", i32 5, i32 1}
!164 = !{!122, !122, i64 0}
!165 = !{!115, !122, i64 176}
!166 = !{!115, !122, i64 272}
!167 = !{!"function_entry_count", i64 1200}
!168 = distinct !{!168, !161}
!169 = distinct !{!169, !161}
!170 = !{!"function_entry_count", i64 1850}
!171 = !{!115, !132, i64 288}
!172 = !{!115, !129, i64 292}
!173 = distinct !{!173, !161}
!174 = distinct !{!174, !161}
!175 = distinct !{!175, !161}
!176 = distinct !{!176, !161}
!177 = distinct !{!177, !161}
!178 = !{!115, !122, i64 248}
!179 = !{!"function_entry_count", i64 5836268}
!180 = !{!"function_entry_count", i64 2815}
!181 = !{!"function_entry_count", i64 1851}
!182 = !{!"function_entry_count", i64 5321}
!183 = !{!"branch_weights", i32 1, i32 5322}
!184 = !{!115, !122, i64 184}
!185 = !{!115, !133, i64 200}
!186 = !{!"branch_weights", i32 6, i32 5317}
!187 = !{!115, !122, i64 192}
!188 = !{!"function_entry_count", i64 2954}
!189 = !{!"branch_weights", i32 1, i32 127}
!190 = !{!"branch_weights", i32 127, i32 257}
!191 = distinct !{!191, !161}
!192 = !{!115, !122, i64 224}
!193 = !{!115, !122, i64 208}
!194 = !{!115, !122, i64 216}
!195 = !{!196, !122, i64 56}
!196 = !{!"_ZTSN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEE", !129, i64 0, !122, i64 8, !133, i64 16, !122, i64 24, !122, i64 32, !133, i64 40, !133, i64 48, !122, i64 56}
!197 = !{!196, !122, i64 32}
!198 = !{!196, !122, i64 8}
!199 = !{!196, !122, i64 24}
!200 = !{!201, !122, i64 0}
!201 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE", !122, i64 0, !129, i64 8, !122, i64 16, !132, i64 24, !132, i64 28, !122, i64 32}
!202 = !{!201, !122, i64 16}
!203 = !{!201, !122, i64 32}
!204 = !{!205, !132, i64 0}
!205 = !{!"_ZTSN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEE", !132, i64 0, !122, i64 8, !122, i64 16}
!206 = !{!205, !122, i64 8}
!207 = distinct !{!207, !161}
!208 = !{!205, !122, i64 16}
!209 = !{!196, !133, i64 16}
!210 = !{!196, !133, i64 48}
!211 = !{!212, !122, i64 8}
!212 = !{!"_ZTSN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEE", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32}
!213 = !{!196, !129, i64 0}
!214 = !{!212, !122, i64 0}
!215 = !{!212, !122, i64 24}
!216 = !{!212, !122, i64 32}
!217 = distinct !{!217, !161}
!218 = distinct !{!218, !161}
!219 = !{!201, !132, i64 24}
!220 = !{!201, !132, i64 28}
!221 = !{!222, !122, i64 8}
!222 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE", !122, i64 0, !122, i64 8, !122, i64 16, !132, i64 24}
!223 = !{!201, !129, i64 8}
!224 = !{!222, !122, i64 0}
!225 = distinct !{!225, !161}
!226 = distinct !{!226, !161}
!227 = !{!228, !129, i64 8}
!228 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE", !129, i64 8, !132, i64 12, !132, i64 16, !122, i64 24, !122, i64 32}
!229 = !{!228, !132, i64 12}
!230 = !{!228, !122, i64 24}
!231 = distinct !{!231, !161}
!232 = !{!228, !122, i64 32}
!233 = distinct !{!233, !161}
!234 = distinct !{!234, !161}
!235 = distinct !{!235, !161}
!236 = !{!237, !122, i64 40}
!237 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !238, i64 8, !122, i64 16, !132, i64 24, !122, i64 32, !122, i64 40}
!238 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !123, i64 0}
!239 = !{!240, !129, i64 8}
!240 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE", !129, i64 8, !132, i64 12, !132, i64 16, !122, i64 24, !122, i64 32}
!241 = !{!240, !132, i64 12}
!242 = !{!240, !122, i64 24}
!243 = distinct !{!243, !161}
!244 = !{!240, !122, i64 32}
!245 = distinct !{!245, !161}
!246 = distinct !{!246, !161}
!247 = distinct !{!247, !161}
!248 = !{!"function_entry_count", i64 1202}
!249 = !{!"branch_weights", i32 1, i32 1203}
!250 = !{!"function_entry_count", i64 1300}
!251 = !{!"branch_weights", i32 1301, i32 1}
!252 = !{!253, !122, i64 24}
!253 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE", !129, i64 8, !132, i64 12, !132, i64 16, !122, i64 24, !122, i64 32}
!254 = !{!253, !132, i64 12}
!255 = !{!253, !129, i64 8}
!256 = !{!253, !132, i64 16}
!257 = !{!253, !122, i64 32}
!258 = distinct !{!258, !161}
!259 = distinct !{!259, !161}
!260 = distinct !{!260, !161}
!261 = distinct !{!261, !161}
!262 = distinct !{!262, !161}
!263 = distinct !{!263, !161}
!264 = !{!"function_entry_count", i64 1231717351}
!265 = !{!"branch_weights", i32 621, i32 -1469098093}
!266 = !{!"branch_weights", i32 408901017, i32 1}
!267 = !{!"branch_weights", i32 267, i32 4}
!268 = !{!"branch_weights", i32 1, i32 4}
!269 = !{!"branch_weights", i32 156, i32 112}
!270 = !{!"branch_weights", i32 1, i32 112}
!271 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!272 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!273 = distinct !{!273, !161}
!274 = !{!"function_entry_count", i64 2453164456}
!275 = !{!"branch_weights", i32 1, i32 -1841802839}
!276 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!277 = !{!"branch_weights", i32 408669070, i32 -279908792}
!278 = distinct !{!278, !161}
!279 = !{!"branch_weights", i32 1200, i32 1}
!280 = !{!"branch_weights", i32 13550690, i32 -231450412}
!281 = !{!"branch_weights", i32 2, i32 8157}
!282 = !{!"branch_weights", i32 1200, i32 6958}
!283 = distinct !{!283, !161}
!284 = !{!"branch_weights", i32 1200, i32 2}
!285 = !{!286, !122, i64 24}
!286 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !129, i64 8, !132, i64 12, !132, i64 16, !122, i64 24, !122, i64 32}
!287 = !{!286, !132, i64 12}
!288 = !{!286, !129, i64 8}
!289 = !{!286, !132, i64 16}
!290 = !{!286, !122, i64 32}
!291 = distinct !{!291, !161}
!292 = distinct !{!292, !161}
!293 = distinct !{!293, !161}
!294 = distinct !{!294, !161}
!295 = distinct !{!295, !161}
!296 = distinct !{!296, !161}
!297 = !{!132, !132, i64 0}
!298 = !{!"branch_weights", i32 2, i32 1200}
!299 = !{!"function_entry_count", i64 4}
!300 = !{!"branch_weights", i32 1, i32 5}
!301 = !{!"branch_weights", i32 1, i32 2955}
!302 = !{!"function_entry_count", i64 5805450}
!303 = !{!"branch_weights", i32 5804944, i32 508}
!304 = !{!196, !133, i64 40}
!305 = !{!212, !122, i64 16}
!306 = !{!133, !133, i64 0}
!307 = distinct !{!307, !161}
!308 = distinct !{!308, !161}
!309 = !{!"function_entry_count", i64 558789}
!310 = !{!"branch_weights", i32 158605, i32 400186}
!311 = !{!"DOMDocumentImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!312 = !{!121, !125, i64 8}
!313 = !{!"function_entry_count", i64 1706}
!314 = !{!130, !122, i64 24}
!315 = !{!"branch_weights", i32 291, i32 1417}
!316 = !{!317, !132, i64 0}
!317 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !132, i64 0, !122, i64 8}
!318 = !{!319, !122, i64 0}
!319 = !{!"_ZTSN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEEE", !122, i64 0, !122, i64 8}
!320 = !{!222, !122, i64 16}
!321 = !{!222, !132, i64 24}
!322 = distinct !{!322, !161}
!323 = !{!319, !122, i64 8}
!324 = !{!325, !129, i64 8}
!325 = !{!"_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE", !326, i64 0, !129, i64 8, !122, i64 16, !132, i64 24, !122, i64 32, !122, i64 40, !122, i64 48}
!326 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE"}
!327 = !{!325, !122, i64 16}
!328 = !{!325, !132, i64 24}
!329 = !{!325, !122, i64 32}
!330 = !{!325, !122, i64 40}
!331 = !{!325, !122, i64 48}
!332 = !{!"function_entry_count", i64 1798414}
!333 = !{!"branch_weights", i32 291, i32 1798125}
!334 = !{!335, !122, i64 0}
!335 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !122, i64 0, !122, i64 8, !122, i64 16}
!336 = !{!"function_entry_count", i64 1798704}
!337 = !{!338, !122, i64 40}
!338 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !122, i64 0, !129, i64 8, !122, i64 16, !132, i64 24, !132, i64 28, !132, i64 32, !122, i64 40}
!339 = !{!338, !132, i64 24}
!340 = !{!338, !122, i64 0}
!341 = !{!338, !122, i64 16}
!342 = !{!"branch_weights", i32 1, i32 580}
!343 = !{!335, !122, i64 16}
!344 = !{!"branch_weights", i32 1798125, i32 634}
!345 = !{!"branch_weights", i32 580, i32 1798178}
!346 = distinct !{!346, !161}
!347 = distinct !{!347, !161}
!348 = distinct !{!348, !161}
!349 = distinct !{!349, !161}
!350 = distinct !{!350, !161}
!351 = !{!352, !122, i64 0}
!352 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEEE", !122, i64 0, !122, i64 8}
!353 = !{!352, !122, i64 8}
!354 = distinct !{!354, !161}
!355 = distinct !{!355, !161}
!356 = !{!"function_entry_count", i64 1796708}
!357 = !{!"branch_weights", i32 1, i32 1796709}
!358 = distinct !{!358, !161}
!359 = !{!"function_entry_count", i64 2060280}
!360 = !{!"branch_weights", i32 -149696008, i32 4023}
!361 = !{!130, !122, i64 8}
!362 = !{!130, !122, i64 16}
!363 = !{!317, !122, i64 8}
!364 = distinct !{!364, !161}
!365 = distinct !{!365, !161}
!366 = distinct !{!366, !161}
!367 = distinct !{!367, !161}
!368 = distinct !{!368, !161}
!369 = !{!228, !132, i64 16}
!370 = distinct !{!370, !161}
!371 = distinct !{!371, !161}
!372 = !{!240, !132, i64 16}
!373 = distinct !{!373, !161}
!374 = distinct !{!374, !161}
!375 = distinct !{!375, !161}
!376 = distinct !{!376, !161}
