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
%"class.xercesc_2_7::RefArrayOf" = type { i32, ptr, ptr }
%"class.xercesc_2_7::RefStackOf" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.2" }
%"class.xercesc_2_7::RefVectorOf.2" = type { %"class.xercesc_2_7::BaseRefVectorOf.3" }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOMDeepNodeListPool" = type { i8, ptr, i64, ptr, ptr, i64, i64, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::RefStackOf.4" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.5" }
%"class.xercesc_2_7::RefVectorOf.5" = type { %"class.xercesc_2_7::BaseRefVectorOf.6" }
%"class.xercesc_2_7::BaseRefVectorOf.6" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::KeyRefPair" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev = comdat any

$_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEE17deleteAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_ = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKvi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3putEPviPS3_ = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15transferElementEPKvPv = comdat any

$_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE3popEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv = comdat any

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

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeAllEv = comdat any

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

$_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv = comdat any

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

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE10initializeEm = comdat any

$_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm = comdat any

$_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEC2EPvPtS4_PS1_PS2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE11nextElementEv = comdat any

$_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15orphanElementAtEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

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

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

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

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

@_ZTVN11xercesc_2_715DOMDocumentImplE = dso_local unnamed_addr constant { [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] } { [95 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZN11xercesc_2_715DOMDocumentImpl11createRangeEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl13createElementEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl22createDocumentFragmentEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl13createCommentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createCDATASectionEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl27createProcessingInstructionEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl15createAttributeEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl21createEntityReferenceEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getDoctypeEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getImplementationEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getDocumentElementEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl20getElementsByTagNameEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEb, ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl22getElementsByTagNameNSEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getElementByIdEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getActualEncodingEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl17setActualEncodingEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getEncodingEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl11setEncodingEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getStandaloneEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl13setStandaloneEb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getVersionEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl10setVersionEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getDocumentURIEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl14setDocumentURIEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl22getStrictErrorCheckingEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl22setStrictErrorCheckingEb, ptr @_ZN11xercesc_2_715DOMDocumentImpl10renameNodeEPNS_7DOMNodeEPKtS4_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9adoptNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl17normalizeDocumentEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl19getDOMConfigurationEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl12createEntityEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKtS2_S2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl14createNotationEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl9cloneNodeEb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getAttributesEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLastChildEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLocalNameEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getPrefixEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9normalizeEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl13hasAttributesEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl9setPrefixEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getTextContentEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl20createElementNoCheckEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb, ptr @_ZN11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb, ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getRangesEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getNodeIteratorsEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeRangeEPNS_12DOMRangeImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl18removeNodeIteratorEPNS_19DOMNodeIteratorImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE, ptr @_ZN11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv, ptr @_ZN11xercesc_2_715DOMDocumentImpl7changedEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl7changesEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl19setDOMConfigurationEPNS_16DOMConfigurationE, ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEbb], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImplD1Ev, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE, ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImplD1Ev, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb, ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb], [42 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_715DOMDocumentImplE, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImplD1Ev, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeNameEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getNodeValueEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getParentNodeEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getChildNodesEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getFirstChildEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLastChildEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getAttributesEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9cloneNodeEb, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl9normalizeEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9getPrefixEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLocalNameEv, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl9setPrefixEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasAttributesEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10getBaseURIEv, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getTextContentEv, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl14setTextContentEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt, ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl7releaseEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEvE3nam = internal constant [10 x i16] [i16 35, i16 100, i16 111, i16 99, i16 117, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external local_unnamed_addr constant [0 x i16], align 2
@_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK = internal unnamed_addr global [14 x i32] zeroinitializer, align 16
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715DOMDocumentImplE = dso_local constant [33 x i8] c"N11xercesc_2_715DOMDocumentImplE\00", align 1
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
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8USERDATAE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/StringPool.hpp\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7DOMNodeEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_711RefVectorOfINS_9DOMBufferEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv] }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"./xercesc/dom/impl/DOMDeepNodeListPool.c\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
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
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMDocumentRangeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMXPathEvaluatorE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720DOMDocumentTraversalE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef nonnull %5)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %0)
          to label %8 unwind label %30, !prof !68

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 17, ptr noundef %1)
          to label %12 unwind label %32, !prof !68

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %13, i8 0, i64 104, i1 false)
  store ptr %1, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  store i32 0, ptr %15, align 8, !tbaa !88
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 1, ptr %16, align 4, !tbaa !89
  %17 = load ptr, ptr %1, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 65536)
          to label %21 unwind label %34, !prof !90

21:                                               ; preds = %12
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  store ptr %25, ptr %20, align 8, !tbaa !92
  store ptr %20, ptr %24, align 8, !tbaa !91
  %26 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %26, ptr %23, align 8, !tbaa !93
  store i64 65528, ptr %22, align 8, !tbaa !94
  %27 = getelementptr inbounds i8, ptr %20, i64 32
  store ptr %27, ptr %23, align 8, !tbaa !93
  store i64 65504, ptr %22, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(20) %26, i32 noundef 257, ptr noundef nonnull %0)
          to label %28 unwind label %34, !prof !68

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 21
  store ptr %26, ptr %29, align 8, !tbaa !95
  ret void

30:                                               ; preds = %2
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %39

32:                                               ; preds = %8
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %12, %21
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #23
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #23
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi { ptr, i32 } [ %37, %36 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #23
  resume { ptr, i32 } %40
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplC2EPKtS2_PNS_15DOMDocumentTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMDocumentRangeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMXPathEvaluatorE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720DOMDocumentTraversalE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [43 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMDocumentE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 2, i64 2), ptr %7, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 3, i64 2), ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %9, ptr noundef nonnull %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %0)
          to label %11 unwind label %45

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %12, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 17, ptr noundef %4)
          to label %15 unwind label %47

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 21
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %16, i8 0, i64 104, i1 false)
  store ptr %4, ptr %19, align 8, !tbaa !69
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  store i32 0, ptr %20, align 8, !tbaa !88
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 1, ptr %21, align 4, !tbaa !89
  %22 = load ptr, ptr %4, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 65536)
          to label %26 unwind label %49

26:                                               ; preds = %15
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %29 = load ptr, ptr %17, align 8, !tbaa !91
  store ptr %29, ptr %25, align 8, !tbaa !92
  store ptr %25, ptr %17, align 8, !tbaa !91
  %30 = getelementptr inbounds i8, ptr %25, i64 8
  store ptr %30, ptr %28, align 8, !tbaa !93
  store i64 65528, ptr %27, align 8, !tbaa !94
  %31 = getelementptr inbounds i8, ptr %25, i64 32
  store ptr %31, ptr %28, align 8, !tbaa !93
  store i64 65504, ptr %27, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(20) %30, i32 noundef 257, ptr noundef nonnull %0)
          to label %32 unwind label %49

32:                                               ; preds = %26
  store ptr %30, ptr %18, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %3)
          to label %33 unwind label %51

33:                                               ; preds = %32
  %34 = icmp eq ptr %2, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 8, !tbaa !65
  %37 = getelementptr inbounds ptr, ptr %36, i64 16
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef nonnull %2)
          to label %40 unwind label %51

40:                                               ; preds = %35
  %41 = load ptr, ptr %0, align 8, !tbaa !65
  %42 = getelementptr inbounds ptr, ptr %41, i64 41
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %39)
          to label %93 unwind label %51

45:                                               ; preds = %5
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %99

47:                                               ; preds = %11
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %96

49:                                               ; preds = %15, %26
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %94

51:                                               ; preds = %58, %40, %35, %32
  %52 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %62

53:                                               ; preds = %33
  %54 = icmp eq ptr %1, null
  br i1 %54, label %93, label %55

55:                                               ; preds = %53
  %56 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %57 = load ptr, ptr %19, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %56, i16 noundef signext 14, ptr noundef null, ptr noundef %57)
          to label %58 unwind label %60

58:                                               ; preds = %55
  invoke void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
          to label %59 unwind label %51

59:                                               ; preds = %58
  unreachable

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  tail call void @__cxa_free_exception(ptr %56) #23
  br label %62

62:                                               ; preds = %60, %51
  %63 = phi { ptr, i32 } [ %52, %51 ], [ %61, %60 ]
  %64 = extractvalue { ptr, i32 } %63, 0
  %65 = extractvalue { ptr, i32 } %63, 1
  %66 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #23
  %67 = icmp eq i32 %65, %66
  %68 = tail call ptr @__cxa_begin_catch(ptr %64) #23
  br i1 %67, label %69, label %71

69:                                               ; preds = %62
  invoke void @__cxa_rethrow() #24
          to label %70 unwind label %91

70:                                               ; preds = %69
  unreachable

71:                                               ; preds = %62
  %72 = load ptr, ptr %17, align 8, !tbaa !91
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %71, %81
  %75 = phi ptr [ %76, %81 ], [ %72, %71 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !92
  %77 = load ptr, ptr %19, align 8, !tbaa !69
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull %75)
          to label %81 unwind label %85

81:                                               ; preds = %74
  store ptr %76, ptr %17, align 8, !tbaa !91
  %82 = icmp eq ptr %76, null
  br i1 %82, label %83, label %74, !llvm.loop !97

83:                                               ; preds = %81, %71
  invoke void @__cxa_rethrow() #24
          to label %84 unwind label %87

84:                                               ; preds = %83
  unreachable

85:                                               ; preds = %74
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %83
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %88, %87 ]
  invoke void @__cxa_end_catch()
          to label %94 unwind label %101

91:                                               ; preds = %69
  %92 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %94 unwind label %101

93:                                               ; preds = %40, %53
  ret void

94:                                               ; preds = %91, %89, %49
  %95 = phi { ptr, i32 } [ %90, %89 ], [ %50, %49 ], [ %92, %91 ]
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #23
  br label %96

96:                                               ; preds = %94, %47
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %48, %47 ]
  %98 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %98) #23
  br label %99

99:                                               ; preds = %96, %45
  %100 = phi { ptr, i32 } [ %97, %96 ], [ %46, %45 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %9) #23
  resume { ptr, i32 } %100

101:                                              ; preds = %91, %89
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  tail call void @__clang_call_terminate(ptr %103) #25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl15setDocumentTypeEPNS_15DOMDocumentTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %17, i16 noundef signext 4, ptr noundef null, ptr noundef %19)
          to label %20 unwind label %21

20:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #23
  resume { ptr, i32 } %22

23:                                               ; preds = %10, %4
  %24 = load ptr, ptr %1, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 49
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(130) %1, ptr noundef nonnull %0)
  %27 = load ptr, ptr %0, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 41
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br label %31

31:                                               ; preds = %2, %23
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl10deleteHeapEv(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = load ptr, ptr %6, align 8, !tbaa !69
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %8)
  store ptr %9, ptr %2, align 8, !tbaa !91
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %7, !llvm.loop !97

15:                                               ; preds = %7, %1
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !96 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [95 x ptr], [7 x ptr], [6 x ptr], [42 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentImplE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !68

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %9 unwind label %81

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !68

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #23
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !68

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #23
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !68

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %27) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #23
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !104
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34, !prof !68

34:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEE17deleteAllElementsEv(ptr noundef nonnull align 8 dereferenceable(24) %32)
  %35 = load ptr, ptr %31, align 8, !tbaa !104
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !107
  %42 = load ptr, ptr %39, align 8, !tbaa !65
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41)
          to label %48 unwind label %45

45:                                               ; preds = %37
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #25
  unreachable

48:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %35) #23
  br label %49

49:                                               ; preds = %34, %48, %30
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !108
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !68

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %51, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %54) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %51) #23
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 22
  %57 = load ptr, ptr %56, align 8, !tbaa !109
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !68

59:                                               ; preds = %55
  tail call void @_ZN11xercesc_2_713DOMNormalizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %57) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %57) #23
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64, !prof !110

64:                                               ; preds = %60
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  br label %66

66:                                               ; preds = %64, %73
  %67 = phi ptr [ %62, %64 ], [ %68, %73 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  %69 = load ptr, ptr %65, align 8, !tbaa !69
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull %67)
          to label %73 unwind label %79, !prof !111

73:                                               ; preds = %66
  store ptr %68, ptr %61, align 8, !tbaa !91
  %74 = icmp eq ptr %68, null
  br i1 %74, label %75, label %66, !prof !112, !llvm.loop !97

75:                                               ; preds = %73, %60
  %76 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_713XMLStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %76) #23
  %77 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %77) #23
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %78) #23
  ret void

79:                                               ; preds = %66
  %80 = landingpad { ptr, i32 }
          catch ptr null
  br label %83

81:                                               ; preds = %8
  %82 = landingpad { ptr, i32 }
          catch ptr null
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ]
  %85 = extractvalue { ptr, i32 } %84, 0
  tail call void @__clang_call_terminate(ptr %85) #25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = load ptr, ptr %3, align 8, !tbaa !65
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = load ptr, ptr %2, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = load ptr, ptr %9, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %16, align 8, !tbaa !65
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #23
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load ptr, ptr %3, align 8, !tbaa !65
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #23
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEE17deleteAllElementsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = load i32, ptr %0, align 8, !tbaa !122
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 1
  br label %7

6:                                                ; preds = %15, %1
  ret void

7:                                                ; preds = %4, %15
  %8 = phi i64 [ 0, %4 ], [ %18, %15 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !107
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %11, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #23
  br label %15

15:                                               ; preds = %13, %7
  %16 = load ptr, ptr %5, align 8, !tbaa !107
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  store ptr null, ptr %17, align 8, !tbaa !92
  %18 = add nuw nsw i64 %8, 1
  %19 = load i32, ptr %0, align 8, !tbaa !122
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %7, label %6, !llvm.loop !123
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713DOMNormalizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_715DOMDocumentImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_715DOMDocumentImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #7 align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(293) %2) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(293) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 296, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %6)
          to label %7 unwind label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr %9, align 2, !tbaa !125
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !tbaa !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %9)
  br label %20

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #23
  resume { ptr, i32 } %19

20:                                               ; preds = %14, %11, %7
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i16, ptr %22, align 2, !tbaa !125
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 27
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %22)
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 6
  %33 = load i8, ptr %32, align 8, !tbaa !127, !range !128, !noundef !129
  %34 = icmp ne i8 %33, 0
  %35 = load ptr, ptr %5, align 8, !tbaa !65
  %36 = getelementptr inbounds ptr, ptr %35, i64 25
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(293) %5, i1 noundef zeroext %34)
  br i1 %1, label %38, label %59

38:                                               ; preds = %31
  %39 = load ptr, ptr %0, align 8, !tbaa !65
  %40 = getelementptr inbounds ptr, ptr %39, i64 45
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(293) %0)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %38, %44
  %45 = phi ptr [ %57, %44 ], [ %42, %38 ]
  %46 = load ptr, ptr %5, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 92
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %45, i1 noundef zeroext true, i1 noundef zeroext true)
  %50 = load ptr, ptr %5, align 8, !tbaa !65
  %51 = getelementptr inbounds ptr, ptr %50, i64 41
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef %49)
  %54 = load ptr, ptr %45, align 8, !tbaa !65
  %55 = getelementptr inbounds ptr, ptr %54, i64 10
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %45)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !130

59:                                               ; preds = %44, %38, %31
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %61 = getelementptr inbounds i8, ptr %0, i64 24
  %62 = getelementptr inbounds i8, ptr %5, i64 24
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %60, i32 noundef 1, ptr noundef nonnull %61, ptr noundef nonnull %62)
  ret ptr %62
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9cloneNodeEb(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(293) %3, i1 noundef zeroext %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !96 {
  ret ptr @_ZZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEvE3nam
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeNameEv(ptr nocapture readnone %0) unnamed_addr #10 align 2 !prof !96 {
  ret ptr @_ZZNK11xercesc_2_715DOMDocumentImpl11getNodeNameEvE3nam
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !96 {
  ret i16 9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv(ptr nocapture readnone %0) unnamed_addr #10 align 2 !prof !64 {
  ret i16 9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !96 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl16getOwnerDocumentEv(ptr nocapture readnone %0) unnamed_addr #10 align 2 !prof !96 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15createAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 72, i32 noundef 0)
  tail call void @_ZN11xercesc_2_711DOMAttrImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret ptr %14
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !131 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !132

6:                                                ; preds = %2
  %7 = load i16, ptr %4, align 2, !tbaa !125
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !125
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %43, !prof !133

10:                                               ; preds = %2
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !125
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %43

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %4, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18, !prof !134

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !125
  %22 = load i16, ptr %20, align 2, !tbaa !125
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %43, !prof !135, !llvm.loop !136

24:                                               ; preds = %13, %10
  %25 = icmp eq ptr %1, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = load i16, ptr %1, align 2, !tbaa !125
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %31, %29 ], [ %1, %26 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !125
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %29, !llvm.loop !137

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %1 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 1
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %24, %26, %34
  %41 = phi i32 [ %39, %34 ], [ 0, %26 ], [ 0, %24 ]
  %42 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef %1, i32 noundef %41)
  br label %62

43:                                               ; preds = %18, %6, %10
  %44 = icmp eq ptr %1, null
  br i1 %44, label %59, label %45, !prof !132

45:                                               ; preds = %43
  %46 = load i16, ptr %1, align 2, !tbaa !125
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %59, label %48, !prof !132

48:                                               ; preds = %45, %48
  %49 = phi ptr [ %50, %48 ], [ %1, %45 ]
  %50 = getelementptr inbounds i16, ptr %49, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !125
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %48, !prof !138, !llvm.loop !137

53:                                               ; preds = %48
  %54 = ptrtoint ptr %50 to i64
  %55 = ptrtoint ptr %1 to i64
  %56 = sub i64 %54, %55
  %57 = lshr exact i64 %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %43, %45, %53
  %60 = phi i32 [ %58, %53 ], [ 0, %45 ], [ 0, %43 ]
  %61 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %1, i32 noundef %60)
  br label %62

62:                                               ; preds = %59, %40
  %63 = phi i1 [ %42, %40 ], [ %61, %59 ]
  ret i1 %63
}

declare void @_ZN11xercesc_2_711DOMAttrImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createCDATASectionEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 88, i32 noundef 2)
  tail call void @_ZN11xercesc_2_719DOMCDATASectionImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %0, ptr noundef %1)
  ret ptr %3
}

declare void @_ZN11xercesc_2_719DOMCDATASectionImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl13createCommentEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 56, i32 noundef 3)
  tail call void @_ZN11xercesc_2_714DOMCommentImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %0, ptr noundef %1)
  ret ptr %3
}

declare void @_ZN11xercesc_2_714DOMCommentImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl22createDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 56, i32 noundef 4)
  tail call void @_ZN11xercesc_2_723DOMDocumentFragmentImplC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0)
  ret ptr %2
}

declare void @_ZN11xercesc_2_723DOMDocumentFragmentImplC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 136, i32 noundef 5)
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(130) %14, ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  ret ptr %14
}

