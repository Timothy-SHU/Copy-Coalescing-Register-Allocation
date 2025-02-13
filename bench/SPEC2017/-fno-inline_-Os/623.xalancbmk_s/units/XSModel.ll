; ModuleID = 'XSModel.cpp'
source_filename = "XSModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XSNamedMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf.5" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.2" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.6" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.12" = type { %"class.xercesc_2_7::XMLEnumerator.13", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.13" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.15" = type { %"class.xercesc_2_7::XMLEnumerator.16", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.16" = type { ptr }
%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator.17", i8, i32, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::XMLEnumerator.17" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.18" = type { %"class.xercesc_2_7::XMLEnumerator.19", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.19" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.20" = type { %"class.xercesc_2_7::XMLEnumerator.21", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.21" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.22" = type { %"class.xercesc_2_7::XMLEnumerator.23", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.23" = type { ptr }
%"class.xercesc_2_7::NameIdPoolEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator.24", i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.24" = type { ptr }
%"class.xercesc_2_7::XSNamespaceItem" = type { ptr, ptr, ptr, [14 x ptr], ptr, [14 x ptr], ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.4" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor.7" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.8" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.9" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.10" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.11" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.14" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::RefHashTableOf.26" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.28" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.30" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf.32" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::RefHashTableBucketElem.25" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHashTableBucketElem.27" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.29" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.31" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.33" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.34" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XSObjectFactory" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE10initializeEj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE6rehashEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_15XSNamespaceItemEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_715XSNamespaceItem18getSchemaNamespaceEv = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE9getLengthEv = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE4itemEj = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE10addElementEPS1_PKtS5_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE9elementAtEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE9elementAtEj = comdat any

$_ZN11xercesc_2_715GrammarResolver25getGrammarsToAddToXSModelEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE9elementAtEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_8XSObjectEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE9removeAllEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED2Ev = comdat any

$_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv = comdat any

$_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv = comdat any

$_ZN11xercesc_2_713SchemaGrammar19getDatatypeRegistryEv = comdat any

$_ZNK11xercesc_2_724DatatypeValidatorFactory22getUserDefinedRegistryEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZNK11xercesc_2_713SchemaGrammar23getAttGroupInfoRegistryEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED2Ev = comdat any

$_ZNK11xercesc_2_713SchemaGrammar20getGroupInfoRegistryEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev = comdat any

$_ZNK11xercesc_2_713SchemaGrammar21getNotationEnumeratorEv = comdat any

$_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE11nextElementEv = comdat any

$_ZN11xercesc_2_713SchemaGrammar13getAnnotationEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEC2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEC2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEC2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEC2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEC2Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3getEPKv = comdat any

$_ZN11xercesc_2_715XSObjectFactory16getObjectFromMapEPv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3getEPKv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE = comdat any

$_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE = comdat any

$_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE = comdat any

$_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant [44 x i8] c"N11xercesc_2_711RefVectorOfINS_8XSObjectEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_713XMLEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE = linkonce_odr dso_local constant [67 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE = linkonce_odr dso_local constant [58 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev, ptr @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant [71 x i8] c"N11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant [65 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE = linkonce_odr dso_local constant [68 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE = linkonce_odr dso_local constant [57 x i8] c"N11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant [65 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEED0Ev, ptr @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE11nextElementEv, ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE = linkonce_odr dso_local constant [61 x i8] c"N11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1

@_ZN11xercesc_2_77XSModelC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_77XSModelC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE
@_ZN11xercesc_2_77XSModelC1EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_77XSModelC2EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_77XSModelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_77XSModelD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModelC2EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::DatatypeValidatorFactory", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %2, ptr %0, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %8, i8 0, i64 50, i1 false)
  %11 = load ptr, ptr %1, align 8, !tbaa !88
  %12 = getelementptr inbounds ptr, ptr %11, i64 15
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(17) %1) #14
  store ptr %14, ptr %8, align 8, !tbaa !90
  %15 = load ptr, ptr %0, align 8, !tbaa !82
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %15) #14
  invoke void @_ZN11xercesc_2_715XSObjectFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef %2) #14
          to label %17 unwind label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  store ptr %16, ptr %18, align 8, !tbaa !91
  br label %23

19:                                               ; preds = %40
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %2) #14
  invoke void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 10, i1 noundef zeroext true, ptr noundef %2) #14
          to label %45 unwind label %72

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #15
  br label %149

23:                                               ; preds = %17, %40
  %24 = phi i64 [ 0, %17 ], [ %25, %40 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = trunc i64 %24 to i32
  switch i32 %26, label %34 [
    i32 0, label %27
    i32 1, label %27
    i32 2, label %27
    i32 4, label %27
    i32 5, label %27
    i32 10, label %27
  ]

27:                                               ; preds = %23, %23, %23, %23, %23, %23
  %28 = load ptr, ptr %0, align 8, !tbaa !82
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %28) #14
  %30 = load ptr, ptr %8, align 8, !tbaa !90
  %31 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 20, i32 noundef 29, ptr noundef %30, i1 noundef zeroext false, ptr noundef %31) #14
          to label %34 unwind label %32

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #15
  br label %149

34:                                               ; preds = %23, %27
  %35 = phi ptr [ %29, %27 ], [ null, %23 ]
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 4, i64 %24
  store ptr %35, ptr %36, align 8, !tbaa !92
  %37 = load ptr, ptr %0, align 8, !tbaa !82
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %37) #14
  %39 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 30, i1 noundef zeroext false, ptr noundef %39) #14
          to label %40 unwind label %43

40:                                               ; preds = %34
  %41 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 3, i64 %24
  store ptr %38, ptr %41, align 8, !tbaa !92
  %42 = icmp eq i64 %25, 14
  br i1 %42, label %19, label %23, !llvm.loop !93

43:                                               ; preds = %34
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %38, ptr noundef %37) #15
  br label %149

45:                                               ; preds = %19
  store ptr %20, ptr %6, align 8, !tbaa !95
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %2) #14
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 10, i1 noundef zeroext true, ptr noundef %2) #14
          to label %47 unwind label %74

47:                                               ; preds = %45
  store ptr %46, ptr %7, align 8, !tbaa !96
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %2) #14
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef 10, i1 noundef zeroext false, ptr noundef %2) #14
          to label %49 unwind label %76

49:                                               ; preds = %47
  store ptr %48, ptr %9, align 8, !tbaa !97
  %50 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2) #14
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, i32 noundef 11, i1 noundef zeroext false, ptr noundef %2) #14
          to label %51 unwind label %78

51:                                               ; preds = %49
  store ptr %50, ptr %10, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %52 = load ptr, ptr %1, align 8, !tbaa !88
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(17) %1) #14
  %55 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
  br i1 %55, label %56, label %106

56:                                               ; preds = %51, %100
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
          to label %58 unwind label %82

58:                                               ; preds = %56
  %59 = load ptr, ptr %57, align 8, !tbaa !88
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef i32 %61(ptr noundef nonnull align 8 dereferenceable(160) %57) #14
          to label %63 unwind label %82

63:                                               ; preds = %58
  %64 = icmp eq i32 %62, 1
  br i1 %64, label %65, label %100, !llvm.loop !99

65:                                               ; preds = %63
  %66 = load ptr, ptr %57, align 8, !tbaa !88
  %67 = getelementptr inbounds ptr, ptr %66, i64 6
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(160) %57) #14
          to label %70 unwind label %82

70:                                               ; preds = %65
  %71 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %69, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #14
  br i1 %71, label %100, label %84, !llvm.loop !99

72:                                               ; preds = %19
  %73 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %2) #15
  br label %149

74:                                               ; preds = %45
  %75 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %46, ptr noundef %2) #15
  br label %149

76:                                               ; preds = %47
  %77 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %2) #15
  br label %149

78:                                               ; preds = %49
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %2) #15
  br label %149

80:                                               ; preds = %115, %113, %112, %109, %106
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %147

82:                                               ; preds = %65, %58, %56
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %147

84:                                               ; preds = %70
  %85 = load ptr, ptr %57, align 8, !tbaa !88
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(160) %57) #14
          to label %89 unwind label %102

89:                                               ; preds = %84
  %90 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %88, ptr noundef %2) #14
          to label %91 unwind label %102

91:                                               ; preds = %89
  %92 = load ptr, ptr %6, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %92, ptr noundef %90) #14
          to label %93 unwind label %102

93:                                               ; preds = %91
  %94 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 264, ptr noundef %2) #14
          to label %95 unwind label %102

95:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_715XSNamespaceItemC1EPNS_7XSModelEPNS_13SchemaGrammarEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(264) %94, ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef %2) #14
          to label %96 unwind label %104

96:                                               ; preds = %95
  %97 = load ptr, ptr %7, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %97, ptr noundef nonnull %94) #14
          to label %98 unwind label %102

98:                                               ; preds = %96
  %99 = load ptr, ptr %10, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %99, ptr noundef %90, ptr noundef nonnull %94) #14
          to label %100 unwind label %102

100:                                              ; preds = %98, %63, %70
  %101 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
  br i1 %101, label %56, label %106

102:                                              ; preds = %98, %96, %93, %91, %89, %84
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %147

104:                                              ; preds = %95
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %94, ptr noundef %2) #15
  br label %147

106:                                              ; preds = %100, %51
  %107 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 264, ptr noundef %2) #14
          to label %108 unwind label %80

108:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_715XSNamespaceItemC1EPNS_7XSModelEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(264) %107, ptr noundef nonnull %0, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef %2) #14
          to label %109 unwind label %127

109:                                              ; preds = %108
  %110 = load ptr, ptr %6, align 8, !tbaa !95
  %111 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef %2) #14
          to label %112 unwind label %80

112:                                              ; preds = %109
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %110, ptr noundef %111) #14
          to label %113 unwind label %80

113:                                              ; preds = %112
  %114 = load ptr, ptr %7, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %114, ptr noundef nonnull %107) #14
          to label %115 unwind label %80

115:                                              ; preds = %113
  %116 = load ptr, ptr %10, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef nonnull %107) #14
          to label %117 unwind label %80

117:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2) #14
          to label %118 unwind label %129

118:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
          to label %119 unwind label %131

119:                                              ; preds = %118
  %120 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #14
  invoke void @_ZN11xercesc_2_77XSModel15addS4SToXSModelEPNS_15XSNamespaceItemEPNS_14RefHashTableOfINS_17DatatypeValidatorEEE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %107, ptr noundef %120) #14
          to label %121 unwind label %131

121:                                              ; preds = %119
  %122 = load ptr, ptr %7, align 8, !tbaa !96
  %123 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %122) #14
  %124 = add i32 %123, -1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %138, %121
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  ret void

127:                                              ; preds = %108
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %107, ptr noundef %2) #15
  br label %147

129:                                              ; preds = %117
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %145

131:                                              ; preds = %119, %118
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %143

133:                                              ; preds = %121, %138
  %134 = phi i32 [ %139, %138 ], [ 0, %121 ]
  %135 = load ptr, ptr %7, align 8, !tbaa !96
  %136 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %135, i32 noundef %134) #14
          to label %137 unwind label %141

137:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_77XSModel19addGrammarToXSModelEPNS_15XSNamespaceItemE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %136) #14
          to label %138 unwind label %141