declare void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(130), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createDocumentTypeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %7, label %15, label %8

8:                                                ; preds = %6, %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 5, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #23
  resume { ptr, i32 } %14

15:                                               ; preds = %6
  %16 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 136, i32 noundef 5)
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtS4_S4_b(ptr noundef nonnull align 8 dereferenceable(130) %16, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  ret ptr %16
}

declare void @_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtS4_S4_b(ptr noundef nonnull align 8 dereferenceable(130), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl13createElementEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 96, i32 noundef 6)
  tail call void @_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret ptr %14
}

declare void @_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl20createElementNoCheckEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 96, i32 noundef 6)
  tail call void @_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12createEntityEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 136, i32 noundef 8)
  tail call void @_ZN11xercesc_2_713DOMEntityImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(129) %14, ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret ptr %14
}

declare void @_ZN11xercesc_2_713DOMEntityImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl21createEntityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 88, i32 noundef 9)
  tail call void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret ptr %14
}

declare void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl29createEntityReferenceByParserEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 88, i32 noundef 9)
  tail call void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  ret ptr %14
}

declare void @_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl14createNotationEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 5, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 56, i32 noundef 10)
  tail call void @_ZN11xercesc_2_715DOMNotationImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull %0, ptr noundef nonnull %1)
  ret ptr %14
}

declare void @_ZN11xercesc_2_715DOMNotationImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl27createProcessingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %1)
  br i1 %6, label %14, label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 5, ptr noundef null, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %5
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 72, i32 noundef 11)
  tail call void @_ZN11xercesc_2_728DOMProcessingInstructionImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2)
  ret ptr %15
}

declare void @_ZN11xercesc_2_728DOMProcessingInstructionImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %27, !prof !140

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %8 = load i64, ptr %7, align 8, !tbaa !94
  %9 = icmp ult i64 %8, 56
  br i1 %9, label %10, label %21, !prof !141

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 65536), !prof !142
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  store ptr %18, ptr %16, align 8, !tbaa !92
  store ptr %16, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds i8, ptr %16, i64 8
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %19, ptr %20, align 8, !tbaa !93
  store i64 65528, ptr %7, align 8, !tbaa !94
  br label %21

21:                                               ; preds = %10, %6
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = getelementptr inbounds i8, ptr %23, i64 56
  store ptr %24, ptr %22, align 8, !tbaa !93
  %25 = load i64, ptr %7, align 8, !tbaa !94
  %26 = add i64 %25, -56
  store i64 %26, ptr %7, align 8, !tbaa !94
  br label %39

27:                                               ; preds = %2
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 12)
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %29, i64 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !143
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 56)
  br label %39

37:                                               ; preds = %31
  %38 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %29)
  br label %39

39:                                               ; preds = %21, %35, %37
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ], [ %23, %21 ]
  tail call void @_ZN11xercesc_2_711DOMTextImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %40, ptr noundef nonnull %0, ptr noundef %1)
  ret ptr %40
}

declare void @_ZN11xercesc_2_711DOMTextImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 9, ptr noundef null, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  br label %64

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %16 = load i64, ptr %15, align 8, !tbaa !94
  %17 = icmp ult i64 %16, 64
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 65536)
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  store ptr %26, ptr %24, align 8, !tbaa !92
  store ptr %24, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds i8, ptr %24, i64 8
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %27, ptr %28, align 8, !tbaa !93
  store i64 65528, ptr %15, align 8, !tbaa !94
  br label %29

29:                                               ; preds = %14, %18
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds i8, ptr %31, i64 64
  store ptr %32, ptr %30, align 8, !tbaa !93
  %33 = load i64, ptr %15, align 8, !tbaa !94
  %34 = add i64 %33, -64
  store i64 %34, ptr %15, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_719DOMNodeIteratorImplC1EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %31, ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !102
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40)
  %42 = load ptr, ptr %39, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %41, align 8, !tbaa !65
  %43 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %41, i64 0, i32 1
  store i8 0, ptr %43, align 8, !tbaa !145
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %41, i64 0, i32 2
  store i32 0, ptr %44, align 4, !tbaa !147
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %41, i64 0, i32 3
  store i32 1, ptr %45, align 8, !tbaa !148
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %41, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !149
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %41, i64 0, i32 5
  store ptr %42, ptr %47, align 8, !tbaa !150
  %48 = load ptr, ptr %42, align 8, !tbaa !65
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef 8)
          to label %52 unwind label %53

52:                                               ; preds = %38
  store ptr %51, ptr %46, align 8, !tbaa !149
  store ptr null, ptr %51, align 8, !tbaa !92
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %41, align 8, !tbaa !65
  store ptr %41, ptr %35, align 8, !tbaa !102
  br label %55

53:                                               ; preds = %38
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %41, ptr noundef %40) #23
  br label %64

55:                                               ; preds = %52, %29
  %56 = load ptr, ptr %35, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef 1)
  %57 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !149
  %59 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !147
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  store ptr %31, ptr %62, align 8, !tbaa !92
  %63 = add i32 %60, 1
  store i32 %63, ptr %59, align 4, !tbaa !147
  ret ptr %31

64:                                               ; preds = %53, %12
  %65 = phi { ptr, i32 } [ %54, %53 ], [ %13, %12 ]
  resume { ptr, i32 } %65
}

declare void @_ZN11xercesc_2_719DOMNodeIteratorImplC1EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #9 align 2 !prof !96 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl18createNodeIteratorEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  ret ptr %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getNodeIteratorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl18removeNodeIteratorEPNS_19DOMNodeIteratorImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef readnone %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = zext i32 %8 to i64
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %25, label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %25, label %14, !llvm.loop !151

14:                                               ; preds = %6, %11
  %15 = phi i64 [ %12, %11 ], [ 0, %6 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !102
  %17 = trunc i64 %15 to i32
  %18 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %17)
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %11

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8, !tbaa !102
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %17)
  br label %25

25:                                               ; preds = %11, %6, %20, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, i16 noundef signext 9, ptr noundef null, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #23
  resume { ptr, i32 } %9
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #14 align 2 !prof !96 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createExpressionEPKtPKNS_18DOMXPathNSResolverE(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr poison, ptr poison)
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr nocapture readnone %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #23
  resume { ptr, i32 } %8
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) unnamed_addr #14 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createNSResolverEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr poison)
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i16 zeroext %4, ptr nocapture readnone %5) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 9, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn8_N11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i16 zeroext %4, ptr nocapture readnone %5) unnamed_addr #14 align 2 !prof !96 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -8
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8evaluateEPKtPNS_7DOMNodeEPKNS_18DOMXPathNSResolverEtPv(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr poison, ptr poison, ptr poison, i16 zeroext poison, ptr poison)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 9, ptr noundef null, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %16 = load i64, ptr %15, align 8, !tbaa !94
  %17 = icmp ult i64 %16, 48
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 65536)
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  store ptr %26, ptr %24, align 8, !tbaa !92
  store ptr %24, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds i8, ptr %24, i64 8
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %27, ptr %28, align 8, !tbaa !93
  store i64 65528, ptr %15, align 8, !tbaa !94
  br label %29

29:                                               ; preds = %14, %18
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds i8, ptr %31, i64 48
  store ptr %32, ptr %30, align 8, !tbaa !93
  %33 = load i64, ptr %15, align 8, !tbaa !94
  %34 = add i64 %33, -48
  store i64 %34, ptr %15, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_717DOMTreeWalkerImplC1EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(41) %31, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  ret ptr %31
}

declare void @_ZN11xercesc_2_717DOMTreeWalkerImplC1EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #9 align 2 !prof !96 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl16createTreeWalkerEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  ret ptr %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getDoctypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !152 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getDocumentElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl20getElementsByTagNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !96 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %10 = load i64, ptr %9, align 8, !tbaa !94
  %11 = icmp ult i64 %10, 64
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 65536)
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  store ptr %20, ptr %18, align 8, !tbaa !92
  store ptr %18, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds i8, ptr %18, i64 8
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %21, ptr %22, align 8, !tbaa !93
  store i64 65528, ptr %9, align 8, !tbaa !94
  br label %23

23:                                               ; preds = %8, %12
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = getelementptr inbounds i8, ptr %25, i64 64
  store ptr %26, ptr %24, align 8, !tbaa !93
  %27 = load i64, ptr %9, align 8, !tbaa !94
  %28 = add i64 %27, -64
  store i64 %28, ptr %9, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm(ptr noundef nonnull align 8 dereferenceable(64) %25, i64 noundef 109, i1 noundef zeroext false, i64 noundef 128)
  store ptr %25, ptr %5, align 8, !tbaa !100
  br label %29

29:                                               ; preds = %23, %3
  %30 = load ptr, ptr %5, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %31 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !155
  br label %35

35:                                               ; preds = %29, %33
  %36 = phi ptr [ %34, %33 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 8, !tbaa !100
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %41 = load i64, ptr %40, align 8, !tbaa !94
  %42 = icmp ult i64 %41, 64
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = load ptr, ptr %45, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef 65536)
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !91
  store ptr %51, ptr %49, align 8, !tbaa !92
  store ptr %49, ptr %50, align 8, !tbaa !91
  %52 = getelementptr inbounds i8, ptr %49, i64 8
  %53 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %52, ptr %53, align 8, !tbaa !93
  store i64 65528, ptr %40, align 8, !tbaa !94
  br label %54

54:                                               ; preds = %38, %43
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  %57 = getelementptr inbounds i8, ptr %56, i64 64
  store ptr %57, ptr %55, align 8, !tbaa !93
  %58 = load i64, ptr %40, align 8, !tbaa !94
  %59 = add i64 %58, -64
  store i64 %59, ptr %40, align 8, !tbaa !94
  call void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(58) %56, ptr noundef %1, ptr noundef %2)
  %60 = call noundef i64 @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_(ptr noundef nonnull align 8 dereferenceable(64) %39, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %56)
  %61 = load ptr, ptr %5, align 8, !tbaa !100
  %62 = shl i64 %60, 32
  %63 = ashr exact i64 %62, 32
  %64 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm(ptr noundef nonnull align 8 dereferenceable(64) %61, i64 noundef %63)
  br label %65

65:                                               ; preds = %54, %35
  %66 = phi ptr [ %36, %35 ], [ %64, %54 ]
  ret ptr %66
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getImplementationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv()
  ret ptr %2
}

declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !157
  %8 = icmp ne i16 %7, 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %8, i1 true, i1 %11, !prof !158
  br i1 %12, label %13, label %23, !prof !68

13:                                               ; preds = %3
  %14 = load ptr, ptr %1, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef signext i16 %16(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !157
  %18 = icmp ne i16 %17, 10
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = select i1 %18, i1 true, i1 %21, !prof !68
  br i1 %22, label %30, label %23, !prof !68

23:                                               ; preds = %13, %3
  %24 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %24, i16 noundef signext 3, ptr noundef null, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #23
  resume { ptr, i32 } %29

30:                                               ; preds = %13
  %31 = load ptr, ptr %1, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef signext i16 %33(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !157
  %35 = icmp eq i16 %34, 10
  br i1 %35, label %36, label %46, !prof !158

36:                                               ; preds = %30
  %37 = load ptr, ptr %1, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load ptr, ptr %1, align 8, !tbaa !65
  %44 = getelementptr inbounds ptr, ptr %43, i64 49
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(130) %1, ptr noundef nonnull %0)
  br label %46

46:                                               ; preds = %42, %36, %30
  %47 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %48 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull %1, ptr noundef %2)
  %49 = load ptr, ptr %1, align 8, !tbaa !65
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef signext i16 %51(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !157
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %60, label %54, !prof !68

54:                                               ; preds = %46
  %55 = load ptr, ptr %1, align 8, !tbaa !65
  %56 = getelementptr inbounds ptr, ptr %55, i64 4
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef signext i16 %57(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = icmp eq i16 %58, 10
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %46
  %61 = phi ptr [ %9, %46 ], [ %19, %54 ]
  store ptr %1, ptr %61, align 8, !tbaa !92
  br label %62

62:                                               ; preds = %60, %54
  ret ptr %1
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #9 align 2 !prof !96 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = load ptr, ptr %2, align 8, !tbaa !65
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = icmp eq i16 %11, 10
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef signext i16 %16(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %3
  %20 = phi ptr [ %4, %3 ], [ %6, %13 ]
  store ptr null, ptr %20, align 8, !tbaa !92
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %0, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 58
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef nonnull %2)
          to label %26 unwind label %43

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef signext i16 %29(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %31 unwind label %43

31:                                               ; preds = %26
  %32 = icmp eq i16 %30, 10
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %2, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef signext i16 %36(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %38 unwind label %43

38:                                               ; preds = %33
  %39 = icmp eq i16 %37, 1
  br i1 %39, label %40, label %54

40:                                               ; preds = %38, %31
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %42 = invoke noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull %2)
          to label %63 unwind label %43

43:                                               ; preds = %54, %40, %33, %26, %21
  %44 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  %46 = extractvalue { ptr, i32 } %44, 1
  %47 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #23
  %48 = icmp eq i32 %46, %47
  %49 = tail call ptr @__cxa_begin_catch(ptr %45) #23
  br i1 %48, label %50, label %52

50:                                               ; preds = %43
  invoke void @__cxa_rethrow() #24
          to label %51 unwind label %61

51:                                               ; preds = %50
  unreachable

52:                                               ; preds = %43
  store ptr %5, ptr %4, align 8, !tbaa !153
  store ptr %7, ptr %6, align 8, !tbaa !154
  invoke void @__cxa_rethrow() #24
          to label %53 unwind label %59

53:                                               ; preds = %52
  unreachable

54:                                               ; preds = %38
  %55 = load ptr, ptr %0, align 8, !tbaa !65
  %56 = getelementptr inbounds ptr, ptr %55, i64 60
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2)
          to label %63 unwind label %43

59:                                               ; preds = %52
  %60 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %65 unwind label %67

61:                                               ; preds = %50
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %65 unwind label %67

63:                                               ; preds = %54, %40
  %64 = phi ptr [ %42, %40 ], [ %58, %54 ]
  ret ptr %64

65:                                               ; preds = %61, %59
  %66 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ]
  resume { ptr, i32 } %66

67:                                               ; preds = %61, %59
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  tail call void @__clang_call_terminate(ptr %69) #25
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 align 2 !prof !96 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef returned %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  %5 = load ptr, ptr %1, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 20
  br label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = icmp eq i16 %16, 10
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi ptr [ %19, %18 ], [ %11, %10 ]
  store ptr null, ptr %21, align 8, !tbaa !92
  br label %22

22:                                               ; preds = %20, %12
  ret ptr %1
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11removeChildEPNS_7DOMNodeE(ptr noundef %0, ptr noundef returned %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  %5 = load ptr, ptr %1, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = icmp eq i16 %14, 10
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = phi i64 [ 216, %2 ], [ 208, %10 ]
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  store ptr null, ptr %18, align 8, !tbaa !92
  br label %19

19:                                               ; preds = %16, %10
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl12setNodeValueEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !96 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 92
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext false)
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2)
  br i1 %6, label %14, label %7

7:                                                ; preds = %5, %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 5, ptr noundef null, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %5
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 128, i32 noundef 7)
  tail call void @_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  ret ptr %15
}

declare void @_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %9, label %7, !prof !159

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %2)
  br i1 %8, label %16, label %9, !prof !160

9:                                                ; preds = %7, %5
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 5, ptr noundef null, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #23
  resume { ptr, i32 } %15

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %18 = load i64, ptr %17, align 8, !tbaa !94
  %19 = icmp ult i64 %18, 144
  br i1 %19, label %20, label %31, !prof !161

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 65536), !prof !162
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  store ptr %28, ptr %26, align 8, !tbaa !92
  store ptr %26, ptr %27, align 8, !tbaa !91
  %29 = getelementptr inbounds i8, ptr %26, i64 8
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %29, ptr %30, align 8, !tbaa !93
  store i64 65528, ptr %17, align 8, !tbaa !94
  br label %31

31:                                               ; preds = %16, %20
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  %34 = getelementptr inbounds i8, ptr %33, i64 144
  store ptr %34, ptr %32, align 8, !tbaa !93
  %35 = load i64, ptr %17, align 8, !tbaa !94
  %36 = add i64 %35, -144
  store i64 %36, ptr %17, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll(ptr noundef nonnull align 8 dereferenceable(144) %33, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4)
  ret ptr %33
}

declare void @_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %63, label %5, !prof !163

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !132

9:                                                ; preds = %5
  %10 = load i16, ptr %7, align 2, !tbaa !125
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !125
  %12 = icmp eq i16 %10, %11
  br i1 %12, label %16, label %44, !prof !133

13:                                               ; preds = %5
  %14 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !125
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %27, label %44

16:                                               ; preds = %9, %21
  %17 = phi i16 [ %24, %21 ], [ %10, %9 ]
  %18 = phi ptr [ %23, %21 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %9 ]
  %19 = phi ptr [ %22, %21 ], [ %7, %9 ]
  %20 = icmp eq i16 %17, 0
  br i1 %20, label %27, label %21, !prof !134

21:                                               ; preds = %16
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  %23 = getelementptr inbounds i16, ptr %18, i64 1
  %24 = load i16, ptr %22, align 2, !tbaa !125
  %25 = load i16, ptr %23, align 2, !tbaa !125
  %26 = icmp eq i16 %24, %25
  br i1 %26, label %16, label %44, !prof !135, !llvm.loop !136

27:                                               ; preds = %16, %13
  %28 = load i16, ptr %2, align 2, !tbaa !125
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %32, %30 ], [ %2, %27 ]
  %32 = getelementptr inbounds i16, ptr %31, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !125
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %30, !llvm.loop !137

35:                                               ; preds = %30
  %36 = ptrtoint ptr %32 to i64
  %37 = ptrtoint ptr %2 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 1
  %40 = trunc i64 %39 to i32
  br label %41

41:                                               ; preds = %35, %27
  %42 = phi i32 [ %40, %35 ], [ 0, %27 ]
  %43 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef nonnull %2, i32 noundef %42)
  br label %61

44:                                               ; preds = %21, %9, %13
  %45 = load i16, ptr %2, align 2, !tbaa !125
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %58, label %47, !prof !132

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %49, %47 ], [ %2, %44 ]
  %49 = getelementptr inbounds i16, ptr %48, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !125
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %47, !prof !138, !llvm.loop !137

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i64
  %54 = ptrtoint ptr %2 to i64
  %55 = sub i64 %53, %54
  %56 = lshr exact i64 %55, 1
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %52, %44
  %59 = phi i32 [ %57, %52 ], [ 0, %44 ]
  %60 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef nonnull %2, i32 noundef %59)
  br label %61

61:                                               ; preds = %41, %58
  %62 = phi i1 [ %43, %41 ], [ %60, %58 ]
  br i1 %62, label %70, label %63, !prof !164

63:                                               ; preds = %61, %3
  %64 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %64, i16 noundef signext 5, ptr noundef null, ptr noundef %66)
          to label %67 unwind label %68

67:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

68:                                               ; preds = %63
  %69 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %64) #23
  resume { ptr, i32 } %69

70:                                               ; preds = %61
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !104
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %95, !prof !140

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %76 = load i64, ptr %75, align 8, !tbaa !94
  %77 = icmp ult i64 %76, 96
  br i1 %77, label %78, label %89, !prof !141

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %80 = load ptr, ptr %79, align 8, !tbaa !69
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %80, i64 noundef 65536), !prof !142
  %85 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %86 = load ptr, ptr %85, align 8, !tbaa !91
  store ptr %86, ptr %84, align 8, !tbaa !92
  store ptr %84, ptr %85, align 8, !tbaa !91
  %87 = getelementptr inbounds i8, ptr %84, i64 8
  %88 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %87, ptr %88, align 8, !tbaa !93
  store i64 65528, ptr %75, align 8, !tbaa !94
  br label %89

89:                                               ; preds = %78, %74
  %90 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %91 = load ptr, ptr %90, align 8, !tbaa !93
  %92 = getelementptr inbounds i8, ptr %91, i64 96
  store ptr %92, ptr %90, align 8, !tbaa !93
  %93 = load i64, ptr %75, align 8, !tbaa !94
  %94 = add i64 %93, -96
  store i64 %94, ptr %75, align 8, !tbaa !94
  br label %107

95:                                               ; preds = %70
  %96 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %72, i32 noundef 1)
  %97 = load ptr, ptr %96, align 8, !tbaa !92
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %97, i64 0, i32 1, i32 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !143
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %95
  %104 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef 96)
  br label %107

105:                                              ; preds = %99
  %106 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %97)
  br label %107

107:                                              ; preds = %89, %103, %105
  %108 = phi ptr [ %104, %103 ], [ %106, %105 ], [ %91, %89 ]
  tail call void @_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(96) %108, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  ret ptr %108
}

declare void @_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl22getElementsByTagNameNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !96 {
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !96 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %11 = load i64, ptr %10, align 8, !tbaa !94
  %12 = icmp ult i64 %11, 64
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 65536)
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  store ptr %21, ptr %19, align 8, !tbaa !92
  store ptr %19, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds i8, ptr %19, i64 8
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %22, ptr %23, align 8, !tbaa !93
  store i64 65528, ptr %10, align 8, !tbaa !94
  br label %24

24:                                               ; preds = %9, %13
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !93
  %27 = getelementptr inbounds i8, ptr %26, i64 64
  store ptr %27, ptr %25, align 8, !tbaa !93
  %28 = load i64, ptr %10, align 8, !tbaa !94
  %29 = add i64 %28, -64
  store i64 %29, ptr %10, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm(ptr noundef nonnull align 8 dereferenceable(64) %26, i64 noundef 109, i1 noundef zeroext false, i64 noundef 128)
  store ptr %26, ptr %6, align 8, !tbaa !100
  br label %30

30:                                               ; preds = %24, %4
  %31 = load ptr, ptr %6, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %32 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %31, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !155
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi ptr [ %35, %34 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 8, !tbaa !100
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %42 = load i64, ptr %41, align 8, !tbaa !94
  %43 = icmp ult i64 %42, 64
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef 65536)
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  store ptr %52, ptr %50, align 8, !tbaa !92
  store ptr %50, ptr %51, align 8, !tbaa !91
  %53 = getelementptr inbounds i8, ptr %50, i64 8
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %53, ptr %54, align 8, !tbaa !93
  store i64 65528, ptr %41, align 8, !tbaa !94
  br label %55

55:                                               ; preds = %39, %44
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %57 = load ptr, ptr %56, align 8, !tbaa !93
  %58 = getelementptr inbounds i8, ptr %57, i64 64
  store ptr %58, ptr %56, align 8, !tbaa !93
  %59 = load i64, ptr %41, align 8, !tbaa !94
  %60 = add i64 %59, -64
  store i64 %60, ptr %41, align 8, !tbaa !94
  call void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(58) %57, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %61 = call noundef i64 @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_(ptr noundef nonnull align 8 dereferenceable(64) %40, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %57)
  %62 = load ptr, ptr %6, align 8, !tbaa !100
  %63 = shl i64 %61, 32
  %64 = ashr exact i64 %63, 32
  %65 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm(ptr noundef nonnull align 8 dereferenceable(64) %62, i64 noundef %64)
  br label %66

66:                                               ; preds = %55, %36
  %67 = phi ptr [ %37, %36 ], [ %65, %55 ]
  ret ptr %67
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getElementByIdEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_712DOMNodeIDMap4findEPKt(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 44
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %14

14:                                               ; preds = %9, %6, %2
  %15 = phi ptr [ null, %2 ], [ %13, %9 ], [ null, %6 ]
  ret ptr %15
}

declare noundef ptr @_ZN11xercesc_2_712DOMNodeIDMap4findEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %0) local_unnamed_addr #15 align 2 !prof !166 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !167

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !125
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !167

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !125
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !168, !llvm.loop !137

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22, !prof !169

20:                                               ; preds = %17
  %21 = zext nneg i32 %18 to i64
  br label %36

22:                                               ; preds = %36, %17
  %23 = phi i32 [ -1, %17 ], [ %44, %36 ]
  %24 = phi i32 [ 0, %17 ], [ %46, %36 ]
  %25 = icmp eq i32 %18, 0
  %26 = icmp ugt i32 %24, 1
  %27 = select i1 %25, i1 true, i1 %26, !prof !167
  %28 = icmp eq i32 %23, 0
  %29 = select i1 %27, i1 true, i1 %28, !prof !167
  %30 = add nsw i32 %18, -1
  %31 = icmp eq i32 %23, %30
  %32 = select i1 %29, i1 true, i1 %31, !prof !167
  %33 = icmp eq i32 %24, 0
  %34 = select i1 %33, i32 0, i32 %23, !prof !169
  %35 = select i1 %32, i32 -1, i32 %34, !prof !167
  ret i32 %35

36:                                               ; preds = %20, %36
  %37 = phi i64 [ 0, %20 ], [ %47, %36 ]
  %38 = phi i32 [ 0, %20 ], [ %46, %36 ]
  %39 = phi i32 [ -1, %20 ], [ %44, %36 ]
  %40 = getelementptr inbounds i16, ptr %0, i64 %37
  %41 = load i16, ptr %40, align 2, !tbaa !125
  %42 = icmp eq i16 %41, 58
  %43 = trunc i64 %37 to i32
  %44 = select i1 %42, i32 %43, i32 %39, !prof !170
  %45 = zext i1 %42 to i32
  %46 = add nuw nsw i32 %38, %45
  %47 = add nuw nsw i64 %37, 1
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %22, label %36, !prof !171, !llvm.loop !172
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10getBaseURIEv(ptr nocapture noundef readonly %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 96
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11createRangeEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %3 = load i64, ptr %2, align 8, !tbaa !94
  %4 = icmp ult i64 %3, 80
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 65536)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  store ptr %13, ptr %11, align 8, !tbaa !92
  store ptr %11, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds i8, ptr %11, i64 8
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %14, ptr %15, align 8, !tbaa !93
  store i64 65528, ptr %2, align 8, !tbaa !94
  br label %16

16:                                               ; preds = %1, %5
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = getelementptr inbounds i8, ptr %18, i64 80
  store ptr %19, ptr %17, align 8, !tbaa !93
  %20 = load i64, ptr %2, align 8, !tbaa !94
  %21 = add i64 %20, -80
  store i64 %21, ptr %2, align 8, !tbaa !94
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_712DOMRangeImplC1EPNS_11DOMDocumentEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull %0, ptr noundef %23)
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %16
  %28 = load ptr, ptr %22, align 8, !tbaa !69
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %28)
  %30 = load ptr, ptr %22, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %29, i64 0, i32 1
  store i8 0, ptr %31, align 8, !tbaa !174
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %29, i64 0, i32 2
  store i32 0, ptr %32, align 4, !tbaa !176
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %29, i64 0, i32 3
  store i32 1, ptr %33, align 8, !tbaa !177
  %34 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %29, i64 0, i32 4
  store ptr null, ptr %34, align 8, !tbaa !178
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %29, i64 0, i32 5
  store ptr %30, ptr %35, align 8, !tbaa !179
  %36 = load ptr, ptr %30, align 8, !tbaa !65
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 8)
          to label %40 unwind label %41

40:                                               ; preds = %27
  store ptr %39, ptr %34, align 8, !tbaa !178
  store ptr null, ptr %39, align 8, !tbaa !92
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !65
  store ptr %29, ptr %24, align 8, !tbaa !101
  br label %43

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %29, ptr noundef %28) #23
  resume { ptr, i32 } %42

43:                                               ; preds = %40, %16
  %44 = load ptr, ptr %24, align 8, !tbaa !101
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef 1)
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !178
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !176
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49
  store ptr %18, ptr %50, align 8, !tbaa !92
  %51 = add i32 %48, 1
  store i32 %51, ptr %47, align 4, !tbaa !176
  ret ptr %18
}

declare void @_ZN11xercesc_2_712DOMRangeImplC1EPNS_11DOMDocumentEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getRangesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #16 align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl11removeRangeEPNS_12DOMRangeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef readnone %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !176
  %9 = zext i32 %8 to i64
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %25, label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %25, label %14, !llvm.loop !180

14:                                               ; preds = %6, %11
  %15 = phi i64 [ %12, %11 ], [ 0, %6 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !101
  %17 = trunc i64 %15 to i32
  %18 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %17)
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %11

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8, !tbaa !101
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %17)
  br label %25

25:                                               ; preds = %11, %6, %20, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !166 {
  %3 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 2), align 8, !tbaa !181
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !182

5:                                                ; preds = %2
  store i32 1410, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 9), align 4, !tbaa !181
  store i32 442, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 1), align 4, !tbaa !181
  store i32 442, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 5), align 4, !tbaa !181
  store i32 442, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 6), align 8, !tbaa !181
  store i32 442, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 11), align 4, !tbaa !181
  store i32 40, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 2), align 8, !tbaa !181
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 12), align 16, !tbaa !181
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 4), align 16, !tbaa !181
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 3), align 4, !tbaa !181
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 8), align 16, !tbaa !181
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 7), align 4, !tbaa !181
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !183
  %11 = load ptr, ptr %1, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !184
  %15 = sext i16 %10 to i64
  %16 = getelementptr inbounds [14 x i32], ptr @_ZZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_E5kidOK, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !181
  %18 = zext nneg i16 %14 to i32
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp ne i32 %20, 0
  ret i1 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl7changedEv(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #17 align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  %3 = load i32, ptr %2, align 8, !tbaa !88
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !88
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715DOMDocumentImpl7changesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 26
  %3 = load i32, ptr %2, align 8, !tbaa !88
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 58
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef null)
  ret ptr %6
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !64 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 58
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(293) %3, ptr noundef %1, ptr noundef null), !prof !186
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getAttributesEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getChildNodesEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getFirstChildEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLastChildEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getLocalNameEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl15getNamespaceURIEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getNextSiblingEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl12getNodeValueEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl9getPrefixEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13getParentNodeEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18getPreviousSiblingEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasChildNodesEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl9normalizeEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isSupportedEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 align 2 !prof !96 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl9setPrefixEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl13hasAttributesEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret i1 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !96 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 align 2 !prof !96 {
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getUserDataEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i16 %4
}

declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef signext i16 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i16 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl14getTextContentEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl14setTextContentEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl21lookupNamespacePrefixEPKtb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #9 align 2 !prof !96 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef zeroext i1 @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18isDefaultNamespaceEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl18lookupNamespaceURIEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl12getInterfaceEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !96 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !187 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4, !prof !188

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !125
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !189

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !125
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !190, !llvm.loop !137

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = and i64 %15, 8589934590
  %17 = add nuw nsw i64 %16, 2
  br label %18

18:                                               ; preds = %4, %12
  %19 = phi i64 [ %17, %12 ], [ 2, %4 ]
  %20 = and i64 %19, 2
  %21 = add nuw nsw i64 %20, %19
  %22 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %21)
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %22, ptr noundef nonnull %1)
  br label %23

23:                                               ; preds = %2, %18
  %24 = phi ptr [ %22, %18 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1) local_unnamed_addr #11 align 2 !prof !191 {
  %3 = add i64 %1, 7
  %4 = and i64 %3, -8
  %5 = icmp ugt i64 %4, 4096
  br i1 %5, label %6, label %24, !prof !192

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = add i64 %4, 8
  %10 = load ptr, ptr %8, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %9)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %15, align 8, !tbaa !92
  store ptr %18, ptr %13, align 8, !tbaa !92
  %19 = load ptr, ptr %14, align 8, !tbaa !91
  store ptr %13, ptr %19, align 8, !tbaa !92
  br label %22

20:                                               ; preds = %6
  store ptr %13, ptr %14, align 8, !tbaa !91
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds i8, ptr %13, i64 8
  br label %45

24:                                               ; preds = %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %26 = load i64, ptr %25, align 8, !tbaa !94
  %27 = icmp ugt i64 %4, %26
  br i1 %27, label %28, label %39, !prof !141

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 65536), !prof !90
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  store ptr %36, ptr %34, align 8, !tbaa !92
  store ptr %34, ptr %35, align 8, !tbaa !91
  %37 = getelementptr inbounds i8, ptr %34, i64 8
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %37, ptr %38, align 8, !tbaa !93
  store i64 65528, ptr %25, align 8, !tbaa !94
  br label %39

39:                                               ; preds = %28, %24
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !93
  %42 = getelementptr inbounds i8, ptr %41, i64 %4
  store ptr %42, ptr %40, align 8, !tbaa !93
  %43 = load i64, ptr %25, align 8, !tbaa !94
  %44 = sub i64 %43, %4
  store i64 %44, ptr %25, align 8, !tbaa !94
  br label %45

45:                                               ; preds = %39, %22
  %46 = phi ptr [ %23, %22 ], [ %41, %39 ]
  ret ptr %46
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !193 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !194

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull %1)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

declare noundef ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEC2Embm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %0, align 8, !tbaa !195
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  store i64 %1, ptr %7, align 8, !tbaa !196
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i64 %3, ptr %9, align 8, !tbaa !197
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  store i64 0, ptr %10, align 8, !tbaa !198
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !92
  store ptr %12, ptr %11, align 8, !tbaa !113
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE10initializeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1)
  %13 = load ptr, ptr %11, align 8, !tbaa !113
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %19

15:                                               ; preds = %4
  store ptr %14, ptr %8, align 8, !tbaa !117
  %16 = load i64, ptr %9, align 8, !tbaa !197
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store i64 256, ptr %9, align 8, !tbaa !197
  br label %21

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #23
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %11, align 8, !tbaa !113
  %24 = load i64, ptr %9, align 8, !tbaa !197
  %25 = shl i64 %24, 3
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %25)
  store ptr %29, ptr %22, align 8, !tbaa !115
  store ptr null, ptr %29, align 8, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE3putEPvPtS4_PS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %0, align 8, !tbaa !195, !range !128, !noundef !129
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %7, align 8, !tbaa !155
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull align 8 dereferenceable(58) %13) #23
  br label %19

19:                                               ; preds = %12, %15, %9
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !113
  %22 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !199
  %24 = load ptr, ptr %21, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23)
  %27 = load ptr, ptr %20, align 8, !tbaa !113
  %28 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %7, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !200
  %30 = load ptr, ptr %27, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  store ptr %4, ptr %7, align 8, !tbaa !155
  %33 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !201
  %34 = load ptr, ptr %20, align 8, !tbaa !113
  %35 = icmp eq ptr %2, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %19
  %37 = load i16, ptr %2, align 2, !tbaa !125
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %41, %39 ], [ %2, %36 ]
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !125
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %39, !llvm.loop !137

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %2 to i64
  %47 = sub i64 %45, %46
  %48 = add i64 %47, 2
  %49 = and i64 %48, 8589934590
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi i64 [ %49, %44 ], [ 2, %36 ]
  %52 = load ptr, ptr %34, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr nonnull align 2 %2, i64 %51, i1 false)
  br label %56

56:                                               ; preds = %19, %50
  %57 = phi ptr [ %55, %50 ], [ null, %19 ]
  store ptr %57, ptr %22, align 8, !tbaa !199
  %58 = load ptr, ptr %20, align 8, !tbaa !113
  %59 = icmp eq ptr %3, null
  br i1 %59, label %80, label %60

60:                                               ; preds = %56
  %61 = load i16, ptr %3, align 2, !tbaa !125
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %65, %63 ], [ %3, %60 ]
  %65 = getelementptr inbounds i16, ptr %64, i64 1
  %66 = load i16, ptr %65, align 2, !tbaa !125
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %63, !llvm.loop !137

68:                                               ; preds = %63
  %69 = ptrtoint ptr %65 to i64
  %70 = ptrtoint ptr %3 to i64
  %71 = sub i64 %69, %70
  %72 = add i64 %71, 2
  %73 = and i64 %72, 8589934590
  br label %74

74:                                               ; preds = %68, %60
  %75 = phi i64 [ %73, %68 ], [ 2, %60 ]
  %76 = load ptr, ptr %58, align 8, !tbaa !65
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %58, i64 noundef %75)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %79, ptr nonnull align 2 %3, i64 %75, i1 false)
  br label %80

80:                                               ; preds = %56, %74
  %81 = phi ptr [ %79, %74 ], [ null, %56 ]
  store ptr %81, ptr %28, align 8, !tbaa !200
  br label %98

82:                                               ; preds = %5
  %83 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !113
  %85 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %84)
  %86 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !116
  %88 = load i64, ptr %6, align 8, !tbaa !202
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !92
  %91 = load ptr, ptr %83, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEC2EPvPtS4_PS1_PS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %85, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %90, ptr noundef %91)
          to label %92 unwind label %96

92:                                               ; preds = %82
  %93 = load ptr, ptr %86, align 8, !tbaa !116
  %94 = load i64, ptr %6, align 8, !tbaa !202
  %95 = getelementptr inbounds ptr, ptr %93, i64 %94
  store ptr %85, ptr %95, align 8, !tbaa !92
  br label %98

96:                                               ; preds = %82
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %85, ptr noundef %84) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  resume { ptr, i32 } %97