138:                                              ; preds = %137
  %139 = add nuw i32 %134, 1
  %140 = icmp eq i32 %139, %124
  br i1 %140, label %126, label %133, !llvm.loop !100

141:                                              ; preds = %137, %133
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %143

143:                                              ; preds = %141, %131
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %132, %131 ]
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  br label %145

145:                                              ; preds = %143, %129
  %146 = phi { ptr, i32 } [ %144, %143 ], [ %130, %129 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %147

147:                                              ; preds = %82, %104, %102, %145, %127, %80
  %148 = phi { ptr, i32 } [ %146, %145 ], [ %81, %80 ], [ %128, %127 ], [ %83, %82 ], [ %103, %102 ], [ %105, %104 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  br label %149

149:                                              ; preds = %32, %43, %147, %78, %76, %74, %72, %21
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %79, %78 ], [ %77, %76 ], [ %75, %74 ], [ %73, %72 ], [ %22, %21 ], [ %44, %43 ], [ %33, %32 ]
  resume { ptr, i32 } %150
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !101 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XSObjectFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %5, ptr %0, align 8, !tbaa !102
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !104
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5) #14
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1, i1 noundef zeroext false, ptr noundef %5) #14
          to label %9 unwind label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  store ptr %8, ptr %10, align 8, !tbaa !105
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5) #14
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %2, i1 noundef zeroext %4, ptr noundef %5) #14
          to label %12 unwind label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !106
  ret void

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %11, %16 ], [ %8, %14 ]
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %5) #15
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !107 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %3, ptr %0, align 8, !tbaa !108
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !113
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !114
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !115
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !108
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !116
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !124
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !126

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %5, label %13, label %6, !prof !128

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !132 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !133

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !134
  %8 = load i16, ptr %1, align 2, !tbaa !134
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !136

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !137

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !134
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !138

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !139

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !134
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !140

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !141

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !134
  %28 = load i16, ptr %26, align 2, !tbaa !134
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !142, !llvm.loop !143

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !144 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !145

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #14
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !149
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !92
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !149
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XSNamespaceItemC1EPNS_7XSModelEPNS_13SchemaGrammarEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !152
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !92
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !152
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !115
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !111, !range !153, !noundef !154
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !155
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %21) #15
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #15
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !155
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !157
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !108
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = load i32, ptr %4, align 4, !tbaa !158
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_15XSNamespaceItemEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #14
  %38 = load ptr, ptr %32, align 8, !tbaa !112
  %39 = load i32, ptr %4, align 4, !tbaa !158
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !92
  %42 = load i32, ptr %9, align 8, !tbaa !115
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !115
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XSNamespaceItemC1EPNS_7XSModelEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModel15addS4SToXSModelEPNS_15XSNamespaceItemEPNS_14RefHashTableOfINS_17DatatypeValidatorEEE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.12", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
  %13 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo10getAnyTypeEj(i32 noundef %12) #14
  %14 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %13, ptr noundef nonnull %0) #14
  tail call void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %14, i32 noundef 2, i1 noundef zeroext true) #14
  %15 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #14
  %16 = load ptr, ptr %5, align 8, !tbaa !91
  %17 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef %15, ptr noundef nonnull %0, i1 noundef zeroext true) #14
  tail call void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %17, i32 noundef 2, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %18 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %18) #14
  %19 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
  br i1 %19, label %20, label %32

20:                                               ; preds = %3, %30
  %21 = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
          to label %22 unwind label %24

22:                                               ; preds = %20
  %23 = icmp eq ptr %21, %15
  br i1 %23, label %30, label %26, !llvm.loop !159

24:                                               ; preds = %29, %26, %20
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  resume { ptr, i32 } %25

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8, !tbaa !91
  %28 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull %21, ptr noundef nonnull %0, i1 noundef zeroext false) #14
          to label %29 unwind label %24

29:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %28, i32 noundef 2, i1 noundef zeroext true) #14
          to label %30 unwind label %24

30:                                               ; preds = %29, %22
  %31 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
  br i1 %31, label %20, label %32

32:                                               ; preds = %30, %3
  %33 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 12
  store i8 1, ptr %33, align 1, !tbaa !160
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() local_unnamed_addr #5 comdat align 2 !prof !127 {
  %1 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !92
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !152
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModel19addGrammarToXSModelEPNS_15XSNamespaceItemE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.15", align 8
  %4 = alloca %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.12", align 8
  %6 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.18", align 8
  %7 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.20", align 8
  %8 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.22", align 8
  %9 = alloca %"class.xercesc_2_7::NameIdPoolEnumerator", align 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !161
  %12 = tail call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #12
  %15 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef %15) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %17

17:                                               ; preds = %24, %14
  %18 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = load ptr, ptr %16, align 8, !tbaa !91
  %21 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
          to label %22 unwind label %25

22:                                               ; preds = %19
  %23 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull %21, ptr noundef nonnull %0, ptr noundef null) #14
          to label %24 unwind label %25

24:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %23, i32 noundef 0, i1 noundef zeroext true) #14
          to label %17 unwind label %25, !llvm.loop !163

25:                                               ; preds = %24, %22, %19
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  br label %193

27:                                               ; preds = %17
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  br label %28

28:                                               ; preds = %27, %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %29 = load ptr, ptr %10, align 8, !tbaa !161
  call void @_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %29) #14
  %30 = call noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %33

33:                                               ; preds = %31, %46
  %34 = invoke noundef nonnull align 8 dereferenceable(147) ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
          to label %35 unwind label %42

35:                                               ; preds = %33
  %36 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %34) #14
  %37 = icmp eq i32 %36, -2
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load ptr, ptr %32, align 8, !tbaa !91
  %40 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull %34, ptr noundef nonnull %0, ptr noundef null) #14
          to label %41 unwind label %44

41:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %40, i32 noundef 1, i1 noundef zeroext true) #14
          to label %46 unwind label %44

42:                                               ; preds = %33
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %191

44:                                               ; preds = %41, %38
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %191

46:                                               ; preds = %41, %35
  %47 = call noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #14
  br i1 %47, label %33, label %48, !llvm.loop !164

48:                                               ; preds = %46, %28
  %49 = load ptr, ptr %10, align 8, !tbaa !161
  %50 = call noundef ptr @_ZN11xercesc_2_713SchemaGrammar19getDatatypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %49) #14
  %51 = call noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory22getUserDefinedRegistryEv(ptr noundef nonnull align 8 dereferenceable(24) %50) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #12
  %54 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %51, i1 noundef zeroext false, ptr noundef %54) #14
          to label %55 unwind label %67

55:                                               ; preds = %53
  %56 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
  br i1 %56, label %57, label %73

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %59

59:                                               ; preds = %57, %71
  %60 = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
          to label %61 unwind label %69

61:                                               ; preds = %59
  %62 = call noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %60) #14
  br i1 %62, label %71, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %58, align 8, !tbaa !91
  %65 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull %60, ptr noundef nonnull %0, i1 noundef zeroext false) #14
          to label %66 unwind label %69

66:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %65, i32 noundef 2, i1 noundef zeroext true) #14
          to label %71 unwind label %69

67:                                               ; preds = %53
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %74

69:                                               ; preds = %66, %63, %59
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  br label %74

71:                                               ; preds = %66, %61
  %72 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
  br i1 %72, label %59, label %73, !llvm.loop !165

73:                                               ; preds = %71, %55
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #12
  br label %76

74:                                               ; preds = %69, %67
  %75 = phi { ptr, i32 } [ %70, %69 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #12
  br label %191

76:                                               ; preds = %73, %48
  %77 = load ptr, ptr %10, align 8, !tbaa !161
  %78 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %77) #14
  %79 = icmp eq ptr %78, null
  br i1 %79, label %103, label %80

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #12
  %81 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %78, i1 noundef zeroext false, ptr noundef %81) #14
          to label %82 unwind label %94

82:                                               ; preds = %80
  %83 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  br i1 %83, label %84, label %100

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %86

86:                                               ; preds = %84, %98
  %87 = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
          to label %88 unwind label %96

88:                                               ; preds = %86
  %89 = call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(176) %87) #14
  br i1 %89, label %98, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %85, align 8, !tbaa !91
  %92 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull %87, ptr noundef nonnull %0) #14
          to label %93 unwind label %96

93:                                               ; preds = %90
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %92, i32 noundef 2, i1 noundef zeroext true) #14
          to label %98 unwind label %96

94:                                               ; preds = %80
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %101

96:                                               ; preds = %93, %90, %86
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #15
  br label %101

98:                                               ; preds = %93, %88
  %99 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  br i1 %99, label %86, label %100, !llvm.loop !166

100:                                              ; preds = %98, %82
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  br label %103

101:                                              ; preds = %96, %94
  %102 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  br label %191

103:                                              ; preds = %100, %76
  %104 = load ptr, ptr %10, align 8, !tbaa !161
  %105 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar23getAttGroupInfoRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %104) #14
  %106 = icmp eq ptr %105, null
  br i1 %106, label %126, label %107

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #12
  %108 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %105, i1 noundef zeroext false, ptr noundef %108) #14
          to label %109 unwind label %119

109:                                              ; preds = %107
  %110 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %111

111:                                              ; preds = %109, %118
  %112 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  br i1 %112, label %113, label %123

113:                                              ; preds = %111
  %114 = load ptr, ptr %110, align 8, !tbaa !91
  %115 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
          to label %116 unwind label %121

116:                                              ; preds = %113
  %117 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull %115, ptr noundef nonnull %0) #14
          to label %118 unwind label %121

118:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %117, i32 noundef 4, i1 noundef zeroext true) #14
          to label %111 unwind label %121, !llvm.loop !167

119:                                              ; preds = %107
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %124

121:                                              ; preds = %118, %116, %113
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  br label %124

123:                                              ; preds = %111
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #12
  br label %126

124:                                              ; preds = %121, %119
  %125 = phi { ptr, i32 } [ %122, %121 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #12
  br label %191

126:                                              ; preds = %123, %103
  %127 = load ptr, ptr %10, align 8, !tbaa !161
  %128 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar20getGroupInfoRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %127) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %149, label %130

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #12
  %131 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %128, i1 noundef zeroext false, ptr noundef %131) #14
          to label %132 unwind label %142

132:                                              ; preds = %130
  %133 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %134

134:                                              ; preds = %132, %141
  %135 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  br i1 %135, label %136, label %146

136:                                              ; preds = %134
  %137 = load ptr, ptr %133, align 8, !tbaa !91
  %138 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
          to label %139 unwind label %144

139:                                              ; preds = %136
  %140 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory28createXSModelGroupDefinitionEPNS_15XercesGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %137, ptr noundef nonnull %138, ptr noundef nonnull %0) #14
          to label %141 unwind label %144

141:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %140, i32 noundef 5, i1 noundef zeroext true) #14
          to label %134 unwind label %144, !llvm.loop !168

142:                                              ; preds = %130
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %147

144:                                              ; preds = %141, %139, %136
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #15
  br label %147

146:                                              ; preds = %134
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  br label %149

147:                                              ; preds = %144, %142
  %148 = phi { ptr, i32 } [ %145, %144 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  br label %191

149:                                              ; preds = %146, %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  %150 = load ptr, ptr %10, align 8, !tbaa !161
  invoke void @_ZNK11xercesc_2_713SchemaGrammar21getNotationEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(160) %150) #14
          to label %151 unwind label %161