98:                                               ; preds = %92, %80
  %99 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  %100 = load i64, ptr %99, align 8, !tbaa !198
  %101 = add i64 %100, 1
  %102 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 5
  %103 = load i64, ptr %102, align 8, !tbaa !197
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %98
  %106 = uitofp i64 %103 to double
  %107 = fmul double %106, 1.500000e+00
  %108 = fptoui double %107 to i64
  %109 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !113
  %111 = shl i64 %108, 3
  %112 = load ptr, ptr %110, align 8, !tbaa !65
  %113 = getelementptr inbounds ptr, ptr %112, i64 2
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %110, i64 noundef %111)
  %116 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !115
  %118 = load i64, ptr %102, align 8, !tbaa !197
  %119 = shl i64 %118, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %115, ptr align 8 %117, i64 %119, i1 false)
  %120 = load ptr, ptr %109, align 8, !tbaa !113
  %121 = load ptr, ptr %116, align 8, !tbaa !115
  %122 = load ptr, ptr %120, align 8, !tbaa !65
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  call void %124(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %121)
  store ptr %115, ptr %116, align 8, !tbaa !115
  store i64 %108, ptr %102, align 8, !tbaa !197
  br label %125

125:                                              ; preds = %105, %98
  %126 = load i64, ptr %99, align 8, !tbaa !198
  %127 = add i64 %126, 1
  store i64 %127, ptr %99, align 8, !tbaa !198
  %128 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = getelementptr inbounds ptr, ptr %129, i64 %127
  store ptr %4, ptr %130, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  ret i64 %127
}

declare void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE7getByIdEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = freeze i64 %4
  %6 = add i64 %1, -1
  %7 = icmp ult i64 %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 264, i32 noundef 67, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #23
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = getelementptr inbounds ptr, ptr %17, i64 %1
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  ret ptr %19
}

declare void @_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl17getActualEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl17setActualEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !204 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %4, align 8, !tbaa !203
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl11setEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !64 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !124
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl13getStandaloneEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !127, !range !128, !noundef !129
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl13setStandaloneEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(293) %0, i1 noundef zeroext %1) unnamed_addr #18 align 2 !prof !64 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl10getVersionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl10setVersionEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %44, label %4, !prof !158

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !125
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %44, label %7, !prof !158

7:                                                ; preds = %4
  %8 = load i16, ptr %1, align 2, !tbaa !125
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, align 2, !tbaa !125
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %15, label %11, !prof !68

11:                                               ; preds = %20, %7
  %12 = load i16, ptr %1, align 2, !tbaa !125
  %13 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !125
  %14 = icmp eq i16 %12, %13
  br i1 %14, label %26, label %37

15:                                               ; preds = %7, %20
  %16 = phi i16 [ %23, %20 ], [ %8, %7 ]
  %17 = phi ptr [ %22, %20 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, %7 ]
  %18 = phi ptr [ %21, %20 ], [ %1, %7 ]
  %19 = icmp eq i16 %16, 0
  br i1 %19, label %44, label %20, !prof !189

20:                                               ; preds = %15
  %21 = getelementptr inbounds i16, ptr %18, i64 1
  %22 = getelementptr inbounds i16, ptr %17, i64 1
  %23 = load i16, ptr %21, align 2, !tbaa !125
  %24 = load i16, ptr %22, align 2, !tbaa !125
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %15, label %11, !prof !205, !llvm.loop !136

26:                                               ; preds = %11, %31
  %27 = phi i16 [ %34, %31 ], [ %12, %11 ]
  %28 = phi ptr [ %33, %31 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %11 ]
  %29 = phi ptr [ %32, %31 ], [ %1, %11 ]
  %30 = icmp eq i16 %27, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i16, ptr %29, i64 1
  %33 = getelementptr inbounds i16, ptr %28, i64 1
  %34 = load i16, ptr %32, align 2, !tbaa !125
  %35 = load i16, ptr %33, align 2, !tbaa !125
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %26, label %37, !llvm.loop !136

37:                                               ; preds = %31, %11
  %38 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %38, i16 noundef signext 9, ptr noundef null, ptr noundef %40)
          to label %41 unwind label %42

41:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %38) #23
  resume { ptr, i32 } %43

44:                                               ; preds = %15, %26, %4, %2
  %45 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1)
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !126
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl14getDocumentURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl14setDocumentURIEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !64 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !158

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !125
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %19, label %7, !prof !158

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !125
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !206, !llvm.loop !137

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = add i64 %15, 18
  %17 = and i64 %16, 8589934590
  %18 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %17)
  tail call void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef nonnull %1, ptr noundef %18)
  br label %19

19:                                               ; preds = %2, %4, %12
  %20 = phi ptr [ %18, %12 ], [ null, %4 ], [ null, %2 ]
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 9
  store ptr %20, ptr %21, align 8, !tbaa !173
  ret void
}

declare void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl22getStrictErrorCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) unnamed_addr #12 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  %3 = load i8, ptr %2, align 4, !tbaa !89, !range !128, !noundef !129
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl22setStrictErrorCheckingEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(293) %0, i1 noundef zeroext %1) unnamed_addr #18 align 2 !prof !96 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  store i8 %3, ptr %4, align 4, !tbaa !89
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_715DOMDocumentImpl9adoptNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr nocapture readnone %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #23
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl17normalizeDocumentEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7)
  %9 = load ptr, ptr %6, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_713DOMNormalizerC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !109
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %10, %1
  %14 = load ptr, ptr %2, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_713DOMNormalizer17normalizeDocumentEPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %0)
  ret void
}

declare void @_ZN11xercesc_2_713DOMNormalizerC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMNormalizer17normalizeDocumentEPNS_15DOMDocumentImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl19getDOMConfigurationEv(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %7 = load i64, ptr %6, align 8, !tbaa !94
  %8 = icmp ult i64 %7, 48
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 65536)
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  store ptr %17, ptr %15, align 8, !tbaa !92
  store ptr %15, ptr %16, align 8, !tbaa !91
  %18 = getelementptr inbounds i8, ptr %15, i64 8
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %18, ptr %19, align 8, !tbaa !93
  store i64 65528, ptr %6, align 8, !tbaa !94
  br label %20

20:                                               ; preds = %5, %9
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = getelementptr inbounds i8, ptr %22, i64 48
  store ptr %23, ptr %21, align 8, !tbaa !93
  %24 = load i64, ptr %6, align 8, !tbaa !94
  %25 = add i64 %24, -48
  store i64 %25, ptr %6, align 8, !tbaa !94
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_720DOMConfigurationImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %27)
  store ptr %22, ptr %2, align 8, !tbaa !207
  br label %28

28:                                               ; preds = %20, %1
  %29 = load ptr, ptr %2, align 8, !tbaa !207
  ret ptr %29
}

declare void @_ZN11xercesc_2_720DOMConfigurationImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl19setDOMConfigurationEPNS_16DOMConfigurationE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(293) %0, ptr noundef %1) unnamed_addr #18 align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !207
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl10importNodeEPNS_7DOMNodeEbb(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  %6 = load i8, ptr %5, align 4, !tbaa !89, !range !128, !noundef !129
  %7 = load ptr, ptr %1, align 8, !tbaa !65
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %10, label %420 [
    i16 1, label %11
    i16 2, label %120
    i16 3, label %147
    i16 4, label %156
    i16 5, label %165
    i16 6, label %177
    i16 7, label %208
    i16 8, label %221
    i16 10, label %230
    i16 11, label %392
    i16 12, label %397
  ]

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr %1, align 8, !tbaa !65
  br i1 %16, label %18, label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds ptr, ptr %17, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %22 = load ptr, ptr %0, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %21)
  br label %38

26:                                               ; preds = %11
  %27 = getelementptr inbounds ptr, ptr %17, i64 22
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %30 = load ptr, ptr %1, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = load ptr, ptr %0, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 16
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %29, ptr noundef %33)
  br label %38

38:                                               ; preds = %26, %18
  %39 = phi ptr [ %25, %18 ], [ %37, %26 ]
  %40 = load ptr, ptr %1, align 8, !tbaa !65
  %41 = getelementptr inbounds ptr, ptr %40, i64 11
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %427, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %43, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef i64 %48(ptr noundef nonnull align 8 dereferenceable(8) %43)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %427, label %51

51:                                               ; preds = %45
  %52 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2
  %53 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  br label %59

59:                                               ; preds = %51, %113
  %60 = phi i64 [ 0, %51 ], [ %114, %113 ]
  %61 = load ptr, ptr %43, align 8, !tbaa !65
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %60)
  %65 = load ptr, ptr %64, align 8, !tbaa !65
  %66 = getelementptr inbounds ptr, ptr %65, i64 41
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef zeroext i1 %67(ptr noundef nonnull align 8 dereferenceable(8) %64)
  %69 = or i1 %68, %3
  br i1 %69, label %70, label %113

70:                                               ; preds = %59
  %71 = load ptr, ptr %0, align 8, !tbaa !65
  %72 = getelementptr inbounds ptr, ptr %71, i64 92
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %64, i1 noundef zeroext true, i1 noundef zeroext false)
  %75 = load ptr, ptr %64, align 8, !tbaa !65
  %76 = getelementptr inbounds ptr, ptr %75, i64 24
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %64)
  %79 = icmp eq ptr %78, null
  %80 = load ptr, ptr %39, align 8, !tbaa !65
  %81 = select i1 %79, i64 45, i64 52
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %74)
  %85 = load ptr, ptr %64, align 8, !tbaa !65
  %86 = getelementptr inbounds ptr, ptr %85, i64 45
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef zeroext i1 %87(ptr noundef nonnull align 8 dereferenceable(8) %64)
  br i1 %88, label %89, label %113

89:                                               ; preds = %70
  %90 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %74, i64 0, i32 1, i32 1
  %91 = load i16, ptr %90, align 8, !tbaa !208
  %92 = or i16 %52, %91
  store i16 %92, ptr %90, align 8, !tbaa !208
  %93 = load ptr, ptr %53, align 8, !tbaa !165
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load i64, ptr %54, align 8, !tbaa !94
  %97 = icmp ult i64 %96, 56
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load ptr, ptr %55, align 8, !tbaa !69
  %100 = load ptr, ptr %99, align 8, !tbaa !65
  %101 = getelementptr inbounds ptr, ptr %100, i64 2
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %99, i64 noundef 65536)
  %104 = load ptr, ptr %56, align 8, !tbaa !91
  store ptr %104, ptr %103, align 8, !tbaa !92
  store ptr %103, ptr %56, align 8, !tbaa !91
  %105 = getelementptr inbounds i8, ptr %103, i64 8
  store ptr %105, ptr %57, align 8, !tbaa !93
  store i64 65528, ptr %54, align 8, !tbaa !94
  br label %106

106:                                              ; preds = %95, %98
  %107 = load ptr, ptr %58, align 8, !tbaa !93
  %108 = getelementptr inbounds i8, ptr %107, i64 56
  store ptr %108, ptr %58, align 8, !tbaa !93
  %109 = load i64, ptr %54, align 8, !tbaa !94
  %110 = add i64 %109, -56
  store i64 %110, ptr %54, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %107, i32 noundef 500, ptr noundef nonnull %0)
  store ptr %107, ptr %53, align 8, !tbaa !165
  br label %111

111:                                              ; preds = %106, %89
  %112 = load ptr, ptr %53, align 8, !tbaa !165
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %112, ptr noundef %74)
  br label %113

113:                                              ; preds = %70, %111, %59
  %114 = add nuw i64 %60, 1
  %115 = load ptr, ptr %43, align 8, !tbaa !65
  %116 = getelementptr inbounds ptr, ptr %115, i64 5
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef i64 %117(ptr noundef nonnull align 8 dereferenceable(8) %43)
  %119 = icmp ult i64 %114, %118
  br i1 %119, label %59, label %427, !llvm.loop !209

120:                                              ; preds = %4
  %121 = load ptr, ptr %1, align 8, !tbaa !65
  %122 = getelementptr inbounds ptr, ptr %121, i64 24
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %125 = icmp eq ptr %124, null
  %126 = load ptr, ptr %1, align 8, !tbaa !65
  br i1 %125, label %127, label %135

127:                                              ; preds = %120
  %128 = getelementptr inbounds ptr, ptr %126, i64 2
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %131 = load ptr, ptr %0, align 8, !tbaa !65
  %132 = getelementptr inbounds ptr, ptr %131, i64 9
  %133 = load ptr, ptr %132, align 8
  %134 = tail call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %130)
  br label %427

135:                                              ; preds = %120
  %136 = getelementptr inbounds ptr, ptr %126, i64 22
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %139 = load ptr, ptr %1, align 8, !tbaa !65
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %143 = load ptr, ptr %0, align 8, !tbaa !65
  %144 = getelementptr inbounds ptr, ptr %143, i64 17
  %145 = load ptr, ptr %144, align 8
  %146 = tail call noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %138, ptr noundef %142)
  br label %427

147:                                              ; preds = %4
  %148 = load ptr, ptr %1, align 8, !tbaa !65
  %149 = getelementptr inbounds ptr, ptr %148, i64 3
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %152 = load ptr, ptr %0, align 8, !tbaa !65
  %153 = getelementptr inbounds ptr, ptr %152, i64 5
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %151)
  br label %427

156:                                              ; preds = %4
  %157 = load ptr, ptr %1, align 8, !tbaa !65
  %158 = getelementptr inbounds ptr, ptr %157, i64 3
  %159 = load ptr, ptr %158, align 8
  %160 = tail call noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %161 = load ptr, ptr %0, align 8, !tbaa !65
  %162 = getelementptr inbounds ptr, ptr %161, i64 7
  %163 = load ptr, ptr %162, align 8
  %164 = tail call noundef ptr %163(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %160)
  br label %427

165:                                              ; preds = %4
  %166 = load ptr, ptr %1, align 8, !tbaa !65
  %167 = getelementptr inbounds ptr, ptr %166, i64 2
  %168 = load ptr, ptr %167, align 8
  %169 = tail call noundef ptr %168(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %170 = load ptr, ptr %0, align 8, !tbaa !65
  %171 = getelementptr inbounds ptr, ptr %170, i64 10
  %172 = load ptr, ptr %171, align 8
  %173 = tail call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %169)
  store i8 0, ptr %5, align 4, !tbaa !89
  %174 = load ptr, ptr %173, align 8, !tbaa !65
  %175 = getelementptr inbounds ptr, ptr %174, i64 40
  %176 = load ptr, ptr %175, align 8
  tail call void %176(ptr noundef nonnull align 8 dereferenceable(88) %173, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %427

177:                                              ; preds = %4
  %178 = load ptr, ptr %1, align 8, !tbaa !65
  %179 = getelementptr inbounds ptr, ptr %178, i64 2
  %180 = load ptr, ptr %179, align 8
  %181 = tail call noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %182 = load ptr, ptr %0, align 8, !tbaa !65
  %183 = getelementptr inbounds ptr, ptr %182, i64 36
  %184 = load ptr, ptr %183, align 8
  %185 = tail call noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %181)
  %186 = load ptr, ptr %1, align 8, !tbaa !65
  %187 = getelementptr inbounds ptr, ptr %186, i64 40
  %188 = load ptr, ptr %187, align 8
  %189 = tail call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %190 = load ptr, ptr %185, align 8, !tbaa !65
  %191 = getelementptr inbounds ptr, ptr %190, i64 50
  %192 = load ptr, ptr %191, align 8
  tail call void %192(ptr noundef nonnull align 8 dereferenceable(129) %185, ptr noundef %189)
  %193 = load ptr, ptr %1, align 8, !tbaa !65
  %194 = getelementptr inbounds ptr, ptr %193, i64 41
  %195 = load ptr, ptr %194, align 8
  %196 = tail call noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %197 = load ptr, ptr %185, align 8, !tbaa !65
  %198 = getelementptr inbounds ptr, ptr %197, i64 51
  %199 = load ptr, ptr %198, align 8
  tail call void %199(ptr noundef nonnull align 8 dereferenceable(129) %185, ptr noundef %196)
  %200 = load ptr, ptr %1, align 8, !tbaa !65
  %201 = getelementptr inbounds ptr, ptr %200, i64 42
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %204 = load ptr, ptr %185, align 8, !tbaa !65
  %205 = getelementptr inbounds ptr, ptr %204, i64 49
  %206 = load ptr, ptr %205, align 8
  tail call void %206(ptr noundef nonnull align 8 dereferenceable(129) %185, ptr noundef %203)
  %207 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %185, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %207, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %427

208:                                              ; preds = %4
  %209 = load ptr, ptr %1, align 8, !tbaa !65
  %210 = getelementptr inbounds ptr, ptr %209, i64 2
  %211 = load ptr, ptr %210, align 8
  %212 = tail call noundef ptr %211(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %213 = load ptr, ptr %1, align 8, !tbaa !65
  %214 = getelementptr inbounds ptr, ptr %213, i64 3
  %215 = load ptr, ptr %214, align 8
  %216 = tail call noundef ptr %215(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %217 = load ptr, ptr %0, align 8, !tbaa !65
  %218 = getelementptr inbounds ptr, ptr %217, i64 8
  %219 = load ptr, ptr %218, align 8
  %220 = tail call noundef ptr %219(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %212, ptr noundef %216)
  br label %427

221:                                              ; preds = %4
  %222 = load ptr, ptr %1, align 8, !tbaa !65
  %223 = getelementptr inbounds ptr, ptr %222, i64 3
  %224 = load ptr, ptr %223, align 8
  %225 = tail call noundef ptr %224(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %226 = load ptr, ptr %0, align 8, !tbaa !65
  %227 = getelementptr inbounds ptr, ptr %226, i64 6
  %228 = load ptr, ptr %227, align 8
  %229 = tail call noundef ptr %228(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %225)
  br label %427

230:                                              ; preds = %4
  br i1 %3, label %238, label %231

231:                                              ; preds = %230
  %232 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %233 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %234 = load ptr, ptr %233, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %232, i16 noundef signext 9, ptr noundef null, ptr noundef %234)
          to label %235 unwind label %236

235:                                              ; preds = %231
  tail call void @__cxa_throw(ptr nonnull %232, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

236:                                              ; preds = %231
  %237 = landingpad { ptr, i32 }
          cleanup
  br label %469

238:                                              ; preds = %230
  %239 = load ptr, ptr %1, align 8, !tbaa !65
  %240 = getelementptr inbounds ptr, ptr %239, i64 2
  %241 = load ptr, ptr %240, align 8
  %242 = tail call noundef ptr %241(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %243 = load ptr, ptr %1, align 8, !tbaa !65
  %244 = getelementptr inbounds ptr, ptr %243, i64 43
  %245 = load ptr, ptr %244, align 8
  %246 = tail call noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %247 = load ptr, ptr %1, align 8, !tbaa !65
  %248 = getelementptr inbounds ptr, ptr %247, i64 44
  %249 = load ptr, ptr %248, align 8
  %250 = tail call noundef ptr %249(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %251 = load ptr, ptr %0, align 8, !tbaa !65
  %252 = getelementptr inbounds ptr, ptr %251, i64 38
  %253 = load ptr, ptr %252, align 8
  %254 = tail call noundef ptr %253(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %242, ptr noundef %246, ptr noundef %250)
  %255 = load ptr, ptr %1, align 8, !tbaa !65
  %256 = getelementptr inbounds ptr, ptr %255, i64 41
  %257 = load ptr, ptr %256, align 8
  %258 = tail call noundef ptr %257(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %259 = load ptr, ptr %254, align 8, !tbaa !65
  %260 = getelementptr inbounds ptr, ptr %259, i64 41
  %261 = load ptr, ptr %260, align 8
  %262 = tail call noundef ptr %261(ptr noundef nonnull align 8 dereferenceable(8) %254)
  %263 = icmp eq ptr %258, null
  br i1 %263, label %290, label %264

264:                                              ; preds = %238
  %265 = load ptr, ptr %258, align 8, !tbaa !65
  %266 = getelementptr inbounds ptr, ptr %265, i64 5
  %267 = load ptr, ptr %266, align 8
  %268 = tail call noundef i64 %267(ptr noundef nonnull align 8 dereferenceable(8) %258)
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %290, label %270

270:                                              ; preds = %264, %270
  %271 = phi i64 [ %284, %270 ], [ 0, %264 ]
  %272 = load ptr, ptr %258, align 8, !tbaa !65
  %273 = getelementptr inbounds ptr, ptr %272, i64 3
  %274 = load ptr, ptr %273, align 8
  %275 = tail call noundef ptr %274(ptr noundef nonnull align 8 dereferenceable(8) %258, i64 noundef %271)
  %276 = load ptr, ptr %0, align 8, !tbaa !65
  %277 = getelementptr inbounds ptr, ptr %276, i64 92
  %278 = load ptr, ptr %277, align 8
  %279 = tail call noundef ptr %278(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %275, i1 noundef zeroext true, i1 noundef zeroext false)
  %280 = load ptr, ptr %262, align 8, !tbaa !65
  %281 = getelementptr inbounds ptr, ptr %280, i64 2
  %282 = load ptr, ptr %281, align 8
  %283 = tail call noundef ptr %282(ptr noundef nonnull align 8 dereferenceable(8) %262, ptr noundef %279)
  %284 = add nuw i64 %271, 1
  %285 = load ptr, ptr %258, align 8, !tbaa !65
  %286 = getelementptr inbounds ptr, ptr %285, i64 5
  %287 = load ptr, ptr %286, align 8
  %288 = tail call noundef i64 %287(ptr noundef nonnull align 8 dereferenceable(8) %258)
  %289 = icmp ult i64 %284, %288
  br i1 %289, label %270, label %290, !llvm.loop !210

290:                                              ; preds = %270, %264, %238
  %291 = load ptr, ptr %1, align 8, !tbaa !65
  %292 = getelementptr inbounds ptr, ptr %291, i64 42
  %293 = load ptr, ptr %292, align 8
  %294 = tail call noundef ptr %293(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %295 = load ptr, ptr %254, align 8, !tbaa !65
  %296 = getelementptr inbounds ptr, ptr %295, i64 42
  %297 = load ptr, ptr %296, align 8
  %298 = tail call noundef ptr %297(ptr noundef nonnull align 8 dereferenceable(8) %254)
  %299 = icmp eq ptr %294, null
  br i1 %299, label %326, label %300

300:                                              ; preds = %290
  %301 = load ptr, ptr %294, align 8, !tbaa !65
  %302 = getelementptr inbounds ptr, ptr %301, i64 5
  %303 = load ptr, ptr %302, align 8
  %304 = tail call noundef i64 %303(ptr noundef nonnull align 8 dereferenceable(8) %294)
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %326, label %306

306:                                              ; preds = %300, %306
  %307 = phi i64 [ %320, %306 ], [ 0, %300 ]
  %308 = load ptr, ptr %294, align 8, !tbaa !65
  %309 = getelementptr inbounds ptr, ptr %308, i64 3
  %310 = load ptr, ptr %309, align 8
  %311 = tail call noundef ptr %310(ptr noundef nonnull align 8 dereferenceable(8) %294, i64 noundef %307)
  %312 = load ptr, ptr %0, align 8, !tbaa !65
  %313 = getelementptr inbounds ptr, ptr %312, i64 92
  %314 = load ptr, ptr %313, align 8
  %315 = tail call noundef ptr %314(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %311, i1 noundef zeroext true, i1 noundef zeroext false)
  %316 = load ptr, ptr %298, align 8, !tbaa !65
  %317 = getelementptr inbounds ptr, ptr %316, i64 2
  %318 = load ptr, ptr %317, align 8
  %319 = tail call noundef ptr %318(ptr noundef nonnull align 8 dereferenceable(8) %298, ptr noundef %315)
  %320 = add nuw i64 %307, 1
  %321 = load ptr, ptr %294, align 8, !tbaa !65
  %322 = getelementptr inbounds ptr, ptr %321, i64 5
  %323 = load ptr, ptr %322, align 8
  %324 = tail call noundef i64 %323(ptr noundef nonnull align 8 dereferenceable(8) %294)
  %325 = icmp ult i64 %320, %324
  br i1 %325, label %306, label %326, !llvm.loop !211

326:                                              ; preds = %306, %300, %290
  %327 = load ptr, ptr %1, align 8, !tbaa !65
  %328 = getelementptr inbounds ptr, ptr %327, i64 45
  %329 = load ptr, ptr %328, align 8
  %330 = tail call noundef ptr %329(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %331 = icmp eq ptr %330, null
  br i1 %331, label %336, label %332

332:                                              ; preds = %326
  %333 = load ptr, ptr %254, align 8, !tbaa !65
  %334 = getelementptr inbounds ptr, ptr %333, i64 48
  %335 = load ptr, ptr %334, align 8
  tail call void %335(ptr noundef nonnull align 8 dereferenceable(130) %254, ptr noundef nonnull %330)
  br label %336

336:                                              ; preds = %332, %326
  %337 = load ptr, ptr %1, align 8, !tbaa !65
  %338 = getelementptr inbounds ptr, ptr %337, i64 38
  %339 = load ptr, ptr %338, align 8
  %340 = invoke noundef ptr %339(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE)
          to label %341 unwind label %363

341:                                              ; preds = %336
  %342 = icmp eq ptr %340, null
  br i1 %342, label %427, label %343

343:                                              ; preds = %341
  %344 = load ptr, ptr %340, align 8, !tbaa !65
  %345 = getelementptr inbounds ptr, ptr %344, i64 50
  %346 = load ptr, ptr %345, align 8
  %347 = invoke noundef ptr %346(ptr noundef nonnull align 8 dereferenceable(130) %340)
          to label %348 unwind label %363

348:                                              ; preds = %343
  %349 = load ptr, ptr %254, align 8, !tbaa !65
  %350 = getelementptr inbounds ptr, ptr %349, i64 50
  %351 = load ptr, ptr %350, align 8
  %352 = invoke noundef ptr %351(ptr noundef nonnull align 8 dereferenceable(130) %254)
          to label %353 unwind label %363

353:                                              ; preds = %348
  %354 = icmp eq ptr %347, null
  br i1 %354, label %427, label %355

355:                                              ; preds = %353, %382
  %356 = phi i64 [ %383, %382 ], [ 0, %353 ]
  %357 = load ptr, ptr %347, align 8, !tbaa !65
  %358 = getelementptr inbounds ptr, ptr %357, i64 5
  %359 = load ptr, ptr %358, align 8
  %360 = invoke noundef i64 %359(ptr noundef nonnull align 8 dereferenceable(8) %347)
          to label %361 unwind label %365

361:                                              ; preds = %355
  %362 = icmp ult i64 %356, %360
  br i1 %362, label %367, label %427

363:                                              ; preds = %348, %343, %336
  %364 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  br label %384

365:                                              ; preds = %377, %372, %367, %355
  %366 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712DOMExceptionE
  br label %384

367:                                              ; preds = %361
  %368 = load ptr, ptr %347, align 8, !tbaa !65
  %369 = getelementptr inbounds ptr, ptr %368, i64 3
  %370 = load ptr, ptr %369, align 8
  %371 = invoke noundef ptr %370(ptr noundef nonnull align 8 dereferenceable(8) %347, i64 noundef %356)
          to label %372 unwind label %365

372:                                              ; preds = %367
  %373 = load ptr, ptr %0, align 8, !tbaa !65
  %374 = getelementptr inbounds ptr, ptr %373, i64 92
  %375 = load ptr, ptr %374, align 8
  %376 = invoke noundef ptr %375(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %371, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %377 unwind label %365

377:                                              ; preds = %372
  %378 = load ptr, ptr %352, align 8, !tbaa !65
  %379 = getelementptr inbounds ptr, ptr %378, i64 2
  %380 = load ptr, ptr %379, align 8
  %381 = invoke noundef ptr %380(ptr noundef nonnull align 8 dereferenceable(8) %352, ptr noundef %376)
          to label %382 unwind label %365

382:                                              ; preds = %377
  %383 = add nuw i64 %356, 1
  br label %355, !llvm.loop !212

384:                                              ; preds = %365, %363
  %385 = phi { ptr, i32 } [ %366, %365 ], [ %364, %363 ]
  %386 = extractvalue { ptr, i32 } %385, 1
  %387 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE) #23
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %472

389:                                              ; preds = %384
  %390 = extractvalue { ptr, i32 } %385, 0
  %391 = tail call ptr @__cxa_begin_catch(ptr %390) #23
  tail call void @__cxa_end_catch()
  br label %427

392:                                              ; preds = %4
  %393 = load ptr, ptr %0, align 8, !tbaa !65
  %394 = getelementptr inbounds ptr, ptr %393, i64 4
  %395 = load ptr, ptr %394, align 8
  %396 = tail call noundef ptr %395(ptr noundef nonnull align 8 dereferenceable(293) %0)
  br label %427

397:                                              ; preds = %4
  %398 = load ptr, ptr %1, align 8, !tbaa !65
  %399 = getelementptr inbounds ptr, ptr %398, i64 2
  %400 = load ptr, ptr %399, align 8
  %401 = tail call noundef ptr %400(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %402 = load ptr, ptr %0, align 8, !tbaa !65
  %403 = getelementptr inbounds ptr, ptr %402, i64 39
  %404 = load ptr, ptr %403, align 8
  %405 = tail call noundef ptr %404(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %401)
  %406 = load ptr, ptr %1, align 8, !tbaa !65
  %407 = getelementptr inbounds ptr, ptr %406, i64 40
  %408 = load ptr, ptr %407, align 8
  %409 = tail call noundef ptr %408(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %410 = load ptr, ptr %405, align 8, !tbaa !65
  %411 = getelementptr inbounds ptr, ptr %410, i64 42
  %412 = load ptr, ptr %411, align 8
  tail call void %412(ptr noundef nonnull align 8 dereferenceable(56) %405, ptr noundef %409)
  %413 = load ptr, ptr %1, align 8, !tbaa !65
  %414 = getelementptr inbounds ptr, ptr %413, i64 41
  %415 = load ptr, ptr %414, align 8
  %416 = tail call noundef ptr %415(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %417 = load ptr, ptr %405, align 8, !tbaa !65
  %418 = getelementptr inbounds ptr, ptr %417, i64 43
  %419 = load ptr, ptr %418, align 8
  tail call void %419(ptr noundef nonnull align 8 dereferenceable(56) %405, ptr noundef %416)
  br label %427

420:                                              ; preds = %4
  %421 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %422 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %423 = load ptr, ptr %422, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %421, i16 noundef signext 9, ptr noundef null, ptr noundef %423)
          to label %424 unwind label %425

424:                                              ; preds = %420
  tail call void @__cxa_throw(ptr nonnull %421, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

425:                                              ; preds = %420
  %426 = landingpad { ptr, i32 }
          cleanup
  br label %469

427:                                              ; preds = %361, %113, %45, %38, %389, %353, %341, %127, %135, %397, %392, %221, %208, %177, %165, %156, %147
  %428 = phi ptr [ %405, %397 ], [ %396, %392 ], [ %229, %221 ], [ %220, %208 ], [ %185, %177 ], [ %173, %165 ], [ %164, %156 ], [ %155, %147 ], [ %134, %127 ], [ %146, %135 ], [ %254, %341 ], [ %254, %353 ], [ %254, %389 ], [ %39, %38 ], [ %39, %45 ], [ %39, %113 ], [ %254, %361 ]
  %429 = phi i1 [ %2, %397 ], [ %2, %392 ], [ %2, %221 ], [ %2, %208 ], [ %2, %177 ], [ %2, %165 ], [ %2, %156 ], [ %2, %147 ], [ true, %127 ], [ true, %135 ], [ %2, %341 ], [ %2, %353 ], [ %2, %389 ], [ %2, %38 ], [ %2, %45 ], [ %2, %113 ], [ %2, %361 ]
  br i1 %429, label %430, label %451

430:                                              ; preds = %427
  %431 = load ptr, ptr %1, align 8, !tbaa !65
  %432 = getelementptr inbounds ptr, ptr %431, i64 7
  %433 = load ptr, ptr %432, align 8
  %434 = tail call noundef ptr %433(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %435 = icmp eq ptr %434, null
  br i1 %435, label %451, label %436

436:                                              ; preds = %430, %436
  %437 = phi ptr [ %449, %436 ], [ %434, %430 ]
  %438 = load ptr, ptr %0, align 8, !tbaa !65
  %439 = getelementptr inbounds ptr, ptr %438, i64 92
  %440 = load ptr, ptr %439, align 8
  %441 = tail call noundef ptr %440(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %437, i1 noundef zeroext true, i1 noundef zeroext false)
  %442 = load ptr, ptr %428, align 8, !tbaa !65
  %443 = getelementptr inbounds ptr, ptr %442, i64 17
  %444 = load ptr, ptr %443, align 8
  %445 = tail call noundef ptr %444(ptr noundef nonnull align 8 dereferenceable(8) %428, ptr noundef %441)
  %446 = load ptr, ptr %437, align 8, !tbaa !65
  %447 = getelementptr inbounds ptr, ptr %446, i64 10
  %448 = load ptr, ptr %447, align 8
  %449 = tail call noundef ptr %448(ptr noundef nonnull align 8 dereferenceable(8) %437)
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %436, !llvm.loop !213

451:                                              ; preds = %436, %430, %427
  %452 = load ptr, ptr %428, align 8, !tbaa !65
  %453 = getelementptr inbounds ptr, ptr %452, i64 4
  %454 = load ptr, ptr %453, align 8
  %455 = tail call noundef signext i16 %454(ptr noundef nonnull align 8 dereferenceable(8) %428)
  %456 = icmp eq i16 %455, 5
  br i1 %456, label %463, label %457

457:                                              ; preds = %451
  %458 = load ptr, ptr %428, align 8, !tbaa !65
  %459 = getelementptr inbounds ptr, ptr %458, i64 4
  %460 = load ptr, ptr %459, align 8
  %461 = tail call noundef signext i16 %460(ptr noundef nonnull align 8 dereferenceable(8) %428)
  %462 = icmp eq i16 %461, 6
  br i1 %462, label %463, label %465

463:                                              ; preds = %457, %451
  %464 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %428, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %464, i1 noundef zeroext true, i1 noundef zeroext true)
  store i8 %6, ptr %5, align 4, !tbaa !89
  br label %465

465:                                              ; preds = %463, %457
  br i1 %3, label %468, label %466

466:                                              ; preds = %465
  %467 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %467, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %428)
  br label %468

468:                                              ; preds = %466, %465
  ret ptr %428

469:                                              ; preds = %236, %425
  %470 = phi ptr [ %421, %425 ], [ %232, %236 ]
  %471 = phi { ptr, i32 } [ %426, %425 ], [ %237, %236 ]
  tail call void @__cxa_free_exception(ptr %470) #23
  br label %472

472:                                              ; preds = %469, %384
  %473 = phi { ptr, i32 } [ %385, %384 ], [ %471, %469 ]
  resume { ptr, i32 } %473
}

declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPNS_11DOMNodeImplEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %6 = alloca i32, align 4
  %7 = alloca %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %10, align 8, !tbaa !215
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11
  %16 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %2)
  br label %17

17:                                               ; preds = %12, %14
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %24)
  %26 = load ptr, ptr %23, align 8, !tbaa !69
  %27 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %26)
          to label %28 unwind label %52

28:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %29 unwind label %54

29:                                               ; preds = %28
  %30 = load ptr, ptr %23, align 8, !tbaa !69
  store ptr %30, ptr %25, align 8, !tbaa !118
  %31 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %25, i64 0, i32 1
  store i8 1, ptr %31, align 8, !tbaa !217
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %25, i64 0, i32 2
  store ptr null, ptr %32, align 8, !tbaa !120
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %25, i64 0, i32 3
  store i32 109, ptr %33, align 8, !tbaa !218
  %34 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %25, i64 0, i32 4
  store i32 0, ptr %34, align 4, !tbaa !219
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %25, i64 0, i32 5
  store ptr null, ptr %35, align 8, !tbaa !121
  %36 = load ptr, ptr %30, align 8, !tbaa !65
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 872)
          to label %40 unwind label %52

40:                                               ; preds = %29
  store ptr %39, ptr %32, align 8, !tbaa !120
  %41 = load i32, ptr %33, align 8, !tbaa !218
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = zext i32 %41 to i64
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %49, %45 ]
  %47 = load ptr, ptr %32, align 8, !tbaa !120
  %48 = getelementptr inbounds ptr, ptr %47, i64 %46
  store ptr null, ptr %48, align 8, !tbaa !92
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, %44
  br i1 %50, label %51, label %45, !llvm.loop !220

51:                                               ; preds = %45, %40
  store ptr %27, ptr %35, align 8, !tbaa !121
  store ptr %25, ptr %19, align 8, !tbaa !103
  br label %69

52:                                               ; preds = %29, %22
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %56

54:                                               ; preds = %28
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #23
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi { ptr, i32 } [ %53, %52 ], [ %55, %54 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #23
  br label %126

58:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %59 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef %1, i32 noundef %18, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !221
  br label %63

63:                                               ; preds = %58, %61
  %64 = phi ptr [ %62, %61 ], [ null, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %64, align 8, !tbaa !223
  %68 = load ptr, ptr %19, align 8, !tbaa !103
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %68, ptr noundef %1, i32 noundef %18)
  br label %69

69:                                               ; preds = %63, %66, %51
  %70 = phi ptr [ null, %51 ], [ %67, %66 ], [ null, %63 ]
  %71 = icmp eq ptr %3, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %19, align 8, !tbaa !103
  %74 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %75)
  store ptr %3, ptr %76, align 8, !tbaa !223
  %77 = getelementptr inbounds %"class.xercesc_2_7::KeyRefPair", ptr %76, i64 0, i32 1
  store ptr %4, ptr %77, align 8, !tbaa !225
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3putEPviPS3_(ptr noundef nonnull align 8 dereferenceable(40) %73, ptr noundef %1, i32 noundef %18, ptr noundef nonnull %76)
  br label %125

78:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #23
  %79 = load ptr, ptr %19, align 8, !tbaa !103
  %80 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %81 = load ptr, ptr %80, align 8, !tbaa !69
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %79, i1 noundef zeroext false, ptr noundef %81)
  %82 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 6
  store ptr %1, ptr %82, align 8, !tbaa !226
  %83 = load ptr, ptr %7, align 8, !tbaa !65
  %84 = getelementptr inbounds ptr, ptr %83, i64 4
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %86 unwind label %104

86:                                               ; preds = %78
  %87 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !229
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %115

90:                                               ; preds = %86
  %91 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !230
  %93 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !231
  %95 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !218
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %90
  %99 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %1, i64 0, i32 1
  %100 = load i16, ptr %99, align 8, !tbaa !208
  %101 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8USERDATAE, align 2, !tbaa !125
  %102 = xor i16 %101, -1
  %103 = and i16 %100, %102
  store i16 %103, ptr %99, align 8, !tbaa !208
  br label %115

104:                                              ; preds = %78
  %105 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !65
  %106 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 1
  %107 = load i8, ptr %106, align 8, !tbaa !232, !range !128, !noundef !129
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !231
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %111) #23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %111) #23
  br label %114

114:                                              ; preds = %104, %109, %113
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #23
  br label %126

115:                                              ; preds = %86, %90, %98
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !65
  %116 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 1
  %117 = load i8, ptr %116, align 8, !tbaa !232, !range !128, !noundef !129
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !231
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %121) #23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %121) #23
  br label %124

124:                                              ; preds = %115, %119, %123
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #23
  br label %125

125:                                              ; preds = %124, %72
  ret ptr %70

126:                                              ; preds = %114, %56
  %127 = phi { ptr, i32 } [ %105, %114 ], [ %57, %56 ]
  resume { ptr, i32 } %127
}

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !218
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !92
  %9 = load ptr, ptr %5, align 8, !tbaa !65
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8)
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %3, %55
  %19 = phi ptr [ %57, %55 ], [ %16, %3 ]
  %20 = phi ptr [ %19, %55 ], [ null, %3 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !121
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !233
  %24 = load ptr, ptr %21, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23)
  br i1 %27, label %28, label %55