151:                                              ; preds = %149
  %152 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  br label %153

153:                                              ; preds = %151, %160
  %154 = call noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  br i1 %154, label %155, label %165

155:                                              ; preds = %153
  %156 = load ptr, ptr %152, align 8, !tbaa !91
  %157 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
          to label %158 unwind label %163

158:                                              ; preds = %155
  %159 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15XMLNotationDeclEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %156, ptr noundef nonnull %157, ptr noundef nonnull %0) #14
          to label %160 unwind label %163

160:                                              ; preds = %158
  invoke void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %159, i32 noundef 10, i1 noundef zeroext true) #14
          to label %153 unwind label %163, !llvm.loop !169

161:                                              ; preds = %149
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %189

163:                                              ; preds = %160, %158, %155
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %187

165:                                              ; preds = %153
  %166 = load ptr, ptr %10, align 8, !tbaa !161
  %167 = invoke noundef ptr @_ZN11xercesc_2_713SchemaGrammar13getAnnotationEv(ptr noundef nonnull align 8 dereferenceable(160) %166) #14
          to label %168 unwind label %184

168:                                              ; preds = %165
  %169 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 6
  %170 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %1, i64 0, i32 4
  br label %171

171:                                              ; preds = %168, %180
  %172 = phi ptr [ %181, %180 ], [ %167, %168 ]
  %173 = icmp eq ptr %172, null
  br i1 %173, label %186, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr %169, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %175, ptr noundef nonnull %172) #14
          to label %176 unwind label %182

176:                                              ; preds = %174
  %177 = load ptr, ptr %170, align 8, !tbaa !170
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %177, ptr noundef nonnull %172) #14
          to label %178 unwind label %182

178:                                              ; preds = %176
  %179 = getelementptr inbounds i8, ptr %172, i64 8
  invoke void @_ZN11xercesc_2_77XSModel22addComponentToIdVectorEPNS_8XSObjectEi(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %179, i32 noundef 11) #14
          to label %180 unwind label %182

180:                                              ; preds = %178
  %181 = invoke noundef ptr @_ZN11xercesc_2_712XSAnnotation7getNextEv(ptr noundef nonnull align 8 dereferenceable(80) %172) #14
          to label %171 unwind label %182, !llvm.loop !171

182:                                              ; preds = %174, %176, %178, %180
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %187

184:                                              ; preds = %165
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %187

186:                                              ; preds = %171
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  ret void

187:                                              ; preds = %182, %184, %163
  %188 = phi { ptr, i32 } [ %164, %163 ], [ %183, %182 ], [ %185, %184 ]
  call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #15
  br label %189

189:                                              ; preds = %187, %161
  %190 = phi { ptr, i32 } [ %188, %187 ], [ %162, %161 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  br label %191

191:                                              ; preds = %74, %124, %189, %147, %101, %42, %44
  %192 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ], [ %75, %74 ], [ %102, %101 ], [ %125, %124 ], [ %148, %147 ], [ %190, %189 ]
  call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  br label %193

193:                                              ; preds = %191, %25
  %194 = phi { ptr, i32 } [ %26, %25 ], [ %192, %191 ]
  resume { ptr, i32 } %194
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !152
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !173 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !174, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !126

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %3, ptr %0, align 8, !tbaa !175
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !177
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !178
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !179
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !180
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !181
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #14
  %11 = load ptr, ptr %0, align 8, !tbaa !175
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11) #14
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !181
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #15
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !175
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !175
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !179
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !88
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !178
  %21 = load i32, ptr %12, align 8, !tbaa !179
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !178
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !92
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !182
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !186
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !188
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !189
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !190
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !191
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !190
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !190
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !92
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !192
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !186, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !188
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !190
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !88
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(36) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !188
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !193

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !191
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !190
  %33 = load ptr, ptr %30, align 8, !tbaa !88
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !188
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !191
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !186, !range !153, !noundef !154
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(36) %25) #15
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !190
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !188
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !188
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !186, !range !153, !noundef !154
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !190
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(36) %17) #15
  %23 = load ptr, ptr %7, align 8, !tbaa !190
  %24 = load i32, ptr %2, align 4, !tbaa !188
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !92
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !194
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !188
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !191
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !186, !range !153, !noundef !154
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !190
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !88
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(36) %22) #15
  %28 = load i32, ptr %3, align 4, !tbaa !188
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
  %43 = load ptr, ptr %42, align 8, !tbaa !190
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !190
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !190
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !92
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !195

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !92
  store i32 %31, ptr %3, align 4, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !188
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !188
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !186, !range !153, !noundef !154
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !88
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(36) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !186, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !188
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !190
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !88
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(36) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !188
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !196

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !191
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !190
  %33 = load ptr, ptr %30, align 8, !tbaa !88
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !107 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !197
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !149
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !198
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !147
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !199
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !147
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !200

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !147
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !92
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !201, !llvm.loop !202
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !197, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !203

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !149
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !204

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !199
  %15 = load ptr, ptr %11, align 8, !tbaa !147
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = load ptr, ptr %14, align 8, !tbaa !88
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #14
          to label %21 unwind label %35

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !149
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !205, !llvm.loop !206

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !147
  %31 = load ptr, ptr %28, align 8, !tbaa !88
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #14
          to label %34 unwind label %37

34:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !149
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !208

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !197, !range !153, !noundef !154
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !209

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !199
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !147
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = load ptr, ptr %22, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %27) #14
  br label %31

31:                                               ; preds = %18, %20
  %32 = phi i64 [ %19, %18 ], [ %25, %20 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !147
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !149
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %10

9:                                                ; preds = %24, %1
  store i32 0, ptr %2, align 4, !tbaa !149
  ret void

10:                                               ; preds = %5, %24
  %11 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %5 ], [ %28, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !197, !range !153, !noundef !154
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !199
  %17 = load ptr, ptr %8, align 8, !tbaa !147
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = load ptr, ptr %16, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %19) #14
  %23 = load i32, ptr %2, align 4, !tbaa !149
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %26 = load ptr, ptr %8, align 8, !tbaa !147
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !92
  %28 = add nuw nsw i64 %12, 1
  %29 = zext i32 %25 to i64
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %10, label %9, !llvm.loop !210
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !149
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !197, !range !153, !noundef !154
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !199
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = load ptr, ptr %19, align 8, !tbaa !88
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24) #14
  %28 = load i32, ptr %3, align 4, !tbaa !149
  br label %29

29:                                               ; preds = %17, %13
  %30 = phi i32 [ %28, %17 ], [ %4, %13 ]
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !147
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !147
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !147
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !92
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !211

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !92
  store i32 %31, ptr %3, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !149
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !149
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !197, !range !153, !noundef !154
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = load ptr, ptr %12, align 8, !tbaa !88
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17) #14
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !197, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !149
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !199
  %15 = load ptr, ptr %11, align 8, !tbaa !147
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = load ptr, ptr %14, align 8, !tbaa !88
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #14
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !149
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !212

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !199
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !147
  %30 = load ptr, ptr %27, align 8, !tbaa !88
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !107 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !149
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !197, !range !153, !noundef !154
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef nonnull %25) #17
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !149
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !149
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !197, !range !153, !noundef !154
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !147
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef nonnull %17) #17
  %20 = load ptr, ptr %7, align 8, !tbaa !147
  %21 = load i32, ptr %2, align 4, !tbaa !149
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !92
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !213
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !149
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !197, !range !153, !noundef !154
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %22) #17
  %25 = load i32, ptr %3, align 4, !tbaa !149
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !147
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !147
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !92
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !214

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !92
  store i32 %28, ptr %3, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !149
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !149
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !197, !range !153, !noundef !154
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !197, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !149
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !147
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef nonnull %16) #17
  %19 = load i32, ptr %6, align 4, !tbaa !149
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !215

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !199
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !147
  %30 = load ptr, ptr %27, align 8, !tbaa !88
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !216
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !152
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !217
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !150
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !172
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !150
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !150
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !92
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !218
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !216, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !150
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %16) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #15
  %19 = load i32, ptr %6, align 4, !tbaa !152
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !219

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = load ptr, ptr %27, align 8, !tbaa !88
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #14
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !152
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !216, !range !153, !noundef !154
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %25) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #15
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !152
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !152
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !216, !range !153, !noundef !154
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !150
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %17) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #15
  %20 = load ptr, ptr %7, align 8, !tbaa !150
  %21 = load i32, ptr %2, align 4, !tbaa !152
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !92
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !220
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !152
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !216, !range !153, !noundef !154
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %22) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #15
  %25 = load i32, ptr %3, align 4, !tbaa !152
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !150
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !150
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !150
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !92
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !221

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !92
  store i32 %28, ptr %3, align 4, !tbaa !152
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !152
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !152
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !216, !range !153, !noundef !154
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %15) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !216, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !150
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %16) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #15
  %19 = load i32, ptr %6, align 4, !tbaa !152
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !222

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = load ptr, ptr %27, align 8, !tbaa !88
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !223
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !225
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !226
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !227
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !228
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !227
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !227
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !92
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !229
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !223, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !225
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !227
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !88
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(80) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !225
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !230

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !228
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !227
  %33 = load ptr, ptr %30, align 8, !tbaa !88
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !225
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !228
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !223, !range !153, !noundef !154
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !227
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(80) %25) #15
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !227
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !225
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !225
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !223, !range !153, !noundef !154
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !227
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(80) %17) #15
  %23 = load ptr, ptr %7, align 8, !tbaa !227
  %24 = load i32, ptr %2, align 4, !tbaa !225
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !92
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !231
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !225
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !223, !range !153, !noundef !154
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !227
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !88
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(80) %22) #15
  %28 = load i32, ptr %3, align 4, !tbaa !225
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !227
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !227
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !227
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !92
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !232

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !92
  store i32 %31, ptr %3, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !225
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !225
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !223, !range !153, !noundef !154
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !227
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !88
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !223, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !225
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !227
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !88
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(80) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !225
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !233

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !228
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !227
  %33 = load ptr, ptr %30, align 8, !tbaa !88
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 99, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !108
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !113
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !88
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !112
  %21 = load i32, ptr %12, align 8, !tbaa !113
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !112
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !92
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !234
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !235 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !236

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !237
  store ptr %7, ptr %2, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !238

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !122
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !124
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !138

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !239
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !240

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !122
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !241, !llvm.loop !242

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !118
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !243 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !244

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !134
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !245

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !134
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !246, !llvm.loop !247

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !149
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !198
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !248

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !199
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !88
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !149
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !249

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !250

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !92
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !147
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !92
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !251, !llvm.loop !252

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !199
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !147
  %49 = load ptr, ptr %46, align 8, !tbaa !88
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !147
  store i32 %12, ptr %6, align 8, !tbaa !198
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !152
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !217
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !88
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !92
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !150
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !92
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !253

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !172
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !150
  %49 = load ptr, ptr %46, align 8, !tbaa !88
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !150
  store i32 %12, ptr %6, align 8, !tbaa !217
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !108
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !108
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !113
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !112
  store i32 %5, ptr %3, align 8, !tbaa !113
  %23 = load ptr, ptr %0, align 8, !tbaa !108
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !112
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !254
  %38 = load ptr, ptr %18, align 8, !tbaa !116
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !157
  %41 = load ptr, ptr %0, align 8, !tbaa !108
  %42 = load ptr, ptr %38, align 8, !tbaa !88
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  store ptr %48, ptr %36, align 8, !tbaa !254
  store ptr %35, ptr %47, align 8, !tbaa !92
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !255

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !113
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !256

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = load ptr, ptr %0, align 8, !tbaa !108
  %9 = load ptr, ptr %5, align 8, !tbaa !88
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !116
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !157
  %23 = load ptr, ptr %20, align 8, !tbaa !88
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !257

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_15XSNamespaceItemEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr %2, ptr %0, align 8, !tbaa !155
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !254
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !258
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !258
  store ptr null, ptr %0, align 8, !tbaa !258
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !258
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !88
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !258
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !260
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !173 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !261 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !262
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !239
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !239
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !263
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !264 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !265

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !124
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !266

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !267
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !239
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !268

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !237
  %23 = load i8, ptr %9, align 8, !tbaa !269, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !270

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !130
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !262
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !271, !llvm.loop !272

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !239
  %40 = load i32, ptr %4, align 8, !tbaa !124
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !273, !llvm.loop !274

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !264 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.5", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !267
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModelC2EPS0_PNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = alloca %"class.xercesc_2_7::DatatypeValidatorFactory", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %3, ptr %0, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  store ptr %1, ptr %12, align 8, !tbaa !275
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 11
  store i8 1, ptr %13, align 8, !tbaa !276
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 12
  store i8 0, ptr %14, align 1, !tbaa !160
  %15 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #14
  store ptr %15, ptr %8, align 8, !tbaa !90
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_715XSObjectFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef %3) #14
          to label %17 unwind label %23

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  store ptr %16, ptr %18, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %17, %38
  %20 = phi i64 [ 0, %17 ], [ %21, %38 ]
  %21 = add nuw nsw i64 %20, 1
  %22 = trunc i64 %20 to i32
  switch i32 %22, label %32 [
    i32 0, label %25
    i32 1, label %25
    i32 2, label %25
    i32 4, label %25
    i32 5, label %25
    i32 10, label %25
  ]

23:                                               ; preds = %4
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %3) #15
  br label %249

25:                                               ; preds = %19, %19, %19, %19, %19, %19
  %26 = load ptr, ptr %0, align 8, !tbaa !82
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %26) #14
  %28 = load ptr, ptr %8, align 8, !tbaa !90
  %29 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 20, i32 noundef 29, ptr noundef %28, i1 noundef zeroext false, ptr noundef %29) #14
          to label %32 unwind label %30

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #15
  br label %249

32:                                               ; preds = %19, %25
  %33 = phi ptr [ %27, %25 ], [ null, %19 ]
  %34 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 4, i64 %20
  store ptr %33, ptr %34, align 8, !tbaa !92
  %35 = load ptr, ptr %0, align 8, !tbaa !82
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %35) #14
  %37 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 30, i1 noundef zeroext false, ptr noundef %37) #14
          to label %38 unwind label %41

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 3, i64 %20
  store ptr %36, ptr %39, align 8, !tbaa !92
  %40 = icmp eq i64 %21, 14
  br i1 %40, label %43, label %19, !llvm.loop !277

41:                                               ; preds = %32
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #15
  br label %249

43:                                               ; preds = %38
  %44 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef 10, i1 noundef zeroext true, ptr noundef %3) #14
          to label %45 unwind label %61

45:                                               ; preds = %43
  store ptr %44, ptr %6, align 8, !tbaa !95
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 10, i1 noundef zeroext false, ptr noundef %3) #14
          to label %47 unwind label %63

47:                                               ; preds = %45
  store ptr %46, ptr %7, align 8, !tbaa !96
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef 10, i1 noundef zeroext true, ptr noundef %3) #14
          to label %49 unwind label %65

49:                                               ; preds = %47
  store ptr %48, ptr %11, align 8, !tbaa !278
  %50 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_12XSAnnotationEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %50, i32 noundef 10, i1 noundef zeroext false, ptr noundef %3) #14
          to label %51 unwind label %67

51:                                               ; preds = %49
  store ptr %50, ptr %9, align 8, !tbaa !97
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %52, i32 noundef 11, i1 noundef zeroext false, ptr noundef %3) #14
          to label %53 unwind label %69

53:                                               ; preds = %51
  store ptr %52, ptr %10, align 8, !tbaa !98
  %54 = load ptr, ptr %12, align 8, !tbaa !275
  %55 = icmp eq ptr %54, null
  br i1 %55, label %168, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %54, i64 0, i32 12
  %58 = load i8, ptr %57, align 1, !tbaa !160, !range !153, !noundef !154
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  store i8 1, ptr %14, align 1, !tbaa !160
  br label %71

61:                                               ; preds = %43
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %3) #15
  br label %249

63:                                               ; preds = %45
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %46, ptr noundef %3) #15
  br label %249

65:                                               ; preds = %47
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %3) #15
  br label %249

67:                                               ; preds = %49
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %3) #15
  br label %249

69:                                               ; preds = %51
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %3) #15
  br label %249

71:                                               ; preds = %60, %56
  %72 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %54, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  %74 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %71, %76
  %77 = phi i32 [ %86, %76 ], [ 0, %71 ]
  %78 = load ptr, ptr %12, align 8, !tbaa !275
  %79 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !96
  %81 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %80, i32 noundef %77) #14
  %82 = load ptr, ptr %7, align 8, !tbaa !96
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %82, ptr noundef %81) #14
  %83 = load ptr, ptr %6, align 8, !tbaa !95
  %84 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem18getSchemaNamespaceEv(ptr noundef nonnull align 8 dereferenceable(264) %81) #14
  %85 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %84, ptr noundef %3) #14
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %83, ptr noundef %85) #14
  %86 = add nuw i32 %77, 1
  %87 = load ptr, ptr %12, align 8, !tbaa !275
  %88 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !96
  %90 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %89) #14
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %76, label %92, !llvm.loop !279

92:                                               ; preds = %76, %71
  br label %101

93:                                               ; preds = %142, %134
  %94 = icmp eq i64 %103, 14
  br i1 %94, label %95, label %101, !llvm.loop !280

95:                                               ; preds = %93
  %96 = load ptr, ptr %12, align 8, !tbaa !275
  %97 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !97
  %99 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %98) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %168, label %155

101:                                              ; preds = %92, %93
  %102 = phi i64 [ %103, %93 ], [ 0, %92 ]
  %103 = add nuw nsw i64 %102, 1
  %104 = trunc i64 %102 to i32
  switch i32 %104, label %134 [
    i32 0, label %105
    i32 1, label %105
    i32 2, label %105
    i32 4, label %105
    i32 5, label %105
    i32 10, label %105
  ]

105:                                              ; preds = %101, %101, %101, %101, %101, %101
  %106 = load ptr, ptr %12, align 8, !tbaa !275
  %107 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %106, i64 0, i32 4, i64 %102
  %108 = load ptr, ptr %107, align 8, !tbaa !92
  %109 = tail call noundef i32 @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %108) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 4, i64 %102
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi i32 [ 0, %111 ], [ %128, %113 ]
  %115 = load ptr, ptr %12, align 8, !tbaa !275
  %116 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %115, i64 0, i32 4, i64 %102
  %117 = load ptr, ptr %116, align 8, !tbaa !92
  %118 = tail call noundef ptr @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE4itemEj(ptr noundef nonnull align 8 dereferenceable(32) %117, i32 noundef %114) #14
  %119 = load ptr, ptr %112, align 8, !tbaa !92
  %120 = load ptr, ptr %118, align 8, !tbaa !88
  %121 = getelementptr inbounds ptr, ptr %120, i64 2
  %122 = load ptr, ptr %121, align 8
  %123 = tail call noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(36) %118) #14
  %124 = load ptr, ptr %118, align 8, !tbaa !88
  %125 = getelementptr inbounds ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef ptr %126(ptr noundef nonnull align 8 dereferenceable(36) %118) #14
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %119, ptr noundef nonnull %118, ptr noundef %123, ptr noundef %127) #14
  %128 = add nuw i32 %114, 1
  %129 = load ptr, ptr %12, align 8, !tbaa !275
  %130 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %129, i64 0, i32 4, i64 %102
  %131 = load ptr, ptr %130, align 8, !tbaa !92
  %132 = tail call noundef i32 @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %131) #14
  %133 = icmp ult i32 %128, %132
  br i1 %133, label %113, label %134, !llvm.loop !281

134:                                              ; preds = %113, %105, %101
  %135 = load ptr, ptr %12, align 8, !tbaa !275
  %136 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %135, i64 0, i32 3, i64 %102
  %137 = load ptr, ptr %136, align 8, !tbaa !92
  %138 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %137) #14
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %93, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 3, i64 %102
  br label %142

142:                                              ; preds = %140, %142
  %143 = phi i32 [ 0, %140 ], [ %149, %142 ]
  %144 = load ptr, ptr %141, align 8, !tbaa !92
  %145 = load ptr, ptr %12, align 8, !tbaa !275
  %146 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %145, i64 0, i32 3, i64 %102
  %147 = load ptr, ptr %146, align 8, !tbaa !92
  %148 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %147, i32 noundef %143) #14
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %144, ptr noundef %148) #14
  %149 = add nuw i32 %143, 1
  %150 = load ptr, ptr %12, align 8, !tbaa !275
  %151 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %150, i64 0, i32 3, i64 %102
  %152 = load ptr, ptr %151, align 8, !tbaa !92
  %153 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %152) #14
  %154 = icmp ult i32 %149, %153
  br i1 %154, label %142, label %93, !llvm.loop !282

155:                                              ; preds = %95, %155
  %156 = phi i32 [ %162, %155 ], [ 0, %95 ]
  %157 = load ptr, ptr %9, align 8, !tbaa !97
  %158 = load ptr, ptr %12, align 8, !tbaa !275
  %159 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %158, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !97
  %161 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %160, i32 noundef %156) #14
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %157, ptr noundef %161) #14
  %162 = add nuw i32 %156, 1
  %163 = load ptr, ptr %12, align 8, !tbaa !275
  %164 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %163, i64 0, i32 6
  %165 = load ptr, ptr %164, align 8, !tbaa !97
  %166 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %165) #14
  %167 = icmp ult i32 %162, %166
  br i1 %167, label %155, label %168, !llvm.loop !283

168:                                              ; preds = %155, %95, %53
  %169 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver25getGrammarsToAddToXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #14
  %170 = load ptr, ptr %7, align 8, !tbaa !96
  %171 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %170) #14
  %172 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %169) #14
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %210, label %174

174:                                              ; preds = %168, %203
  %175 = phi i32 [ %205, %203 ], [ 0, %168 ]
  %176 = phi i32 [ %204, %203 ], [ 0, %168 ]
  %177 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %169, i32 noundef %175) #14
  %178 = load ptr, ptr %177, align 8, !tbaa !92
  %179 = load ptr, ptr %178, align 8, !tbaa !88
  %180 = getelementptr inbounds ptr, ptr %179, i64 5
  %181 = load ptr, ptr %180, align 8
  %182 = tail call noundef i32 %181(ptr noundef nonnull align 8 dereferenceable(160) %178) #14
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %203