28:                                               ; preds = %18
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !234
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = icmp eq ptr %20, null
  %34 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !235
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 %14
  %39 = select i1 %33, ptr %38, ptr %36
  store ptr %35, ptr %39, align 8, !tbaa !92
  %40 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !217, !range !128, !noundef !129
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %19, align 8, !tbaa !221
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %44) #23
  br label %47

47:                                               ; preds = %43, %46, %32
  %48 = load ptr, ptr %0, align 8, !tbaa !118
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull %19)
  %52 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !219
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 4, !tbaa !219
  ret void

55:                                               ; preds = %28, %18
  %56 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %19, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !92
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %18, !llvm.loop !236

59:                                               ; preds = %55, %3
  %60 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %61 = load ptr, ptr %0, align 8, !tbaa !118
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull @.str.3, i32 noundef 178, i32 noundef 50, ptr noundef %61)
          to label %62 unwind label %63

62:                                               ; preds = %59
  tail call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

63:                                               ; preds = %59
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %60) #23
  resume { ptr, i32 } %64
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE3putEPviPS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !218
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !219
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !217, !range !128, !noundef !129
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !221
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #23
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !221
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !233
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !234
  br label %44

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !118
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32)
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  %35 = load i32, ptr %5, align 4, !tbaa !181
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  store ptr %3, ptr %32, align 8, !tbaa !221
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %32, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !235
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !233
  %41 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %32, i64 0, i32 3
  store i32 %2, ptr %41, align 8, !tbaa !234
  store ptr %32, ptr %37, align 8, !tbaa !92
  %42 = load i32, ptr %9, align 4, !tbaa !219
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !219
  br label %44

44:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !232
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !229
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !230
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !231
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !237
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !226
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %15 = load ptr, ptr %10, align 8, !tbaa !237
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.3, i32 noundef 522, i32 noundef 15, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #23
  resume { ptr, i32 } %18

19:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !230
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !231
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !232, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #23
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKNS_11DOMNodeImplEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !96 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !214
  %11 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %2)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !215
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %20 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %1, i32 noundef %16, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !221
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %23, %22 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !223
  br label %29

29:                                               ; preds = %27, %24, %15
  %30 = phi ptr [ undef, %15 ], [ %28, %27 ], [ undef, %24 ]
  %31 = phi i1 [ true, %15 ], [ %26, %27 ], [ %26, %24 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %3
  br label %33

33:                                               ; preds = %29, %32
  %34 = phi ptr [ %30, %29 ], [ null, %32 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %6 = alloca i32, align 4
  %7 = alloca %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = icmp eq ptr %11, null
  br i1 %12, label %112, label %13, !prof !68

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #23
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEC2EPNS_19RefHash2KeysTableOfIS3_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef %15)
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !226
  %17 = load ptr, ptr %7, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %20 unwind label %74

20:                                               ; preds = %13
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 3
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 4
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11, i32 5
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11, i32 2
  br label %26

26:                                               ; preds = %20, %84
  %27 = load ptr, ptr %21, align 8, !tbaa !229
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, ptr %22, align 8, !tbaa !230
  %31 = load ptr, ptr %23, align 8, !tbaa !231
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !218
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %87, label %35

35:                                               ; preds = %29, %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  invoke void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %36 unwind label %76

36:                                               ; preds = %35
  %37 = load ptr, ptr %10, align 8, !tbaa !103
  %38 = load i32, ptr %9, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %39 = invoke noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef %1, i32 noundef %38, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %40 unwind label %78

40:                                               ; preds = %36
  %41 = icmp eq ptr %39, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %39, align 8, !tbaa !221
  br label %44

44:                                               ; preds = %40, %42
  %45 = phi ptr [ %43, %42 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  %46 = getelementptr inbounds %"class.xercesc_2_7::KeyRefPair", ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !225
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %9, align 4, !tbaa !181
  %51 = icmp ne i32 %50, 0
  %52 = load i32, ptr %24, align 4
  %53 = icmp ugt i32 %52, %50
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = call ptr @__cxa_allocate_exception(i64 48) #23
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 11, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !238
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 89, ptr noundef %58)
          to label %59 unwind label %61

59:                                               ; preds = %55
  invoke void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
          to label %60 unwind label %82

60:                                               ; preds = %59
  unreachable

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %56) #23
  br label %85

63:                                               ; preds = %49
  %64 = load ptr, ptr %45, align 8, !tbaa !223
  %65 = load ptr, ptr %25, align 8, !tbaa !239
  %66 = zext i32 %50 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  %69 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !240
  %71 = load ptr, ptr %47, align 8, !tbaa !65
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef %2, ptr noundef %70, ptr noundef %64, ptr noundef %3, ptr noundef %4)
          to label %84 unwind label %80

74:                                               ; preds = %13, %90
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %101

76:                                               ; preds = %35
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %85

78:                                               ; preds = %36
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %85

80:                                               ; preds = %63
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %85

82:                                               ; preds = %59
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %85

84:                                               ; preds = %63, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  br label %26, !llvm.loop !241

85:                                               ; preds = %80, %82, %61, %78, %76
  %86 = phi { ptr, i32 } [ %77, %76 ], [ %79, %78 ], [ %62, %61 ], [ %81, %80 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  br label %101

87:                                               ; preds = %29
  %88 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 4
  %89 = icmp eq i32 %2, 3
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load ptr, ptr %10, align 8, !tbaa !103
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(40) %91, ptr noundef %1)
          to label %92 unwind label %74

92:                                               ; preds = %90, %87
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !65
  %93 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 1
  %94 = load i8, ptr %93, align 8, !tbaa !232, !range !128, !noundef !129
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %88, align 8, !tbaa !231
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %97) #23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %97) #23
  br label %100

100:                                              ; preds = %92, %96, %99
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #23
  br label %112

101:                                              ; preds = %85, %74
  %102 = phi { ptr, i32 } [ %86, %85 ], [ %75, %74 ]
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !65
  %103 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 1
  %104 = load i8, ptr %103, align 8, !tbaa !232, !range !128, !noundef !129
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %7, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !231
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %108) #23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %108) #23
  br label %111

111:                                              ; preds = %101, %106, %110
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #23
  resume { ptr, i32 } %102

112:                                              ; preds = %100, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14nextElementKeyERPvRi(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #23
  resume { ptr, i32 } %14

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !229
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %18 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !233
  store ptr %19, ptr %1, align 8, !tbaa !92
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !234
  store i32 %21, ptr %2, align 4, !tbaa !181
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !92
  %8 = load ptr, ptr %4, align 8, !tbaa !65
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  br label %20

20:                                               ; preds = %17, %56
  %21 = phi ptr [ %15, %17 ], [ %58, %56 ]
  %22 = phi ptr [ null, %17 ], [ %57, %56 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !121
  %24 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !233
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %1, ptr noundef %25)
  br i1 %29, label %30, label %53

30:                                               ; preds = %20
  %31 = icmp eq ptr %22, null
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !235
  %34 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds ptr, ptr %35, i64 %13
  %37 = select i1 %31, ptr %36, ptr %34
  store ptr %33, ptr %37, align 8, !tbaa !92
  %38 = load i8, ptr %18, align 8, !tbaa !217, !range !128, !noundef !129
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load ptr, ptr %21, align 8, !tbaa !221
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %41) #23
  br label %44

44:                                               ; preds = %40, %43, %30
  %45 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !235
  %47 = load ptr, ptr %0, align 8, !tbaa !118
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull %21)
  %51 = load i32, ptr %19, align 4, !tbaa !219
  %52 = add i32 %51, -1
  store i32 %52, ptr %19, align 4, !tbaa !219
  br label %56

53:                                               ; preds = %20
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %21, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !235
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi ptr [ %22, %44 ], [ %21, %53 ]
  %58 = phi ptr [ %46, %44 ], [ %55, %53 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %20, !llvm.loop !242

60:                                               ; preds = %56, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15transferElementEPKvPv(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, ptr noundef %2)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %1, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !208
  %10 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8USERDATAE, align 2, !tbaa !125
  %11 = xor i16 %10, -1
  %12 = and i16 %9, %11
  store i16 %12, ptr %8, align 8, !tbaa !208
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %2, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !208
  %15 = or i16 %14, %10
  store i16 %15, ptr %13, align 8, !tbaa !208
  br label %16

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE15transferElementEPKvPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !218
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !92
  %10 = load ptr, ptr %6, align 8, !tbaa !65
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %85, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %81
  %22 = phi ptr [ %17, %19 ], [ %83, %81 ]
  %23 = phi ptr [ null, %19 ], [ %82, %81 ]
  %24 = load ptr, ptr %5, align 8, !tbaa !121
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !233
  %27 = load ptr, ptr %24, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %1, ptr noundef %26)
  br i1 %30, label %31, label %78

31:                                               ; preds = %21
  %32 = icmp eq ptr %23, null
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !235
  %35 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %23, i64 0, i32 1
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds ptr, ptr %36, i64 %15
  %38 = select i1 %32, ptr %37, ptr %35
  store ptr %34, ptr %38, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !234
  %41 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %2, i32 noundef %40, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = load i8, ptr %20, align 8, !tbaa !217, !range !128, !noundef !129
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %41, align 8, !tbaa !221
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #23
  br label %50

50:                                               ; preds = %46, %49, %43
  %51 = load ptr, ptr %22, align 8, !tbaa !221
  store ptr %51, ptr %41, align 8, !tbaa !221
  %52 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %41, i64 0, i32 2
  store ptr %2, ptr %52, align 8, !tbaa !233
  %53 = load i32, ptr %39, align 8, !tbaa !234
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %41, i64 0, i32 3
  store i32 %53, ptr %54, align 8, !tbaa !234
  br label %71

55:                                               ; preds = %31
  %56 = load ptr, ptr %0, align 8, !tbaa !118
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 32)
  %61 = load i32, ptr %39, align 8, !tbaa !234
  %62 = load ptr, ptr %22, align 8, !tbaa !221
  %63 = load ptr, ptr %13, align 8, !tbaa !120
  %64 = load i32, ptr %4, align 4, !tbaa !181
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  store ptr %62, ptr %60, align 8, !tbaa !221
  %68 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !235
  %69 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %2, ptr %69, align 8, !tbaa !233
  %70 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %60, i64 0, i32 3
  store i32 %61, ptr %70, align 8, !tbaa !234
  store ptr %60, ptr %66, align 8, !tbaa !92
  br label %71

71:                                               ; preds = %55, %50
  %72 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !235
  %74 = load ptr, ptr %0, align 8, !tbaa !118
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  call void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  br label %81

78:                                               ; preds = %21
  %79 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %22, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !235
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi ptr [ %23, %71 ], [ %22, %78 ]
  %83 = phi ptr [ %73, %71 ], [ %80, %78 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %21, !llvm.loop !243

85:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl10renameNodeEPNS_7DOMNodeEPKtS4_(ptr noundef nonnull readonly align 8 dereferenceable(293) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = load ptr, ptr %1, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq ptr %8, %0
  %10 = load ptr, ptr %1, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %9, label %27, label %14

14:                                               ; preds = %4
  %15 = icmp eq i16 %13, 9
  %16 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  br i1 %15, label %19, label %23

19:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 9, ptr noundef null, ptr noundef %18)
          to label %20 unwind label %21

20:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %47

23:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 4, ptr noundef null, ptr noundef %18)
          to label %24 unwind label %25

24:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

25:                                               ; preds = %23
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %47

27:                                               ; preds = %4
  switch i16 %13, label %38 [
    i16 1, label %28
    i16 2, label %33
  ]

28:                                               ; preds = %27
  %29 = load ptr, ptr %1, align 8, !tbaa !65
  %30 = getelementptr inbounds ptr, ptr %29, i64 64
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2, ptr noundef %3)
  br label %45

33:                                               ; preds = %27
  %34 = load ptr, ptr %1, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 48
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef %3)
  br label %45

38:                                               ; preds = %27
  %39 = tail call ptr @__cxa_allocate_exception(i64 40) #23
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %39, i16 noundef signext 9, ptr noundef null, ptr noundef %41)
          to label %42 unwind label %43

42:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #24
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %47

45:                                               ; preds = %33, %28
  %46 = phi ptr [ %37, %33 ], [ %32, %28 ]
  ret ptr %46

47:                                               ; preds = %43, %25, %21
  %48 = phi ptr [ %39, %43 ], [ %16, %25 ], [ %16, %21 ]
  %49 = phi { ptr, i32 } [ %44, %43 ], [ %26, %25 ], [ %22, %21 ]
  tail call void @__cxa_free_exception(ptr %48) #23
  resume { ptr, i32 } %49
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(293) %0) unnamed_addr #1 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !68

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %7)
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12, !prof !68

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %10, i64 0, i32 1, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !208
  %15 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !125
  %16 = or i16 %15, %14
  store i16 %16, ptr %13, align 8, !tbaa !208
  %17 = load ptr, ptr %10, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 39
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %20

20:                                               ; preds = %8, %12
  %21 = load ptr, ptr %0, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(32) %0) #23, !prof !244
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !96 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2, %33
  %9 = phi ptr [ %37, %33 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 11
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %13, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i64 %18(ptr noundef nonnull align 8 dereferenceable(8) %13)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %21
  %22 = phi i64 [ %27, %21 ], [ 0, %15 ]
  %23 = load ptr, ptr %13, align 8, !tbaa !65
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %22)
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %26)
  %27 = add nuw i64 %22, 1
  %28 = load ptr, ptr %13, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i64 %30(ptr noundef nonnull align 8 dereferenceable(8) %13)
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %21, label %33, !llvm.loop !245

33:                                               ; preds = %21, %15, %8
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl24releaseDocNotifyUserDataEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(293) %0, ptr noundef nonnull %9)
  %34 = load ptr, ptr %9, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %8, !llvm.loop !246

39:                                               ; preds = %33, %2
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %40, i32 noundef 3, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_715DOMDocumentImpl7releaseEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !96 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(293) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %9)
  %11 = load ptr, ptr %8, align 8, !tbaa !69
  store i32 15, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %10, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %10, i64 0, i32 2
  store ptr %11, ptr %13, align 8, !tbaa !105
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 120)
          to label %18 unwind label %30

18:                                               ; preds = %7
  store ptr %17, ptr %12, align 8, !tbaa !107
  %19 = load i32, ptr %10, align 8, !tbaa !122
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = zext i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %27, %23 ]
  %25 = load ptr, ptr %12, align 8, !tbaa !107
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  store ptr null, ptr %26, align 8, !tbaa !92
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %22
  br i1 %28, label %29, label %23, !llvm.loop !247

29:                                               ; preds = %23, %18
  store ptr %10, ptr %4, align 8, !tbaa !104
  br label %32

30:                                               ; preds = %7
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %10, ptr noundef %9) #23
  br label %76

32:                                               ; preds = %29, %3
  %33 = load ptr, ptr %4, align 8, !tbaa !104
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %33, i32 noundef %2)
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  %40 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %39)
  %41 = load ptr, ptr %38, align 8, !tbaa !69
  %42 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %40, i64 0, i32 1
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %42, align 8, !tbaa !65
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %40, i64 0, i32 1, i32 0, i32 1
  store i8 0, ptr %43, align 8, !tbaa !248
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %40, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %44, align 4, !tbaa !143
  %45 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %40, i64 0, i32 1, i32 0, i32 3
  store i32 15, ptr %45, align 8, !tbaa !249
  %46 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %40, i64 0, i32 1, i32 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !250
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %40, i64 0, i32 1, i32 0, i32 5
  store ptr %41, ptr %47, align 8, !tbaa !251
  %48 = load ptr, ptr %41, align 8, !tbaa !65
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef 120)
          to label %52 unwind label %62

52:                                               ; preds = %37
  store ptr %51, ptr %46, align 8, !tbaa !250
  br label %53

53:                                               ; preds = %52, %53
  %54 = phi i64 [ 0, %52 ], [ %57, %53 ]
  %55 = load ptr, ptr %46, align 8, !tbaa !250
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  store ptr null, ptr %56, align 8, !tbaa !92
  %57 = add nuw nsw i64 %54, 1
  %58 = icmp eq i64 %57, 15
  br i1 %58, label %59, label %53, !llvm.loop !252

59:                                               ; preds = %53
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %42, align 8, !tbaa !65
  %60 = load ptr, ptr %4, align 8, !tbaa !104
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %60, i32 noundef %2)
  store ptr %40, ptr %61, align 8, !tbaa !92
  br label %64

62:                                               ; preds = %37
  %63 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %39) #23
  br label %76