184:                                              ; preds = %174
  %185 = load ptr, ptr %178, align 8, !tbaa !88
  %186 = getelementptr inbounds ptr, ptr %185, i64 6
  %187 = load ptr, ptr %186, align 8
  %188 = tail call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(160) %178) #14
  %189 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %188, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #14
  br i1 %189, label %203, label %190

190:                                              ; preds = %184
  %191 = load ptr, ptr %178, align 8, !tbaa !88
  %192 = getelementptr inbounds ptr, ptr %191, i64 6
  %193 = load ptr, ptr %192, align 8
  %194 = tail call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(160) %178) #14
  %195 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %194, ptr noundef %3) #14
  %196 = load ptr, ptr %6, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %196, ptr noundef %195) #14
  %197 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 264, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_715XSNamespaceItemC1EPNS_7XSModelEPNS_13SchemaGrammarEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(264) %197, ptr noundef nonnull %0, ptr noundef nonnull %178, ptr noundef %3) #14
          to label %198 unwind label %208

198:                                              ; preds = %190
  %199 = load ptr, ptr %7, align 8, !tbaa !96
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %199, ptr noundef nonnull %197) #14
  %200 = load ptr, ptr %10, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %200, ptr noundef %195, ptr noundef nonnull %197) #14
  %201 = load ptr, ptr %11, align 8, !tbaa !278
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %201, ptr noundef nonnull %197) #14
  %202 = add i32 %176, 1
  br label %203

203:                                              ; preds = %174, %184, %198
  %204 = phi i32 [ %202, %198 ], [ %176, %184 ], [ %176, %174 ]
  %205 = add nuw i32 %175, 1
  %206 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %169) #14
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %174, label %210, !llvm.loop !284

208:                                              ; preds = %190
  %209 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %197, ptr noundef %3) #15
  br label %249

210:                                              ; preds = %203, %168
  %211 = phi i32 [ 0, %168 ], [ %204, %203 ]
  %212 = load i8, ptr %14, align 1, !tbaa !160, !range !153, !noundef !154
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
          to label %215 unwind label %231

215:                                              ; preds = %214
  %216 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 264, ptr noundef %3) #14
          to label %217 unwind label %233

217:                                              ; preds = %215
  invoke void @_ZN11xercesc_2_715XSNamespaceItemC1EPNS_7XSModelEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(264) %216, ptr noundef nonnull %0, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef %3) #14
          to label %218 unwind label %235

218:                                              ; preds = %217
  %219 = load ptr, ptr %6, align 8, !tbaa !95
  %220 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef %3) #14
          to label %221 unwind label %233

221:                                              ; preds = %218
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %219, ptr noundef %220) #14
          to label %222 unwind label %233

222:                                              ; preds = %221
  %223 = load ptr, ptr %7, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %223, ptr noundef nonnull %216) #14
          to label %224 unwind label %233

224:                                              ; preds = %222
  %225 = load ptr, ptr %10, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %225, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr noundef nonnull %216) #14
          to label %226 unwind label %233

226:                                              ; preds = %224
  %227 = load ptr, ptr %11, align 8, !tbaa !278
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %227, ptr noundef nonnull %216) #14
          to label %228 unwind label %233

228:                                              ; preds = %226
  %229 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #14
  invoke void @_ZN11xercesc_2_77XSModel15addS4SToXSModelEPNS_15XSNamespaceItemEPNS_14RefHashTableOfINS_17DatatypeValidatorEEE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %216, ptr noundef %229) #14
          to label %230 unwind label %233

230:                                              ; preds = %228
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %239

231:                                              ; preds = %214
  %232 = landingpad { ptr, i32 }
          cleanup
  br label %237

233:                                              ; preds = %228, %226, %224, %222, %221, %218, %215
  %234 = landingpad { ptr, i32 }
          cleanup
  br label %237

235:                                              ; preds = %217
  %236 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %216, ptr noundef %3) #15
  br label %237

237:                                              ; preds = %233, %235, %231
  %238 = phi { ptr, i32 } [ %232, %231 ], [ %234, %233 ], [ %236, %235 ]
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %249

239:                                              ; preds = %230, %210
  %240 = add i32 %211, %171
  %241 = icmp ult i32 %171, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %239, %242
  %243 = phi i32 [ %246, %242 ], [ %171, %239 ]
  %244 = load ptr, ptr %7, align 8, !tbaa !96
  %245 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %244, i32 noundef %243) #14
  call void @_ZN11xercesc_2_77XSModel19addGrammarToXSModelEPNS_15XSNamespaceItemE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %245) #14
  %246 = add i32 %243, 1
  %247 = icmp eq i32 %246, %240
  br i1 %247, label %248, label %242, !llvm.loop !285

248:                                              ; preds = %242, %239
  ret void

249:                                              ; preds = %30, %41, %61, %63, %65, %67, %69, %237, %208, %23
  %250 = phi { ptr, i32 } [ %24, %23 ], [ %42, %41 ], [ %31, %30 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %209, %208 ], [ %238, %237 ]
  resume { ptr, i32 } %250
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !286 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715XSNamespaceItem18getSchemaNamespaceEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !289
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE4itemEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !105
  %9 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #14
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %1) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %3) #14
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2, i32 noundef %14, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !188
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !188
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !92
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !188
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !191
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !225
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !225
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !92
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !225
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !227
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver25getGrammarsToAddToXSModelEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !291
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !291
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !293
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !294
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !179
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !180
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !177, !range !153, !noundef !154
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !295
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !88
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(36) %21) #15
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !295
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !297
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !298
  br label %48

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !175
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = load i32, ptr %5, align 4, !tbaa !158
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_8XSObjectEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %35, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %41) #14
  %42 = load ptr, ptr %36, align 8, !tbaa !178
  %43 = load i32, ptr %5, align 4, !tbaa !158
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %35, ptr %45, align 8, !tbaa !92
  %46 = load i32, ptr %9, align 4, !tbaa !180
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !180
  br label %48

48:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.7", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !179
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !175
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !88
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %14 = load ptr, ptr %0, align 8, !tbaa !175
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !179
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %23, ptr %21, align 8, !tbaa !178
  store i32 %6, ptr %3, align 8, !tbaa !179
  %24 = load ptr, ptr %0, align 8, !tbaa !175
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #14
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !178
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !299
  %39 = load ptr, ptr %19, align 8, !tbaa !181
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !297
  %42 = load ptr, ptr %0, align 8, !tbaa !175
  %43 = load ptr, ptr %39, align 8, !tbaa !88
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #14
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  store ptr %49, ptr %37, align 8, !tbaa !299
  store ptr %36, ptr %48, align 8, !tbaa !92
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !300

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !179
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !301

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !179
  %9 = load ptr, ptr %0, align 8, !tbaa !175
  %10 = load ptr, ptr %6, align 8, !tbaa !88
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #14
  store i32 %12, ptr %3, align 4, !tbaa !158
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !298
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !181
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !297
  %28 = load ptr, ptr %25, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #14
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !92
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !302

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_8XSObjectEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr %3, ptr %0, align 8, !tbaa !295
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !299
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !297
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !298
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !303
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !303
  store ptr null, ptr %0, align 8, !tbaa !303
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !303
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !305
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !88
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !303
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !188
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !189
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !191
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !88
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !188
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !92
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !190
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !92
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !306

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !191
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !190
  %49 = load ptr, ptr %46, align 8, !tbaa !88
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !190
  store i32 %12, ptr %6, align 8, !tbaa !189
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !225
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !226
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !228
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !88
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !225
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !92
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !227
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !92
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !307

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !228
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.4", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !227
  %49 = load ptr, ptr %46, align 8, !tbaa !88
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !227
  store i32 %12, ptr %6, align 8, !tbaa !226
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModelD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0) unnamed_addr #5 align 2 !prof !81 {
  br label %6

2:                                                ; preds = %23
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %25

6:                                                ; preds = %1, %23
  %7 = phi i64 [ 0, %1 ], [ %8, %23 ]
  %8 = add nuw nsw i64 %7, 1
  %9 = trunc i64 %7 to i32
  switch i32 %9, label %15 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %10
    i32 4, label %10
    i32 5, label %10
    i32 10, label %10
  ]

10:                                               ; preds = %6, %6, %6, %6, %6, %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 4, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %10, %14, %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 3, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(40) %17) #15
  br label %23

23:                                               ; preds = %15, %19
  %24 = icmp eq i64 %8, 14
  br i1 %24, label %2, label %6, !llvm.loop !308

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !tbaa !88
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %4) #15
  br label %29

29:                                               ; preds = %25, %2
  %30 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !96
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(40) %31) #15
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !97
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !88
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(40) %39) #15
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !98
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %47) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #15
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @_ZN11xercesc_2_715XSObjectFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %52) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %52) #15
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !278
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !88
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(40) %57) #15
  br label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 11
  %65 = load i8, ptr %64, align 8, !tbaa !276, !range !153, !noundef !154
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !275
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %69, i64 0, i32 11
  %73 = load i8, ptr %72, align 8, !tbaa !276, !range !153, !noundef !154
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67, %63, %76
  ret void

76:                                               ; preds = %71
  tail call void @_ZN11xercesc_2_77XSModelD2Ev(ptr noundef nonnull align 8 dereferenceable(298) %69) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %69) #15
  br label %75
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !88
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715XSObjectFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  %6 = load ptr, ptr %3, align 8, !tbaa !88
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !88
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !179
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !180
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !178
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !299
  %23 = load i8, ptr %9, align 8, !tbaa !177, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !295
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(36) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !175
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !309

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !178
  %40 = load i32, ptr %4, align 8, !tbaa !179
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !310

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !180
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !108
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !115
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !112
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !254
  %23 = load i8, ptr %9, align 8, !tbaa !111, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !155
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715XSNamespaceItemD1Ev(ptr noundef nonnull align 8 dereferenceable(264) %26) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #15
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !108
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !311

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !112
  %37 = load i32, ptr %4, align 8, !tbaa !113
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !92
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !312

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !115
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModel22addComponentToIdVectorEPNS_8XSObjectEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  tail call void @_ZN11xercesc_2_78XSObject5setIdEj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %7) #14
  %8 = load ptr, ptr %5, align 8, !tbaa !92
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %1) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XSObject5setIdEj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSModel23addComponentToNamespaceEPNS_15XSNamespaceItemEPNS_8XSObjectEib(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 !prof !81 {
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %1, i64 0, i32 3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = load ptr, ptr %2, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(36) %2) #14
  %13 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem18getSchemaNamespaceEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #14
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %2, ptr noundef %12, ptr noundef %13) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %1, i64 0, i32 5, i64 %6
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = load ptr, ptr %2, align 8, !tbaa !88
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(36) %2) #14
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %19, ptr noundef nonnull %2) #14
  br i1 %4, label %20, label %28

20:                                               ; preds = %5
  %21 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 4, i64 %6
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = load ptr, ptr %2, align 8, !tbaa !88
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(36) %2) #14
  %27 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem18getSchemaNamespaceEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #14
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_8XSObjectEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull %2, ptr noundef %26, ptr noundef %27) #14
  br label %28

28:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !313
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !315
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !316, !range !153, !noundef !154
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !317
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !88
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(36) %21) #15
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !317
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !319
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !320
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !321
  %37 = load i32, ptr %4, align 4, !tbaa !158
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #14
  %41 = load ptr, ptr %35, align 8, !tbaa !321
  %42 = load i32, ptr %4, align 4, !tbaa !158
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !92
  %45 = load i32, ptr %9, align 8, !tbaa !315
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !315
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.10", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !313
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !320
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !320
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !313
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !321
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !321
  store i32 %5, ptr %3, align 8, !tbaa !313
  %23 = load ptr, ptr %0, align 8, !tbaa !320
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !321
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !322
  %38 = load ptr, ptr %18, align 8, !tbaa !323
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !319
  %41 = load ptr, ptr %0, align 8, !tbaa !320
  %42 = load ptr, ptr %38, align 8, !tbaa !88
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  store ptr %48, ptr %36, align 8, !tbaa !322
  store ptr %35, ptr %47, align 8, !tbaa !92
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !324

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !313
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !325

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !323
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !313
  %8 = load ptr, ptr %0, align 8, !tbaa !320
  %9 = load ptr, ptr %5, align 8, !tbaa !88
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.8", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !321
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !323
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !319
  %23 = load ptr, ptr %20, align 8, !tbaa !88
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !326

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr %2, ptr %0, align 8, !tbaa !317
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !322
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.9", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !319
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !327
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.10", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !327
  store ptr null, ptr %0, align 8, !tbaa !327
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !327
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.10", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !329
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !88
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !327
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.10", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !329
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo10getAnyTypeEj(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !330 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !331

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !332
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !334
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !337
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !338
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !339
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !340
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !340
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 15, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !338
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !339
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !341
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(104) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !340
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !337
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !332
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !334, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !339
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !343 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !344
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !341
  %8 = load ptr, ptr %0, align 8, !tbaa !345
  %9 = load ptr, ptr %5, align 8, !tbaa !88
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !346
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !347

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !344
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !348
  %23 = load ptr, ptr %20, align 8, !tbaa !88
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27, !prof !349

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !350, !llvm.loop !351

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !352
  store ptr %7, ptr %2, align 8, !tbaa !337
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !338
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !338
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !339
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !341
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !346
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !338
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !353

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !337
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !338
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.12", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !337
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !127 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !345
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !346
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !346
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !344
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !127 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !354

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !341
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !355

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !356
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !346
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !357

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !352
  %23 = load i8, ptr %9, align 8, !tbaa !358, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !359

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !332
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(104) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !345
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !360, !llvm.loop !361

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !346
  %40 = load i32, ptr %4, align 8, !tbaa !341
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !362, !llvm.loop !363

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.11", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !356
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar24getAttributeDeclRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !369
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !372
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !373
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !374
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !375
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !375
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 15, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !372
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !373
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !374
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !376
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !375
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !372
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !378
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !369, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !374
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !380
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !381
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !382 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !383
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !386

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !387
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !388
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(147) ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !390 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !383
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !391

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !387
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !388
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18, !prof !391

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !392
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.5, i32 noundef 435, i32 noundef 30, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #12
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !393
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 4, !tbaa !383
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !394 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !395
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar19getDatatypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724DatatypeValidatorFactory22getUserDefinedRegistryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidatorFactory", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !403
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !404, !range !153, !noundef !154
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !408
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !409
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !412
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !413
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !414
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !415
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !415
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 15, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !412
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !413
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !414
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !416
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !415
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !412
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !418
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !420, !range !153, !noundef !154
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !409, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !414
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar23getAttGroupInfoRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !422
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !423
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !426
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !427
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !428
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !429
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !429
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 15, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !427
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !430
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !429
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !426
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !432
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !423, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar20getGroupInfoRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !434
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !435
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !438
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !439
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !440
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !441
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !441
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 15, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !438
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !439
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !440
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !442
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory28createXSModelGroupDefinitionEPNS_15XercesGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !441
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !438
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !444
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !435, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !440
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_713SchemaGrammar21getNotationEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::NameIdPoolEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !446
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !381
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, ptr noundef %6) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !447
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !450
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !451
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15XMLNotationDeclEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !447
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !450
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !451
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !453
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.6, i32 noundef 361, i32 noundef 30, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #12
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !454
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 8, !tbaa !447
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar13getAnnotationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !455
  %4 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %0) #14
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712XSAnnotation7getNextEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !173 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !456, !range !153, !noundef !154
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !126

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !387
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !372
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.25", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !457
  store ptr %7, ptr %2, align 8, !tbaa !372
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !373
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !373
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !376
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !458
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !373
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !459

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !372
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !373
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.15", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !372
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !460
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !458
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !458
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !461
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !126

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !376
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !462
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !458
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.25", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !457
  %23 = load i8, ptr %9, align 8, !tbaa !463, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !378
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !460
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !464

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !458
  %40 = load i32, ptr %4, align 8, !tbaa !376
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !465

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.26", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !462
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !456
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !383
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !387
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 6
  store ptr %3, ptr %9, align 8, !tbaa !392
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %19, !prof !466

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %13 = load ptr, ptr %9, align 8, !tbaa !392
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.5, i32 noundef 395, i32 noundef 15, ptr noundef %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %23 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #12
  br label %21

17:                                               ; preds = %19, %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  invoke void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %20 unwind label %17

20:                                               ; preds = %19
  ret void

21:                                               ; preds = %17, %15
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !173 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 5
  store i32 -1, ptr %2, align 8, !tbaa !467
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !468
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !387
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !388
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !383
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !173 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !468
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !126

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !469
  store ptr %7, ptr %2, align 8, !tbaa !468
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !471

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !467
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !467
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !387
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !472
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !466

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !473
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !474

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !467
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !138, !llvm.loop !475

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !468
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !412
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.27", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !476
  store ptr %7, ptr %2, align 8, !tbaa !412
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !413
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !413
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !414
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !416
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !477
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !413
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !478

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !412
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !413
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.18", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !412
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !479
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !477
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !466

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !416
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !266

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !481
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !477
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !482

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.27", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !476
  %23 = load i8, ptr %9, align 8, !tbaa !483, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !484

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !418
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(176) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !479
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !485, !llvm.loop !486

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !477
  %40 = load i32, ptr %4, align 8, !tbaa !416
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !487, !llvm.loop !488

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.28", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !481
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !489
  store ptr %7, ptr %2, align 8, !tbaa !426
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !427
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !427
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !428
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !430
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !490
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !427
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !491

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !426
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !427
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.20", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !426
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !492
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !490
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !490
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !126

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !430
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !494
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !490
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !489
  %23 = load i8, ptr %9, align 8, !tbaa !495, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !432
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !492
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !496

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !490
  %40 = load i32, ptr %4, align 8, !tbaa !430
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !497

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !494
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !438
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.31", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !498
  store ptr %7, ptr %2, align 8, !tbaa !438
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !439
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !439
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !440
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !442
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !499
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !439
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !500

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !438
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !439
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.22", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !438
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !501
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !499
  %5 = load ptr, ptr %2, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !499
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !502
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %48, label %3, !prof !126

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !442
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !503
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !499
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.31", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !498
  %23 = load i8, ptr %9, align 8, !tbaa !504, !range !153, !noundef !154
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !444
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !501
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #14
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !505

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !499
  %40 = load i32, ptr %4, align 8, !tbaa !442
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !92
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !506

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.32", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !503
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEC2EPNS_10NameIdPoolIS1_EEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !447
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !450
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !453
  tail call void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !450
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !451
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !447
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !507
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.33", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !509
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.33", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !511
  %8 = load ptr, ptr %0, align 8, !tbaa !512
  %9 = load ptr, ptr %5, align 8, !tbaa !88
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.33", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !509
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.34", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !514
  %23 = load ptr, ptr %20, align 8, !tbaa !88
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.34", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !515

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #14
          to label %2 unwind label %25

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !516
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !393
  %6 = load ptr, ptr %3, align 8, !tbaa !88
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #14
          to label %9 unwind label %25

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !516
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !473
  %13 = load ptr, ptr %10, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #14
          to label %16 unwind label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !517
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !88
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !518 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !472
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !266

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %39, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !388
  ret void