64:                                               ; preds = %59, %32
  %65 = load ptr, ptr %4, align 8, !tbaa !104
  %66 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %65, i32 noundef %2)
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  %68 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %67, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef 1)
  %69 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %67, i64 0, i32 1, i32 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !250
  %71 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %67, i64 0, i32 1, i32 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !143
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %70, i64 %73
  store ptr %1, ptr %74, align 8, !tbaa !92
  %75 = add i32 %72, 1
  store i32 %75, ptr %71, align 4, !tbaa !143
  ret void

76:                                               ; preds = %62, %30
  %77 = phi { ptr, i32 } [ %63, %62 ], [ %31, %30 ]
  resume { ptr, i32 } %77
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = load i32, ptr %0, align 8, !tbaa !122
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.4, i32 noundef 86, i32 noundef 6, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #23
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefArrayOf", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DOMDocumentImpl13releaseBufferEPNS_9DOMBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %8)
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1, i32 0, i32 1
  store i8 0, ptr %12, align 8, !tbaa !253
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %13, align 4, !tbaa !255
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1, i32 0, i32 3
  store i32 15, ptr %14, align 8, !tbaa !256
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1, i32 0, i32 4
  store ptr null, ptr %15, align 8, !tbaa !257
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1, i32 0, i32 5
  store ptr %10, ptr %16, align 8, !tbaa !258
  %17 = load ptr, ptr %10, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 120)
          to label %21 unwind label %29

21:                                               ; preds = %6
  store ptr %20, ptr %15, align 8, !tbaa !257
  br label %22

22:                                               ; preds = %21, %22
  %23 = phi i64 [ 0, %21 ], [ %26, %22 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !257
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr null, ptr %25, align 8, !tbaa !92
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, 15
  br i1 %27, label %28, label %22, !llvm.loop !259

28:                                               ; preds = %22
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !65
  store ptr %9, ptr %3, align 8, !tbaa !108
  br label %31

29:                                               ; preds = %6
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #23
  resume { ptr, i32 } %30

31:                                               ; preds = %28, %2
  %32 = load ptr, ptr %3, align 8, !tbaa !108
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %32, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %32, i64 0, i32 1, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !257
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %32, i64 0, i32 1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !255
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %35, i64 %38
  store ptr %1, ptr %39, align 8, !tbaa !92
  %40 = add i32 %37, 1
  store i32 %40, ptr %36, align 4, !tbaa !255
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl9popBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(293) %0) local_unnamed_addr #11 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !164

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %11

11:                                               ; preds = %1, %5, %9
  %12 = phi ptr [ %10, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9DOMBufferEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !255
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !258
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.5, i32 noundef 77, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #23
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %14 = add nsw i32 %3, -1
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %14)
  ret ptr %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr nocapture noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %50, !prof !140

7:                                                ; preds = %3
  %8 = add i64 %1, 7
  %9 = and i64 %8, -8
  %10 = icmp ugt i64 %9, 4096
  br i1 %10, label %11, label %29, !prof !192

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = add i64 %9, 8
  %15 = load ptr, ptr %13, align 8, !tbaa !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %14)
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr %20, align 8, !tbaa !92
  store ptr %23, ptr %18, align 8, !tbaa !92
  %24 = load ptr, ptr %19, align 8, !tbaa !91
  store ptr %18, ptr %24, align 8, !tbaa !92
  br label %27

25:                                               ; preds = %11
  store ptr %18, ptr %19, align 8, !tbaa !91
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds i8, ptr %18, i64 8
  br label %62

29:                                               ; preds = %7
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 15
  %31 = load i64, ptr %30, align 8, !tbaa !94
  %32 = icmp ugt i64 %9, %31
  br i1 %32, label %33, label %44, !prof !141

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 65536), !prof !142
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  store ptr %41, ptr %39, align 8, !tbaa !92
  store ptr %39, ptr %40, align 8, !tbaa !91
  %42 = getelementptr inbounds i8, ptr %39, i64 8
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  store ptr %42, ptr %43, align 8, !tbaa !93
  store i64 65528, ptr %30, align 8, !tbaa !94
  br label %44

44:                                               ; preds = %33, %29
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !93
  %47 = getelementptr inbounds i8, ptr %46, i64 %9
  store ptr %47, ptr %45, align 8, !tbaa !93
  %48 = load i64, ptr %30, align 8, !tbaa !94
  %49 = sub i64 %48, %9
  store i64 %49, ptr %30, align 8, !tbaa !94
  br label %62

50:                                               ; preds = %3
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEixEj(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %2)
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %52, i64 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !143
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %0, i64 noundef %1)
  br label %62

60:                                               ; preds = %54
  %61 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %52)
  br label %62

62:                                               ; preds = %44, %27, %58, %60
  %63 = phi ptr [ %59, %58 ], [ %61, %60 ], [ %28, %27 ], [ %46, %44 ]
  ret ptr %63
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_7DOMNodeEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !143
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.5, i32 noundef 77, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #23
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.4", ptr %0, i64 0, i32 1
  %14 = add nsw i32 %3, -1
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %14)
  ret ptr %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_711DOMDocument18createDocumentTypeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !96 {
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_711DOMDocumentD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_711DOMDocumentD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_711DOMDocumentD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_711DOMDocumentD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_711DOMDocumentD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_711DOMDocumentD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMDocumentRangeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMDocumentRangeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMXPathEvaluatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMXPathEvaluatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720DOMDocumentTraversalD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720DOMDocumentTraversalD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 !prof !260 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !263
  %7 = load ptr, ptr %0, align 8, !tbaa !264
  %8 = load ptr, ptr %4, align 8, !tbaa !65
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !265
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !266
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !267

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !261
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !268
  %22 = load ptr, ptr %19, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !270
  br i1 %25, label %30, label %26, !prof !271

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !272, !llvm.loop !273

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !274

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !275
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !65
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !196
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  br label %10

8:                                                ; preds = %43, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 6
  store i64 0, ptr %9, align 8, !tbaa !198
  ret void

10:                                               ; preds = %5, %43
  %11 = phi i64 [ 0, %5 ], [ %46, %43 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !116
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %10, %29
  %17 = phi ptr [ %19, %29 ], [ %14, %10 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !279
  %20 = load i8, ptr %0, align 8, !tbaa !195, !range !128, !noundef !129
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !155
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(58) %23) #23
  br label %29

29:                                               ; preds = %22, %25, %16
  %30 = load ptr, ptr %7, align 8, !tbaa !113
  %31 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %17, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !199
  %33 = load ptr, ptr %30, align 8, !tbaa !65
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
  %36 = load ptr, ptr %7, align 8, !tbaa !113
  %37 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %17, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !200
  %39 = load ptr, ptr %36, align 8, !tbaa !65
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38)
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #23
  %42 = icmp eq ptr %19, null
  br i1 %42, label %43, label %16, !llvm.loop !280

43:                                               ; preds = %29, %10
  %44 = load ptr, ptr %6, align 8, !tbaa !116
  %45 = getelementptr inbounds ptr, ptr %44, i64 %11
  store ptr null, ptr %45, align 8, !tbaa !92
  %46 = add nuw i64 %11, 1
  %47 = load i64, ptr %2, align 8, !tbaa !196
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %10, label %8, !llvm.loop !281
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !219
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !218
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 4, !tbaa !219
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !235
  %23 = load i8, ptr %11, align 8, !tbaa !217, !range !128, !noundef !129
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !221
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #23
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !118
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !282

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !120
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !92
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !218
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !283

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !248, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !143
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !250
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #23
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !143
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !284

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !251
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !250
  %31 = load ptr, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !143
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !251
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !248, !range !128, !noundef !129
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !250
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #23
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !250
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !143
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !143
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !248, !range !128, !noundef !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !250
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #23
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !250
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !92
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !143
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !285
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !143
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !251
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !248, !range !128, !noundef !129
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !250
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #23
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !143
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !250
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !92
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !286

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !250
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !92
  store i32 %30, ptr %3, align 4, !tbaa !143
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !143
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !143
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !248, !range !128, !noundef !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !250
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #23
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !248, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !143
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !250
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #23
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !143
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !287

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !251
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !250
  %31 = load ptr, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !65
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9DOMBufferEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !253, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !257
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !255
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !288

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !258
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !257
  %28 = load ptr, ptr %25, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
          to label %31 unwind label %32

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !255
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !258
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !253, !range !128, !noundef !129
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !257
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %23) #26
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !257
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !255
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !255
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !253, !range !128, !noundef !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !257
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !257
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !92
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !255
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !289
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !255
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !258
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !253, !range !128, !noundef !129
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !257
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %22) #26
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !255
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !257
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !92
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !290

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !257
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !92
  store i32 %27, ptr %3, align 4, !tbaa !255
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !255
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !255
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !253, !range !128, !noundef !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !257
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !253, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !257
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !255
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !291

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !258
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !257
  %28 = load ptr, ptr %25, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !145, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !147
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !149
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #23
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !147
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !292

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !149
  %31 = load ptr, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !147
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !145, !range !128, !noundef !129
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(57) %23) #23
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !149
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !147
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !145, !range !128, !noundef !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !149
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(57) %18) #23
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !149
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !92
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !147
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !293
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !145, !range !128, !noundef !129
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(57) %22) #23
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !147
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !149
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !92
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !294

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !149
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !92
  store i32 %30, ptr %3, align 4, !tbaa !147
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !147
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !145, !range !128, !noundef !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !149
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #23
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !145, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !147
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !149
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #23
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !147
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !295

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !149
  %31 = load ptr, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !148
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !147
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !92
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !149
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !92
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !296

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !150
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !149
  %52 = load ptr, ptr %49, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !149
  store i32 %12, ptr %6, align 8, !tbaa !148
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !174, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !176
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !178
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %15) #23
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !176
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !297

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load ptr, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #25
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !176
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #23
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !174, !range !128, !noundef !129
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(80) %23) #23
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !178
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !176
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !174, !range !128, !noundef !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !178
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(80) %18) #23
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !178
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !92
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !176
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !298
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !174, !range !128, !noundef !129
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(80) %22) #23
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !176
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !178
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !92
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !299

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !92
  store i32 %30, ptr %3, align 4, !tbaa !176
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !176
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !174, !range !128, !noundef !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %15) #23
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !174, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !176
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !178
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %15) #23
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !176
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !300

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load ptr, ptr %28, align 8, !tbaa !65
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !177
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !179
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !176
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !92
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !178
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !92
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !301

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !179
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !178
  %52 = load ptr, ptr %49, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !178
  store i32 %12, ptr %6, align 8, !tbaa !177
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE10initializeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 139, i32 noundef 48, ptr noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #23
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !196
  %16 = shl i64 %15, 3
  %17 = load ptr, ptr %13, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !116
  %22 = load i64, ptr %14, align 8, !tbaa !196
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %25, %11
  ret void

25:                                               ; preds = %11, %25
  %26 = phi i64 [ %29, %25 ], [ 0, %11 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !116
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  store ptr null, ptr %28, align 8, !tbaa !92
  %29 = add nuw i64 %26, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %24, label %25, !llvm.loop !302
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEE14findBucketElemEPKvPKtS6_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !196
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  %13 = load ptr, ptr %7, align 8, !tbaa !65
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %10, ptr noundef %12)
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %4, align 8, !tbaa !202
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListPool", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = getelementptr inbounds ptr, ptr %18, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = icmp eq ptr %20, null
  br i1 %21, label %100, label %22

22:                                               ; preds = %5
  %23 = icmp eq ptr %2, null
  %24 = icmp eq ptr %3, null
  br label %25

25:                                               ; preds = %22, %93
  %26 = phi ptr [ %20, %22 ], [ %95, %93 ]
  %27 = load ptr, ptr %6, align 8, !tbaa !117
  %28 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !201
  %30 = load ptr, ptr %27, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %1, ptr noundef %29)
  br i1 %33, label %34, label %93

34:                                               ; preds = %25
  %35 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !199
  %37 = icmp eq ptr %36, null
  %38 = or i1 %23, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i16, ptr %2, align 2, !tbaa !125
  %41 = load i16, ptr %36, align 2, !tbaa !125
  %42 = icmp eq i16 %40, %41
  br i1 %42, label %51, label %93

43:                                               ; preds = %34
  br i1 %23, label %47, label %44

44:                                               ; preds = %43
  %45 = load i16, ptr %2, align 2, !tbaa !125
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %44, %43
  br i1 %37, label %62, label %48

48:                                               ; preds = %47
  %49 = load i16, ptr %36, align 2, !tbaa !125
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %62, label %93

51:                                               ; preds = %39, %56
  %52 = phi i16 [ %59, %56 ], [ %40, %39 ]
  %53 = phi ptr [ %58, %56 ], [ %36, %39 ]
  %54 = phi ptr [ %57, %56 ], [ %2, %39 ]
  %55 = icmp eq i16 %52, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds i16, ptr %54, i64 1
  %58 = getelementptr inbounds i16, ptr %53, i64 1
  %59 = load i16, ptr %57, align 2, !tbaa !125
  %60 = load i16, ptr %58, align 2, !tbaa !125
  %61 = icmp eq i16 %59, %60
  br i1 %61, label %51, label %93, !llvm.loop !136

62:                                               ; preds = %51, %48, %47
  %63 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !200
  %65 = icmp eq ptr %64, null
  %66 = or i1 %24, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i16, ptr %3, align 2, !tbaa !125
  %69 = load i16, ptr %64, align 2, !tbaa !125
  %70 = icmp eq i16 %68, %69
  br i1 %70, label %79, label %93

71:                                               ; preds = %62
  br i1 %24, label %75, label %72

72:                                               ; preds = %71
  %73 = load i16, ptr %3, align 2, !tbaa !125
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72, %71
  br i1 %65, label %90, label %76

76:                                               ; preds = %75
  %77 = load i16, ptr %64, align 2, !tbaa !125
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %90, label %93

79:                                               ; preds = %67, %84
  %80 = phi i16 [ %87, %84 ], [ %68, %67 ]
  %81 = phi ptr [ %86, %84 ], [ %64, %67 ]
  %82 = phi ptr [ %85, %84 ], [ %3, %67 ]
  %83 = icmp eq i16 %80, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds i16, ptr %82, i64 1
  %86 = getelementptr inbounds i16, ptr %81, i64 1
  %87 = load i16, ptr %85, align 2, !tbaa !125
  %88 = load i16, ptr %86, align 2, !tbaa !125
  %89 = icmp eq i16 %87, %88
  br i1 %89, label %79, label %93, !llvm.loop !136

90:                                               ; preds = %79, %76, %75
  br i1 %23, label %92, label %91

91:                                               ; preds = %90
  br i1 %37, label %93, label %97

92:                                               ; preds = %90
  br i1 %37, label %97, label %93

93:                                               ; preds = %56, %84, %25, %44, %48, %72, %76, %67, %39, %99, %98, %92, %91
  %94 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %26, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !92
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %25, !llvm.loop !303

97:                                               ; preds = %92, %91
  br i1 %24, label %99, label %98

98:                                               ; preds = %97
  br i1 %65, label %93, label %100

99:                                               ; preds = %97
  br i1 %65, label %100, label %93

100:                                              ; preds = %98, %93, %99, %5
  %101 = phi ptr [ null, %5 ], [ %26, %98 ], [ null, %93 ], [ %26, %99 ]
  ret ptr %101
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEC2EPvPtS4_PS1_PS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 !prof !96 {
  store ptr %4, ptr %0, align 8, !tbaa !155
  %8 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !279
  %9 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !201
  %10 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.xercesc_2_7::DOMDeepNodeListPoolTableBucketElem", ptr %0, i64 0, i32 4
  %12 = icmp eq ptr %2, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %12, label %33, label %13

13:                                               ; preds = %7
  %14 = load i16, ptr %2, align 2, !tbaa !125
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %18, %16 ], [ %2, %13 ]
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !125
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %16, !llvm.loop !137

21:                                               ; preds = %16
  %22 = ptrtoint ptr %18 to i64
  %23 = ptrtoint ptr %2 to i64
  %24 = sub i64 %22, %23
  %25 = add i64 %24, 2
  %26 = and i64 %25, 8589934590
  br label %27

27:                                               ; preds = %21, %13
  %28 = phi i64 [ %26, %21 ], [ 2, %13 ]
  %29 = load ptr, ptr %6, align 8, !tbaa !65
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %28)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr nonnull align 2 %2, i64 %28, i1 false)
  store ptr %32, ptr %10, align 8, !tbaa !199
  br label %33

33:                                               ; preds = %27, %7
  %34 = icmp eq ptr %3, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %33
  %36 = load i16, ptr %3, align 2, !tbaa !125
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %40, %38 ], [ %3, %35 ]
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !125
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %38, !llvm.loop !137

43:                                               ; preds = %38
  %44 = ptrtoint ptr %40 to i64
  %45 = ptrtoint ptr %3 to i64
  %46 = sub i64 %44, %45
  %47 = add i64 %46, 2
  %48 = and i64 %47, 8589934590
  br label %49

49:                                               ; preds = %43, %35
  %50 = phi i64 [ %48, %43 ], [ 2, %35 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !65
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %50)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %54, ptr nonnull align 2 %3, i64 %50, i1 false)
  store ptr %54, ptr %11, align 8, !tbaa !200
  br label %55

55:                                               ; preds = %49, %33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !218
  %9 = load ptr, ptr %0, align 8, !tbaa !118
  %10 = load ptr, ptr %6, align 8, !tbaa !65
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !181
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !234
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !121
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !233
  %28 = load ptr, ptr %25, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !92
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !304

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !65
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !218
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !118
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %14 = load ptr, ptr %0, align 8, !tbaa !118
  store ptr %13, ptr %2, align 8, !tbaa !305
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !307
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !218
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !120
  %24 = load ptr, ptr %2, align 8, !tbaa !305
  store ptr null, ptr %2, align 8, !tbaa !305
  store ptr %24, ptr %22, align 8, !tbaa !120
  store i32 %6, ptr %3, align 8, !tbaa !218
  %25 = load ptr, ptr %0, align 8, !tbaa !118
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !120
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !235
  %39 = load ptr, ptr %20, align 8, !tbaa !121
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !233
  %42 = load ptr, ptr %0, align 8, !tbaa !118
  %43 = load ptr, ptr %39, align 8, !tbaa !65
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  store ptr %49, ptr %37, align 8, !tbaa !235
  store ptr %36, ptr %48, align 8, !tbaa !92
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !308

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !218
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !309

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !305
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !307
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #26
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #25
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = icmp eq ptr %6, null
  br i1 %4, label %52, label %8

8:                                                ; preds = %1
  br i1 %7, label %9, label %18

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !231
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !230
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  br label %20

18:                                               ; preds = %8
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %17, %9 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  store ptr %22, ptr %5, align 8, !tbaa !229
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %38
  %27 = phi ptr [ %22, %24 ], [ %41, %38 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !231
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = load ptr, ptr %2, align 8, !tbaa !226
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !233
  %34 = load ptr, ptr %30, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef %33)
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load ptr, ptr %5, align 8, !tbaa !229
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  store ptr %41, ptr %5, align 8, !tbaa !229
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %26, !llvm.loop !310