10:                                               ; preds = %5, %39
  %11 = phi i32 [ %3, %5 ], [ %40, %39 ]
  %12 = phi i64 [ 0, %5 ], [ %43, %39 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !473
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17, !prof !519

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !469
  %21 = load i8, ptr %7, align 8, !tbaa !520, !range !153, !noundef !154
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23, !prof !391

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !521
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !88
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(147) %24) #15
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !516
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %18) #14
  %35 = icmp eq ptr %20, null
  br i1 %35, label %36, label %17, !prof !522, !llvm.loop !523

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !tbaa !473
  %38 = load i32, ptr %2, align 8, !tbaa !472
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %38, %36 ], [ %11, %10 ]
  %41 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  store ptr null, ptr %42, align 8, !tbaa !92
  %43 = add nuw nsw i64 %12, 1
  %44 = zext i32 %40 to i64
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %10, label %8, !prof !524, !llvm.loop !525
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel13getComponentsENS_11XSConstants14COMPONENT_TYPEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, i32 noundef %1) local_unnamed_addr #10 align 2 !prof !81 {
  %3 = add nsw i32 %1, -1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel24getComponentsByNamespaceENS_11XSConstants14COMPONENT_TYPEEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem13getComponentsENS_11XSConstants14COMPONENT_TYPEE(ptr noundef nonnull align 8 dereferenceable(264) %6, i32 noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !81 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %9 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %4, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !275
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %9, %3
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem13getComponentsENS_11XSConstants14COMPONENT_TYPEE(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel14getAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0) local_unnamed_addr #10 align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel21getElementDeclarationEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem21getElementDeclarationEPKt(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem21getElementDeclarationEPKt(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel23getAttributeDeclarationEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem23getAttributeDeclarationEPKt(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem23getAttributeDeclarationEPKt(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem17getTypeDefinitionEPKt(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem17getTypeDefinitionEPKt(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel17getAttributeGroupEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem17getAttributeGroupEPKt(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem17getAttributeGroupEPKt(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel23getModelGroupDefinitionEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem23getModelGroupDefinitionEPKt(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem23getModelGroupDefinitionEPKt(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel22getNotationDeclarationEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_715XSNamespaceItem22getNotationDeclarationEPKt(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %1) #14
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XSNamespaceItem22getNotationDeclarationEPKt(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel15getXSObjectByIdEjNS_11XSConstants14COMPONENT_TYPEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !81 {
  %4 = add nsw i32 %2, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 3, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !92
  %12 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %1) #14
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !155
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(298) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !81 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %9 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16getObjectFromMapEPv(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %4, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !275
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %9, %3
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16getObjectFromMapEPv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !526
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !317
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!80}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!36 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, i64 188746}
!37 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @__cxa_allocate_exception, i64 1}
!38 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 2}
!40 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!42 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 188746}
!44 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, i64 188746}
!45 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_allocate_exception, i64 1}
!46 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!47 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_throw, i64 1}
!48 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_free_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, i64 9}
!50 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 9}
!51 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv, i64 12}
!52 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 108}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7cleanupEv, i64 2}
!54 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE9removeAllEv, i64 2}
!55 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE7isEmptyEv, i64 2}
!56 = !{ptr @_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @__cxa_allocate_exception, i64 2}
!58 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!59 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @__cxa_throw, i64 1}
!60 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @__cxa_free_exception, i64 1}
!61 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev, i64 1}
!62 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, i64 1}
!63 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, i64 1}
!64 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv, i64 1}
!65 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev, i64 1}
!66 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!67 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv, i64 1}
!68 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv, i64 1}
!69 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv, i64 1}
!70 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, i64 1}
!71 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, i64 1}
!72 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv, i64 1}
!73 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, i64 1}
!74 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, i64 1}
!75 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv, i64 1}
!76 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, i64 1}
!77 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, i64 1}
!78 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !84, i64 0}
!83 = !{!"_ZTSN11xercesc_2_77XSModelE", !84, i64 0, !84, i64 8, !84, i64 16, !85, i64 24, !85, i64 136, !84, i64 248, !84, i64 256, !84, i64 264, !84, i64 272, !84, i64 280, !84, i64 288, !87, i64 296, !87, i64 297}
!84 = !{!"any pointer", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C++ TBAA"}
!87 = !{!"bool", !85, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"vtable pointer", !86, i64 0}
!90 = !{!83, !84, i64 248}
!91 = !{!83, !84, i64 272}
!92 = !{!84, !84, i64 0}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!83, !84, i64 8}
!96 = !{!83, !84, i64 16}
!97 = !{!83, !84, i64 256}
!98 = !{!83, !84, i64 264}
!99 = distinct !{!99, !94}
!100 = distinct !{!100, !94}
!101 = !{!"function_entry_count", i64 5836268}
!102 = !{!103, !84, i64 0}
!103 = !{!"_ZTSN11xercesc_2_710XSNamedMapINS_8XSObjectEEE", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24}
!104 = !{!103, !84, i64 8}
!105 = !{!103, !84, i64 16}
!106 = !{!103, !84, i64 24}
!107 = !{!"function_entry_count", i64 188746}
!108 = !{!109, !84, i64 0}
!109 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XSNamespaceItemEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!110 = !{!"int", !85, i64 0}
!111 = !{!109, !87, i64 8}
!112 = !{!109, !84, i64 16}
!113 = !{!109, !110, i64 24}
!114 = !{!109, !110, i64 28}
!115 = !{!109, !110, i64 32}
!116 = !{!109, !84, i64 40}
!117 = !{!"function_entry_count", i64 5}
!118 = !{!119, !84, i64 16}
!119 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE", !120, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!120 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE"}
!121 = !{!"branch_weights", i32 2, i32 5}
!122 = !{!119, !110, i64 24}
!123 = !{!119, !84, i64 32}
!124 = !{!125, !110, i64 24}
!125 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_7GrammarEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!126 = !{!"branch_weights", i32 2, i32 1}
!127 = !{!"function_entry_count", i64 2}
!128 = !{!"branch_weights", i32 3, i32 1}
!129 = !{!119, !84, i64 40}
!130 = !{!131, !84, i64 0}
!131 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!132 = !{!"function_entry_count", i64 1231717351}
!133 = !{!"branch_weights", i32 621, i32 -1469098093}
!134 = !{!135, !135, i64 0}
!135 = !{!"short", !85, i64 0}
!136 = !{!"branch_weights", i32 408901017, i32 1}
!137 = !{!"branch_weights", i32 267, i32 4}
!138 = !{!"branch_weights", i32 1, i32 4}
!139 = !{!"branch_weights", i32 156, i32 112}
!140 = !{!"branch_weights", i32 1, i32 112}
!141 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!142 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!143 = distinct !{!143, !94}
!144 = !{!"function_entry_count", i64 558789}
!145 = !{!"branch_weights", i32 158605, i32 400186}
!146 = !{!"function_entry_count", i64 188992}
!147 = !{!148, !84, i64 24}
!148 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !87, i64 8, !110, i64 12, !110, i64 16, !84, i64 24, !84, i64 32}
!149 = !{!148, !110, i64 12}
!150 = !{!151, !84, i64 24}
!151 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE", !87, i64 8, !110, i64 12, !110, i64 16, !84, i64 24, !84, i64 32}
!152 = !{!151, !110, i64 12}
!153 = !{i8 0, i8 2}
!154 = !{}
!155 = !{!156, !84, i64 0}
!156 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XSNamespaceItemEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!157 = !{!156, !84, i64 16}
!158 = !{!110, !110, i64 0}
!159 = distinct !{!159, !94}
!160 = !{!83, !87, i64 297}
!161 = !{!162, !84, i64 8}
!162 = !{!"_ZTSN11xercesc_2_715XSNamespaceItemE", !84, i64 0, !84, i64 8, !84, i64 16, !85, i64 24, !84, i64 136, !85, i64 144, !84, i64 256}
!163 = distinct !{!163, !94}
!164 = distinct !{!164, !94}
!165 = distinct !{!165, !94}
!166 = distinct !{!166, !94}
!167 = distinct !{!167, !94}
!168 = distinct !{!168, !94}
!169 = distinct !{!169, !94}
!170 = !{!162, !84, i64 136}
!171 = distinct !{!171, !94}
!172 = !{!151, !84, i64 32}
!173 = !{!"function_entry_count", i64 1}
!174 = !{!119, !87, i64 8}
!175 = !{!176, !84, i64 0}
!176 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_8XSObjectEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !84, i64 32}
!177 = !{!176, !87, i64 8}
!178 = !{!176, !84, i64 16}
!179 = !{!176, !110, i64 24}
!180 = !{!176, !110, i64 28}
!181 = !{!176, !84, i64 32}
!182 = distinct !{!182, !94}
!183 = !{!184, !84, i64 40}
!184 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !185, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!185 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !85, i64 0}
!186 = !{!187, !87, i64 8}
!187 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE", !87, i64 8, !110, i64 12, !110, i64 16, !84, i64 24, !84, i64 32}
!188 = !{!187, !110, i64 12}
!189 = !{!187, !110, i64 16}
!190 = !{!187, !84, i64 24}
!191 = !{!187, !84, i64 32}
!192 = distinct !{!192, !94}
!193 = distinct !{!193, !94}
!194 = distinct !{!194, !94}
!195 = distinct !{!195, !94}
!196 = distinct !{!196, !94}
!197 = !{!148, !87, i64 8}
!198 = !{!148, !110, i64 16}
!199 = !{!148, !84, i64 32}
!200 = !{!"branch_weights", i32 1, i32 188746}
!201 = !{!"branch_weights", i32 188746, i32 566295}
!202 = distinct !{!202, !94}
!203 = !{!"branch_weights", i32 7, i32 188741}
!204 = !{!"branch_weights", i32 1, i32 188740}
!205 = !{!"branch_weights", i32 253, i32 188740}
!206 = distinct !{!206, !94}
!207 = !{!"function_entry_count", i64 317171}
!208 = !{!"branch_weights", i32 317172, i32 1}
!209 = !{!"branch_weights", i32 1, i32 317172}
!210 = distinct !{!210, !94}
!211 = distinct !{!211, !94}
!212 = distinct !{!212, !94}
!213 = distinct !{!213, !94}
!214 = distinct !{!214, !94}
!215 = distinct !{!215, !94}
!216 = !{!151, !87, i64 8}
!217 = !{!151, !110, i64 16}
!218 = distinct !{!218, !94}
!219 = distinct !{!219, !94}
!220 = distinct !{!220, !94}
!221 = distinct !{!221, !94}
!222 = distinct !{!222, !94}
!223 = !{!224, !87, i64 8}
!224 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12XSAnnotationEEE", !87, i64 8, !110, i64 12, !110, i64 16, !84, i64 24, !84, i64 32}
!225 = !{!224, !110, i64 12}
!226 = !{!224, !110, i64 16}
!227 = !{!224, !84, i64 24}
!228 = !{!224, !84, i64 32}
!229 = distinct !{!229, !94}
!230 = distinct !{!230, !94}
!231 = distinct !{!231, !94}
!232 = distinct !{!232, !94}
!233 = distinct !{!233, !94}
!234 = distinct !{!234, !94}
!235 = !{!"function_entry_count", i64 3}
!236 = !{!"branch_weights", i32 2, i32 3}
!237 = !{!131, !84, i64 8}
!238 = !{!"branch_weights", i32 1431655765, i32 715827883}
!239 = !{!125, !84, i64 16}
!240 = !{!"branch_weights", i32 28, i32 3}
!241 = !{!"branch_weights", i32 2, i32 27}
!242 = distinct !{!242, !94}
!243 = !{!"function_entry_count", i64 2453164456}
!244 = !{!"branch_weights", i32 1, i32 -1841802839}
!245 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!246 = !{!"branch_weights", i32 408669070, i32 -279908792}
!247 = distinct !{!247, !94}
!248 = !{!"branch_weights", i32 10, i32 188984}
!249 = !{!"branch_weights", i32 1, i32 159}
!250 = !{!"branch_weights", i32 159, i32 1}
!251 = !{!"branch_weights", i32 159, i32 9329}
!252 = distinct !{!252, !94}
!253 = distinct !{!253, !94}
!254 = !{!156, !84, i64 8}
!255 = distinct !{!255, !94}
!256 = distinct !{!256, !94}
!257 = distinct !{!257, !94}
!258 = !{!259, !84, i64 0}
!259 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_15XSNamespaceItemEEEEE", !84, i64 0, !84, i64 8}
!260 = !{!259, !84, i64 8}
!261 = !{!"function_entry_count", i64 9}
!262 = !{!125, !84, i64 0}
!263 = !{!125, !84, i64 40}
!264 = !{!"function_entry_count", i64 12}
!265 = !{!"branch_weights", i32 10, i32 4}
!266 = !{!"branch_weights", i32 1, i32 127}
!267 = !{!125, !110, i64 32}
!268 = !{!"branch_weights", i32 83, i32 5}
!269 = !{!125, !87, i64 8}
!270 = !{!"branch_weights", i32 1, i32 5}
!271 = !{!"branch_weights", i32 5, i32 0}
!272 = distinct !{!272, !94}
!273 = !{!"branch_weights", i32 2689, i32 127}
!274 = distinct !{!274, !94}
!275 = !{!83, !84, i64 288}
!276 = !{!83, !87, i64 296}
!277 = distinct !{!277, !94}
!278 = !{!83, !84, i64 280}
!279 = distinct !{!279, !94}
!280 = distinct !{!280, !94}
!281 = distinct !{!281, !94}
!282 = distinct !{!282, !94}
!283 = distinct !{!283, !94}
!284 = distinct !{!284, !94}
!285 = distinct !{!285, !94}
!286 = !{!"function_entry_count", i64 4}
!287 = !{!288, !84, i64 8}
!288 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !87, i64 0, !87, i64 1, !87, i64 2, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72}
!289 = !{!162, !84, i64 256}
!290 = !{!288, !84, i64 72}
!291 = !{!292, !110, i64 4}
!292 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_13SchemaGrammarEEE", !87, i64 0, !110, i64 4, !110, i64 8, !84, i64 16, !84, i64 24}
!293 = !{!292, !84, i64 24}
!294 = !{!292, !84, i64 16}
!295 = !{!296, !84, i64 0}
!296 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_8XSObjectEEE", !84, i64 0, !84, i64 8, !84, i64 16, !110, i64 24}
!297 = !{!296, !84, i64 16}
!298 = !{!296, !110, i64 24}
!299 = !{!296, !84, i64 8}
!300 = distinct !{!300, !94}
!301 = distinct !{!301, !94}
!302 = distinct !{!302, !94}
!303 = !{!304, !84, i64 0}
!304 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_8XSObjectEEEEE", !84, i64 0, !84, i64 8}
!305 = !{!304, !84, i64 8}
!306 = distinct !{!306, !94}
!307 = distinct !{!307, !94}
!308 = distinct !{!308, !94}
!309 = distinct !{!309, !94}
!310 = distinct !{!310, !94}
!311 = distinct !{!311, !94}
!312 = distinct !{!312, !94}
!313 = !{!314, !110, i64 24}
!314 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_8XSObjectEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!315 = !{!314, !110, i64 32}
!316 = !{!314, !87, i64 8}
!317 = !{!318, !84, i64 0}
!318 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!319 = !{!318, !84, i64 16}
!320 = !{!314, !84, i64 0}
!321 = !{!314, !84, i64 16}
!322 = !{!318, !84, i64 8}
!323 = !{!314, !84, i64 40}
!324 = distinct !{!324, !94}
!325 = distinct !{!325, !94}
!326 = distinct !{!326, !94}
!327 = !{!328, !84, i64 0}
!328 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEE", !84, i64 0, !84, i64 8}
!329 = !{!328, !84, i64 8}
!330 = !{!"function_entry_count", i64 108}
!331 = !{!"branch_weights", i32 1, i32 109}
!332 = !{!333, !84, i64 0}
!333 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!334 = !{!335, !87, i64 8}
!335 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_17DatatypeValidatorEEE", !336, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!336 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_17DatatypeValidatorEEE"}
!337 = !{!335, !84, i64 16}
!338 = !{!335, !110, i64 24}
!339 = !{!335, !84, i64 32}
!340 = !{!335, !84, i64 40}
!341 = !{!342, !110, i64 24}
!342 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!343 = !{!"function_entry_count", i64 170}
!344 = !{!342, !84, i64 40}
!345 = !{!342, !84, i64 0}
!346 = !{!342, !84, i64 16}
!347 = !{!"branch_weights", i32 1, i32 251}
!348 = !{!333, !84, i64 16}
!349 = !{!"branch_weights", i32 109, i32 30}
!350 = !{!"branch_weights", i32 251, i32 301}
!351 = distinct !{!351, !94}
!352 = !{!333, !84, i64 8}
!353 = distinct !{!353, !94}
!354 = !{!"branch_weights", i32 1, i32 3}
!355 = !{!"branch_weights", i32 1, i32 191}
!356 = !{!342, !110, i64 32}
!357 = !{!"branch_weights", i32 83, i32 63}
!358 = !{!342, !87, i64 8}
!359 = !{!"branch_weights", i32 1, i32 63}
!360 = !{!"branch_weights", i32 63, i32 0}
!361 = distinct !{!361, !94}
!362 = !{!"branch_weights", i32 9153, i32 191}
!363 = distinct !{!363, !94}
!364 = !{!365, !84, i64 48}
!365 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !366, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !87, i64 128, !368, i64 136}
!366 = !{!"_ZTSN11xercesc_2_77GrammarE", !367, i64 0}
!367 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!368 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !367, i64 0, !84, i64 8, !84, i64 16}
!369 = !{!370, !87, i64 8}
!370 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_9XMLAttDefEEE", !371, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!371 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_9XMLAttDefEEE"}
!372 = !{!370, !84, i64 16}
!373 = !{!370, !110, i64 24}
!374 = !{!370, !84, i64 32}
!375 = !{!370, !84, i64 40}
!376 = !{!377, !110, i64 24}
!377 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!378 = !{!379, !84, i64 0}
!379 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!380 = !{!365, !84, i64 16}
!381 = !{!365, !84, i64 104}
!382 = !{!"function_entry_count", i64 80}
!383 = !{!384, !110, i64 12}
!384 = !{!"_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE", !385, i64 0, !87, i64 8, !110, i64 12, !84, i64 16, !84, i64 24, !110, i64 32, !84, i64 40}
!385 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE"}
!386 = !{!"branch_weights", i32 1, i32 81}
!387 = !{!384, !84, i64 16}
!388 = !{!389, !110, i64 52}
!389 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40, !110, i64 48, !110, i64 52}
!390 = !{!"function_entry_count", i64 79}
!391 = !{!"branch_weights", i32 1, i32 80}
!392 = !{!384, !84, i64 40}
!393 = !{!389, !84, i64 40}
!394 = !{!"function_entry_count", i64 157}
!395 = !{!396, !110, i64 52}
!396 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !397, i64 0, !399, i64 36, !400, i64 40, !401, i64 44, !402, i64 48, !110, i64 52, !110, i64 56, !110, i64 60, !110, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !84, i64 128, !84, i64 136, !87, i64 144, !87, i64 145, !87, i64 146}
!397 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !367, i64 0, !84, i64 8, !84, i64 16, !398, i64 24, !110, i64 28, !87, i64 32}
!398 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !85, i64 0}
!399 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !85, i64 0}
!400 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !85, i64 0}
!401 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !85, i64 0}
!402 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !85, i64 0}
!403 = !{!368, !84, i64 8}
!404 = !{!405, !87, i64 8}
!405 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !367, i64 0, !87, i64 8, !87, i64 9, !87, i64 10, !87, i64 11, !135, i64 12, !110, i64 16, !110, i64 20, !110, i64 24, !406, i64 28, !407, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96}
!406 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !85, i64 0}
!407 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !85, i64 0}
!408 = !{!365, !84, i64 56}
!409 = !{!410, !87, i64 8}
!410 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE", !411, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!411 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE"}
!412 = !{!410, !84, i64 16}
!413 = !{!410, !110, i64 24}
!414 = !{!410, !84, i64 32}
!415 = !{!410, !84, i64 40}
!416 = !{!417, !110, i64 24}
!417 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!418 = !{!419, !84, i64 0}
!419 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15ComplexTypeInfoEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!420 = !{!421, !87, i64 8}
!421 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !367, i64 0, !87, i64 8, !87, i64 9, !87, i64 10, !87, i64 11, !87, i64 12, !110, i64 16, !110, i64 20, !110, i64 24, !110, i64 28, !110, i64 32, !110, i64 36, !110, i64 40, !110, i64 44, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !84, i64 128, !84, i64 136, !84, i64 144, !84, i64 152, !84, i64 160, !84, i64 168}
!422 = !{!365, !84, i64 72}
!423 = !{!424, !87, i64 8}
!424 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_18XercesAttGroupInfoEEE", !425, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!425 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_18XercesAttGroupInfoEEE"}
!426 = !{!424, !84, i64 16}
!427 = !{!424, !110, i64 24}
!428 = !{!424, !84, i64 32}
!429 = !{!424, !84, i64 40}
!430 = !{!431, !110, i64 24}
!431 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!432 = !{!433, !84, i64 0}
!433 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_18XercesAttGroupInfoEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!434 = !{!365, !84, i64 64}
!435 = !{!436, !87, i64 8}
!436 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE", !437, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !84, i64 32, !84, i64 40}
!437 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE"}
!438 = !{!436, !84, i64 16}
!439 = !{!436, !110, i64 24}
!440 = !{!436, !84, i64 32}
!441 = !{!436, !84, i64 40}
!442 = !{!443, !110, i64 24}
!443 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!444 = !{!445, !84, i64 0}
!445 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XercesGroupInfoEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!446 = !{!365, !84, i64 40}
!447 = !{!448, !110, i64 8}
!448 = !{!"_ZTSN11xercesc_2_720NameIdPoolEnumeratorINS_15XMLNotationDeclEEE", !449, i64 0, !110, i64 8, !84, i64 16, !84, i64 24}
!449 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15XMLNotationDeclEEE"}
!450 = !{!448, !84, i64 16}
!451 = !{!452, !110, i64 28}
!452 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !84, i64 0, !84, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32}
!453 = !{!448, !84, i64 24}
!454 = !{!452, !84, i64 16}
!455 = !{!365, !84, i64 120}
!456 = !{!384, !87, i64 8}
!457 = !{!379, !84, i64 8}
!458 = !{!377, !84, i64 16}
!459 = distinct !{!459, !94}
!460 = !{!377, !84, i64 0}
!461 = !{!377, !84, i64 40}
!462 = !{!377, !110, i64 32}
!463 = !{!377, !87, i64 8}
!464 = distinct !{!464, !94}
!465 = distinct !{!465, !94}
!466 = !{!"branch_weights", i32 1, i32 2}
!467 = !{!384, !110, i64 32}
!468 = !{!384, !84, i64 24}
!469 = !{!470, !84, i64 8}
!470 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !84, i64 0, !84, i64 8, !84, i64 16, !110, i64 24, !110, i64 28}
!471 = !{!"branch_weights", i32 0, i32 -2147483648}
!472 = !{!389, !110, i64 24}
!473 = !{!389, !84, i64 16}
!474 = !{!"branch_weights", i32 4, i32 2}
!475 = distinct !{!475, !94}
!476 = !{!419, !84, i64 8}
!477 = !{!417, !84, i64 16}
!478 = distinct !{!478, !94}
!479 = !{!417, !84, i64 0}
!480 = !{!417, !84, i64 40}
!481 = !{!417, !110, i64 32}
!482 = !{!"branch_weights", i32 28, i32 31}
!483 = !{!417, !87, i64 8}
!484 = !{!"branch_weights", i32 1, i32 31}
!485 = !{!"branch_weights", i32 31, i32 0}
!486 = distinct !{!486, !94}
!487 = !{!"branch_weights", i32 3649, i32 127}
!488 = distinct !{!488, !94}
!489 = !{!433, !84, i64 8}
!490 = !{!431, !84, i64 16}
!491 = distinct !{!491, !94}
!492 = !{!431, !84, i64 0}
!493 = !{!431, !84, i64 40}
!494 = !{!431, !110, i64 32}
!495 = !{!431, !87, i64 8}
!496 = distinct !{!496, !94}
!497 = distinct !{!497, !94}
!498 = !{!445, !84, i64 8}
!499 = !{!443, !84, i64 16}
!500 = distinct !{!500, !94}
!501 = !{!443, !84, i64 0}
!502 = !{!443, !84, i64 40}
!503 = !{!443, !110, i64 32}
!504 = !{!443, !87, i64 8}
!505 = distinct !{!505, !94}
!506 = distinct !{!506, !94}
!507 = !{!508, !84, i64 0}
!508 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!509 = !{!510, !84, i64 40}
!510 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !84, i64 0, !87, i64 8, !84, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !84, i64 40}
!511 = !{!510, !110, i64 24}
!512 = !{!510, !84, i64 0}
!513 = !{!510, !84, i64 16}
!514 = !{!508, !84, i64 16}
!515 = distinct !{!515, !94}
!516 = !{!389, !84, i64 0}
!517 = !{!389, !84, i64 32}
!518 = !{!"function_entry_count", i64 7}
!519 = !{!"branch_weights", i32 444, i32 80}
!520 = !{!389, !87, i64 8}
!521 = !{!470, !84, i64 0}
!522 = !{!"branch_weights", i32 80, i32 0}
!523 = distinct !{!523, !94}
!524 = !{!"branch_weights", i32 8257, i32 127}
!525 = distinct !{!525, !94}
!526 = !{!527, !84, i64 8}
!527 = !{!"_ZTSN11xercesc_2_715XSObjectFactoryE", !84, i64 0, !84, i64 8, !84, i64 16}