43:                                               ; preds = %26, %38, %20
  %44 = load ptr, ptr %5, align 8, !tbaa !229
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !231
  %49 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !218
  %51 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %50, ptr %51, align 8, !tbaa !230
  br label %82

52:                                               ; preds = %1
  br i1 %7, label %56, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %6, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !235
  store ptr %55, ptr %5, align 8, !tbaa !229
  br label %56

56:                                               ; preds = %53, %52
  %57 = load ptr, ptr %5, align 8, !tbaa !229
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !230
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !230
  %63 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !231
  %65 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %64, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !218
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %64, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !120
  %71 = load i32, ptr %60, align 8, !tbaa !230
  br label %72

72:                                               ; preds = %68, %78
  %73 = phi i32 [ %71, %68 ], [ %79, %78 ]
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %70, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !92
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = add i32 %73, 1
  store i32 %79, ptr %60, align 8, !tbaa !230
  %80 = icmp eq i32 %79, %66
  br i1 %80, label %82, label %72, !llvm.loop !311

81:                                               ; preds = %72
  store ptr %76, ptr %5, align 8, !tbaa !229
  br label %82

82:                                               ; preds = %78, %59, %43, %46, %81, %56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !232, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #23
  br label %10

10:                                               ; preds = %1, %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 559, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !229
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !237
  %14 = load ptr, ptr %9, align 8, !tbaa !65
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %3, i32 noundef %11, ptr noundef %13)
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i32 [ %16, %5 ], [ -1, %1 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !230
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %20, align 8, !tbaa !229
  tail call void @_ZN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !65
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !143
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !249
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !251
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !143
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !92
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !250
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !92
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !312

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !251
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !250
  %52 = load ptr, ptr %49, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !250
  store i32 %12, ptr %6, align 8, !tbaa !249
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !255
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !256
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !258
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !92
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !257
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !92
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !313

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !258
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !257
  %52 = load ptr, ptr %49, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !257
  store i32 %12, ptr %6, align 8, !tbaa !256
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !255
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !258
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !257
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = zext i32 %1 to i64
  %25 = zext i32 %19 to i64
  br label %30

26:                                               ; preds = %30, %21
  %27 = load ptr, ptr %14, align 8, !tbaa !257
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  br label %38

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %24, %23 ], [ %33, %30 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !257
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !92
  %37 = icmp eq i64 %33, %25
  br i1 %37, label %26, label %30, !llvm.loop !314

38:                                               ; preds = %13, %26
  %39 = phi ptr [ %29, %26 ], [ %17, %13 ]
  store ptr null, ptr %39, align 8, !tbaa !92
  store i32 %19, ptr %3, align 4, !tbaa !255
  ret ptr %18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !65
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #23
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !143
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !251
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #24
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #23
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.6", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !250
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = zext i32 %1 to i64
  %25 = zext i32 %19 to i64
  br label %30

26:                                               ; preds = %30, %21
  %27 = load ptr, ptr %14, align 8, !tbaa !250
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  br label %38

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %24, %23 ], [ %33, %30 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !250
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !92
  %37 = icmp eq i64 %33, %25
  br i1 %37, label %26, label %30, !llvm.loop !315

38:                                               ; preds = %13, %26
  %39 = phi ptr [ %29, %26 ], [ %17, %13 ]
  store ptr null, ptr %39, align 8, !tbaa !92
  store i32 %19, ptr %3, align 4, !tbaa !143
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD1Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_715DOMNodeListImplD1Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, ptr @_ZN11xercesc_2_711DOMNodeImplD1Ev, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZN11xercesc_2_715DOMDocumentImplD2Ev, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715DOMDocumentImplD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, ptr @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj, i64 552}
!45 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl14createTextNodeEPKt, ptr @_ZN11xercesc_2_711DOMTextImplC1EPNS_11DOMDocumentEPKt, i64 650}
!46 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_, i64 1}
!47 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, i64 550}
!48 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15createElementNSEPKtS2_ll, ptr @_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll, i64 550}
!49 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj, i64 650}
!50 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17createAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_, i64 650}
!51 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl7isKidOKEPNS_7DOMNodeES2_, ptr @_ZThn24_NK11xercesc_2_715DOMDocumentImpl11getNodeTypeEv, i64 1}
!52 = !{ptr @_ZThn24_N11xercesc_2_715DOMDocumentImpl11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl12insertBeforeEPNS_7DOMNodeES2_, i64 1}
!53 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 4}
!54 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 4}
!55 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, i64 2954}
!56 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl17setActualEncodingEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, i64 2}
!57 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl11setEncodingEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl10setVersionEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt, i64 1}
!59 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl14setDocumentURIEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 1}
!60 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl14setDocumentURIEPKt, ptr @_ZN11xercesc_2_79XMLString6fixURIEPKtPt, i64 1}
!61 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv, ptr @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_, i64 1}
!62 = !{ptr @_ZN11xercesc_2_715DOMDocumentImpl7releaseEv, ptr @_ZN11xercesc_2_715DOMDocumentImplD0Ev, i64 1}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 1}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!"branch_weights", i32 1, i32 0}
!69 = !{!70, !77, i64 280}
!70 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !71, i64 0, !76, i64 32, !80, i64 48, !77, i64 80, !77, i64 88, !77, i64 96, !83, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !84, i64 136, !77, i64 176, !77, i64 184, !77, i64 192, !87, i64 200, !77, i64 208, !77, i64 216, !77, i64 224, !77, i64 232, !77, i64 240, !77, i64 248, !77, i64 256, !77, i64 264, !77, i64 272, !77, i64 280, !86, i64 288, !83, i64 292}
!71 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !72, i64 0, !73, i64 8, !74, i64 16, !75, i64 24}
!72 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!73 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!74 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!75 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!76 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !77, i64 0, !79, i64 8}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !67, i64 0}
!79 = !{!"short", !78, i64 0}
!80 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !77, i64 0, !77, i64 8, !81, i64 16}
!81 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !82, i64 0, !77, i64 8}
!82 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!83 = !{!"bool", !78, i64 0}
!84 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !85, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !86, i64 32, !86, i64 36}
!85 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!86 = !{!"int", !78, i64 0}
!87 = !{!"long", !78, i64 0}
!88 = !{!70, !86, i64 288}
!89 = !{!70, !83, i64 292}
!90 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!91 = !{!70, !77, i64 184}
!92 = !{!77, !77, i64 0}
!93 = !{!70, !77, i64 192}
!94 = !{!70, !87, i64 200}
!95 = !{!70, !77, i64 248}
!96 = !{!"function_entry_count", i64 0}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!70, !77, i64 224}
!101 = !{!70, !77, i64 264}
!102 = !{!70, !77, i64 272}
!103 = !{!70, !77, i64 176}
!104 = !{!70, !77, i64 208}
!105 = !{!106, !77, i64 16}
!106 = !{!"_ZTSN11xercesc_2_710RefArrayOfINS_10RefStackOfINS_7DOMNodeEEEEE", !86, i64 0, !77, i64 8, !77, i64 16}
!107 = !{!106, !77, i64 8}
!108 = !{!70, !77, i64 216}
!109 = !{!70, !77, i64 256}
!110 = !{!"branch_weights", i32 1, i32 127}
!111 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!112 = !{!"branch_weights", i32 127, i32 513}
!113 = !{!114, !77, i64 56}
!114 = !{!"_ZTSN11xercesc_2_719DOMDeepNodeListPoolINS_19DOMDeepNodeListImplEEE", !83, i64 0, !77, i64 8, !87, i64 16, !77, i64 24, !77, i64 32, !87, i64 40, !87, i64 48, !77, i64 56}
!115 = !{!114, !77, i64 32}
!116 = !{!114, !77, i64 8}
!117 = !{!114, !77, i64 24}
!118 = !{!119, !77, i64 0}
!119 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE", !77, i64 0, !83, i64 8, !77, i64 16, !86, i64 24, !86, i64 28, !77, i64 32}
!120 = !{!119, !77, i64 16}
!121 = !{!119, !77, i64 32}
!122 = !{!106, !86, i64 0}
!123 = distinct !{!123, !98, !99}
!124 = !{!70, !77, i64 96}
!125 = !{!79, !79, i64 0}
!126 = !{!70, !77, i64 112}
!127 = !{!70, !83, i64 104}
!128 = !{i8 0, i8 2}
!129 = !{}
!130 = distinct !{!130, !98, !99}
!131 = !{!"function_entry_count", i64 552}
!132 = !{!"branch_weights", i32 0, i32 1202}
!133 = !{!"branch_weights", i32 1201, i32 1}
!134 = !{!"branch_weights", i32 0, i32 2404}
!135 = !{!"branch_weights", i32 1203, i32 1201}
!136 = distinct !{!136, !98, !99}
!137 = distinct !{!137, !98, !99}
!138 = !{!"branch_weights", i32 1202, i32 6963}
!139 = !{!"function_entry_count", i64 650}
!140 = !{!"branch_weights", i32 1300, i32 0}
!141 = !{!"branch_weights", i32 2, i32 4768}
!142 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!143 = !{!144, !86, i64 12}
!144 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE", !83, i64 8, !86, i64 12, !86, i64 16, !77, i64 24, !77, i64 32}
!145 = !{!146, !83, i64 8}
!146 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_19DOMNodeIteratorImplEEE", !83, i64 8, !86, i64 12, !86, i64 16, !77, i64 24, !77, i64 32}
!147 = !{!146, !86, i64 12}
!148 = !{!146, !86, i64 16}
!149 = !{!146, !77, i64 24}
!150 = !{!146, !77, i64 32}
!151 = distinct !{!151, !98, !99}
!152 = !{!"function_entry_count", i64 550}
!153 = !{!70, !77, i64 232}
!154 = !{!70, !77, i64 240}
!155 = !{!156, !77, i64 0}
!156 = !{!"_ZTSN11xercesc_2_734DOMDeepNodeListPoolTableBucketElemINS_19DOMDeepNodeListImplEEE", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32}
!157 = !{!"VP", i32 0, i64 1, i64 -3424180285606522166, i64 1}
!158 = !{!"branch_weights", i32 0, i32 1}
!159 = !{!"branch_weights", i32 0, i32 550}
!160 = !{!"branch_weights", i32 550, i32 0}
!161 = !{!"branch_weights", i32 2, i32 548}
!162 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!163 = !{!"branch_weights", i32 0, i32 650}
!164 = !{!"branch_weights", i32 650, i32 0}
!165 = !{!70, !77, i64 80}
!166 = !{!"function_entry_count", i64 1200}
!167 = !{!"branch_weights", i32 0, i32 1200}
!168 = !{!"branch_weights", i32 1200, i32 6957}
!169 = !{!"branch_weights", i32 1199, i32 1}
!170 = !{!"branch_weights", i32 1, i32 8156}
!171 = !{!"branch_weights", i32 1199, i32 6958}
!172 = distinct !{!172, !98, !99}
!173 = !{!70, !77, i64 120}
!174 = !{!175, !83, i64 8}
!175 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !83, i64 8, !86, i64 12, !86, i64 16, !77, i64 24, !77, i64 32}
!176 = !{!175, !86, i64 12}
!177 = !{!175, !86, i64 16}
!178 = !{!175, !77, i64 24}
!179 = !{!175, !77, i64 32}
!180 = distinct !{!180, !98, !99}
!181 = !{!86, !86, i64 0}
!182 = !{!"branch_weights", i32 1, i32 1199}
!183 = !{!"VP", i32 0, i64 1200, i64 -1743754952083387195, i64 650, i64 -3424180285606522166, i64 549, i64 8290416421600429383, i64 1}
!184 = !{!"VP", i32 0, i64 1200, i64 -9104222706455325236, i64 650, i64 -3424180285606522166, i64 550}
!185 = !{!"function_entry_count", i64 1850}
!186 = !{!"VP", i32 0, i64 1, i64 8496213862019135417, i64 1}
!187 = !{!"function_entry_count", i64 4}
!188 = !{!"branch_weights", i32 0, i32 4}
!189 = !{!"branch_weights", i32 1, i32 3}
!190 = !{!"branch_weights", i32 3, i32 10}
!191 = !{!"function_entry_count", i64 3470}
!192 = !{!"branch_weights", i32 0, i32 4770}
!193 = !{!"function_entry_count", i64 2954}
!194 = !{!"branch_weights", i32 0, i32 2954}
!195 = !{!114, !83, i64 0}
!196 = !{!114, !87, i64 16}
!197 = !{!114, !87, i64 40}
!198 = !{!114, !87, i64 48}
!199 = !{!156, !77, i64 24}
!200 = !{!156, !77, i64 32}
!201 = !{!156, !77, i64 16}
!202 = !{!87, !87, i64 0}
!203 = !{!70, !77, i64 88}
!204 = !{!"function_entry_count", i64 2}
!205 = !{!"branch_weights", i32 4, i32 0}
!206 = !{!"branch_weights", i32 1, i32 8}
!207 = !{!70, !77, i64 128}
!208 = !{!76, !79, i64 8}
!209 = distinct !{!209, !98, !99}
!210 = distinct !{!210, !98, !99}
!211 = distinct !{!211, !98, !99}
!212 = distinct !{!212, !98, !99}
!213 = distinct !{!213, !98, !99}
!214 = !{!84, !77, i64 24}
!215 = !{!216, !86, i64 0}
!216 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !86, i64 0, !77, i64 8}
!217 = !{!119, !83, i64 8}
!218 = !{!119, !86, i64 24}
!219 = !{!119, !86, i64 28}
!220 = distinct !{!220, !98, !99}
!221 = !{!222, !77, i64 0}
!222 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE", !77, i64 0, !77, i64 8, !77, i64 16, !86, i64 24}
!223 = !{!224, !77, i64 0}
!224 = !{!"_ZTSN11xercesc_2_710KeyRefPairIvNS_18DOMUserDataHandlerEEE", !77, i64 0, !77, i64 8}
!225 = !{!224, !77, i64 8}
!226 = !{!227, !77, i64 48}
!227 = !{!"_ZTSN11xercesc_2_729RefHash2KeysTableOfEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE", !228, i64 0, !83, i64 8, !77, i64 16, !86, i64 24, !77, i64 32, !77, i64 40, !77, i64 48}
!228 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEE"}
!229 = !{!227, !77, i64 16}
!230 = !{!227, !86, i64 24}
!231 = !{!227, !77, i64 32}
!232 = !{!227, !83, i64 8}
!233 = !{!222, !77, i64 16}
!234 = !{!222, !86, i64 24}
!235 = !{!222, !77, i64 8}
!236 = distinct !{!236, !98, !99}
!237 = !{!227, !77, i64 40}
!238 = !{!84, !77, i64 8}
!239 = !{!84, !77, i64 16}
!240 = !{!216, !77, i64 8}
!241 = distinct !{!241, !98, !99}
!242 = distinct !{!242, !98, !99}
!243 = distinct !{!243, !98, !99}
!244 = !{!"VP", i32 0, i64 1, i64 -5949573650078605875, i64 1}
!245 = distinct !{!245, !98, !99}
!246 = distinct !{!246, !98, !99}
!247 = distinct !{!247, !98, !99}
!248 = !{!144, !83, i64 8}
!249 = !{!144, !86, i64 16}
!250 = !{!144, !77, i64 24}
!251 = !{!144, !77, i64 32}
!252 = distinct !{!252, !98, !99}
!253 = !{!254, !83, i64 8}
!254 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9DOMBufferEEE", !83, i64 8, !86, i64 12, !86, i64 16, !77, i64 24, !77, i64 32}
!255 = !{!254, !86, i64 12}
!256 = !{!254, !86, i64 16}
!257 = !{!254, !77, i64 24}
!258 = !{!254, !77, i64 32}
!259 = distinct !{!259, !98, !99}
!260 = !{!"function_entry_count", i64 1798414}
!261 = !{!262, !77, i64 40}
!262 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !77, i64 0, !83, i64 8, !77, i64 16, !86, i64 24, !86, i64 28, !86, i64 32, !77, i64 40}
!263 = !{!262, !86, i64 24}
!264 = !{!262, !77, i64 0}
!265 = !{!"VP", i32 0, i64 1798414, i64 3024540859536234746, i64 1798414}
!266 = !{!262, !77, i64 16}
!267 = !{!"branch_weights", i32 1, i32 289}
!268 = !{!269, !77, i64 16}
!269 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !77, i64 0, !77, i64 8, !77, i64 16}
!270 = !{!"VP", i32 0, i64 1798632, i64 -1309333655503989351, i64 1798632}
!271 = !{!"branch_weights", i32 1798124, i32 508}
!272 = !{!"branch_weights", i32 289, i32 1798343}
!273 = distinct !{!273, !98, !99}
!274 = !{!"branch_weights", i32 290, i32 1798124}
!275 = !{!269, !77, i64 0}
!276 = !{!277, !77, i64 40}
!277 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !278, i64 8, !77, i64 16, !86, i64 24, !77, i64 32, !77, i64 40}
!278 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !78, i64 0}
!279 = !{!156, !77, i64 8}
!280 = distinct !{!280, !98, !99}
!281 = distinct !{!281, !98, !99}
!282 = distinct !{!282, !98, !99}
!283 = distinct !{!283, !98, !99}
!284 = distinct !{!284, !98, !99}
!285 = distinct !{!285, !98, !99}
!286 = distinct !{!286, !98, !99}
!287 = distinct !{!287, !98, !99}
!288 = distinct !{!288, !98, !99}
!289 = distinct !{!289, !98, !99}
!290 = distinct !{!290, !98, !99}
!291 = distinct !{!291, !98, !99}
!292 = distinct !{!292, !98, !99}
!293 = distinct !{!293, !98, !99}
!294 = distinct !{!294, !98, !99}
!295 = distinct !{!295, !98, !99}
!296 = distinct !{!296, !98, !99}
!297 = distinct !{!297, !98, !99}
!298 = distinct !{!298, !98, !99}
!299 = distinct !{!299, !98, !99}
!300 = distinct !{!300, !98, !99}
!301 = distinct !{!301, !98, !99}
!302 = distinct !{!302, !98, !99}
!303 = distinct !{!303, !98, !99}
!304 = distinct !{!304, !98, !99}
!305 = !{!306, !77, i64 0}
!306 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10KeyRefPairIvNS_18DOMUserDataHandlerEEEEEEE", !77, i64 0, !77, i64 8}
!307 = !{!306, !77, i64 8}
!308 = distinct !{!308, !98, !99}
!309 = distinct !{!309, !98, !99}
!310 = distinct !{!310, !98, !99}
!311 = distinct !{!311, !98, !99}
!312 = distinct !{!312, !98, !99}
!313 = distinct !{!313, !98, !99}
!314 = distinct !{!314, !98, !99}
!315 = distinct !{!315, !98, !99}
