; ModuleID = 'XSObjectFactory.cpp'
source_filename = "XSObjectFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSObjectFactory" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.10" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSNamespaceItem" = type { ptr, ptr, ptr, [14 x ptr], ptr, [14 x ptr], ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSElementDeclaration" = type { %"class.xercesc_2_7::XSObject.base", i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::BaseRefVectorOf.16" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSNamedMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.26" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSAttributeDeclaration" = type { %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::UnionDatatypeValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.5" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSSimpleTypeDefinition" = type { %"class.xercesc_2_7::XSTypeDefinition", i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSTypeDefinition" = type { %"class.xercesc_2_7::XSObject.base", i32, i16, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::XMLStringTokenizer" = type { i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.12" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.14" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.30" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.8" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSFacet" = type { %"class.xercesc_2_7::XSObject.base", i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSMultiValueFacet" = type { %"class.xercesc_2_7::XSObject.base", i32, i8, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.20" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IC_Field" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::IC_KeyRef" = type { %"class.xercesc_2_7::IdentityConstraint.base", ptr }
%"class.xercesc_2_7::IdentityConstraint.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32 }>
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.7" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.18" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.24" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XercesGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesAttGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.22" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.23" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.27" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.28" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.29" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED0Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED0Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_10XSParticleEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_10XSParticleEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7XSFacetEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7XSFacetEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_7L14regexSeparatorE = internal global [2 x i16] [i16 124, i16 0], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant [44 x i8] c"N11xercesc_2_711RefVectorOfINS_8XSObjectEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_10XSParticleEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_711RefVectorOfINS_10XSParticleEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_10XSParticleEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE = linkonce_odr dso_local constant [59 x i8] c"N11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE = linkonce_odr dso_local constant [63 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7XSFacetEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7XSFacetEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7XSFacetEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE = linkonce_odr dso_local constant [58 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant [62 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@switch.table._ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 0, i32 2], align 4

@_ZN11xercesc_2_715XSObjectFactoryC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715XSObjectFactoryC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_715XSObjectFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XSObjectFactoryD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactoryC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr %1, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 1
  store i8 1, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 3
  store i32 20, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 5
  store ptr %1, ptr %10, align 8, !tbaa !55
  %11 = load ptr, ptr %1, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 160)
          to label %15 unwind label %49

15:                                               ; preds = %2
  store ptr %14, ptr %9, align 8, !tbaa !54
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ 0, %15 ], [ %20, %16 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !54
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  store ptr null, ptr %19, align 8, !tbaa !56
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, 20
  br i1 %21, label %22, label %16, !llvm.loop !57

22:                                               ; preds = %16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !46
  store ptr %5, ptr %4, align 8, !tbaa !60
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef nonnull %1)
  %24 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef nonnull %1)
          to label %25 unwind label %51

25:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %26 unwind label %53

26:                                               ; preds = %25
  store ptr %1, ptr %23, align 8, !tbaa !61
  %27 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 1
  store i8 0, ptr %27, align 8, !tbaa !63
  %28 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !64
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 3
  store i32 109, ptr %29, align 8, !tbaa !65
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 4
  store i32 109, ptr %30, align 4, !tbaa !66
  %31 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 5
  store i32 0, ptr %31, align 8, !tbaa !67
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 6
  store ptr null, ptr %32, align 8, !tbaa !68
  %33 = load ptr, ptr %1, align 8, !tbaa !46
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 872)
          to label %37 unwind label %51

37:                                               ; preds = %26
  store ptr %36, ptr %28, align 8, !tbaa !64
  %38 = load i32, ptr %29, align 8, !tbaa !65
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = zext i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %46, %42 ]
  %44 = load ptr, ptr %28, align 8, !tbaa !64
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  store ptr null, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %43, 1
  %47 = icmp eq i64 %46, %41
  br i1 %47, label %48, label %42, !llvm.loop !69

48:                                               ; preds = %42, %37
  store ptr %24, ptr %32, align 8, !tbaa !68
  store ptr %23, ptr %3, align 8, !tbaa !70
  ret void

49:                                               ; preds = %2
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %5, ptr noundef nonnull %1) #13
  br label %57

51:                                               ; preds = %26, %22
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %55

53:                                               ; preds = %25
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef nonnull %1) #13
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef nonnull %1) #13
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %50, %49 ]
  resume { ptr, i32 } %58
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactoryD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %9 unwind label %6

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #14
  unreachable

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #13
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %12) #13
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !71
  switch i32 %7, label %62 [
    i32 36, label %8
    i32 21, label %8
    i32 9, label %8
  ]

8:                                                ; preds = %5, %5, %5
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %9)
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 1
  store i8 1, ptr %12, align 8, !tbaa !75
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 2
  store i32 0, ptr %13, align 4, !tbaa !77
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 3
  store i32 4, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 4
  store ptr null, ptr %15, align 8, !tbaa !79
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %10, i64 0, i32 5
  store ptr %11, ptr %16, align 8, !tbaa !80
  %17 = load ptr, ptr %11, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32)
          to label %21 unwind label %35

21:                                               ; preds = %8
  store ptr %20, ptr %15, align 8, !tbaa !79
  br label %22

22:                                               ; preds = %21, %22
  %23 = phi i64 [ 0, %21 ], [ %26, %22 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !79
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr null, ptr %25, align 8, !tbaa !56
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %22, !llvm.loop !81

28:                                               ; preds = %22
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !46
  %29 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %1)
  %30 = load ptr, ptr %0, align 8, !tbaa !41
  %31 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %30)
  %32 = load ptr, ptr %0, align 8, !tbaa !41
  switch i32 %7, label %42 [
    i32 9, label %33
    i32 36, label %39
  ]

33:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %31, i32 noundef 3, ptr noundef nonnull %10, ptr noundef %29, ptr noundef %2, ptr noundef %32)
          to label %34 unwind label %37

34:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef %2)
  br label %50

35:                                               ; preds = %8
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %10, ptr noundef %9) #13
  br label %60

37:                                               ; preds = %33
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #13
  br label %60

39:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %31, i32 noundef 2, ptr noundef nonnull %10, ptr noundef %29, ptr noundef %2, ptr noundef %32)
          to label %45 unwind label %40

40:                                               ; preds = %39
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #13
  br label %60

42:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %31, i32 noundef 1, ptr noundef nonnull %10, ptr noundef %29, ptr noundef %2, ptr noundef %32)
          to label %45 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #13
  br label %60

45:                                               ; preds = %42, %39
  %46 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %47, ptr noundef nonnull %10, ptr noundef %2)
  %48 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %49, ptr noundef nonnull %10, ptr noundef %2)
  br label %50

50:                                               ; preds = %45, %34
  %51 = load ptr, ptr %0, align 8, !tbaa !41
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %51)
  %53 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !84
  %55 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %56 = load i32, ptr %55, align 4, !tbaa !85
  %57 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %52, i32 noundef 6, ptr noundef %2, ptr noundef %31, i32 noundef %54, i32 noundef %56, ptr noundef %57)
          to label %62 unwind label %58

58:                                               ; preds = %50
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %51) #13
  br label %60

60:                                               ; preds = %37, %40, %43, %58, %35
  %61 = phi { ptr, i32 } [ %36, %35 ], [ %59, %58 ], [ %38, %37 ], [ %41, %40 ], [ %44, %43 ]
  resume { ptr, i32 } %61

62:                                               ; preds = %50, %5, %3
  %63 = phi ptr [ null, %3 ], [ %52, %50 ], [ null, %5 ]
  ret ptr %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !40 {
  br label %4

4:                                                ; preds = %35, %3
  %5 = phi ptr [ %1, %3 ], [ %37, %35 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !88
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %32

11:                                               ; preds = %29
  %12 = add nuw i32 %18, 1
  %13 = load i32, ptr %8, align 4, !tbaa !88
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %32, !llvm.loop !90

15:                                               ; preds = %4, %11
  %16 = phi i1 [ %14, %11 ], [ %10, %4 ]
  %17 = phi ptr [ %31, %11 ], [ undef, %4 ]
  %18 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %19 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %18)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %21, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef %2)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %23, %28
  %30 = phi i1 [ true, %28 ], [ false, %23 ]
  %31 = phi ptr [ %17, %28 ], [ %26, %23 ]
  br i1 %30, label %11, label %32

32:                                               ; preds = %29, %11, %4
  %33 = phi i1 [ %10, %4 ], [ %16, %29 ], [ %14, %11 ]
  %34 = phi ptr [ undef, %4 ], [ %31, %11 ], [ %31, %29 ]
  br i1 %33, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %5, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %4

39:                                               ; preds = %35, %32
  %40 = phi ptr [ %34, %32 ], [ null, %35 ]
  ret ptr %40
}

declare void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !40 {
  br label %5

5:                                                ; preds = %9, %4
  %6 = phi ptr [ %1, %4 ], [ %11, %9 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !71
  switch i32 %8, label %26 [
    i32 9, label %9
    i32 0, label %15
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %13, ptr noundef %2, ptr noundef %3)
  %14 = icmp eq ptr %11, null
  br i1 %14, label %26, label %5

15:                                               ; preds = %5
  %16 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !77
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  store ptr %16, ptr %24, align 8, !tbaa !56
  %25 = add i32 %22, 1
  store i32 %25, ptr %21, align 4, !tbaa !77
  br label %26

26:                                               ; preds = %15, %18, %5, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !40 {
  br label %5

5:                                                ; preds = %16, %11, %4
  %6 = phi ptr [ %1, %4 ], [ %15, %11 ], [ %20, %16 ]
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !71
  switch i32 %10, label %21 [
    i32 5, label %11
    i32 4, label %16
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %13, ptr noundef %2, ptr noundef %3)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  br label %5

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %18, ptr noundef %2, ptr noundef %3)
  %19 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %6, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  br label %5

21:                                               ; preds = %8
  %22 = and i32 %10, 14
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = and i32 %10, 15
  %26 = icmp eq i32 %25, 8
  %27 = icmp eq i32 %10, 20
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %40

29:                                               ; preds = %21, %24
  %30 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22createWildcardParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef %3)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %29
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !77
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  store ptr %30, ptr %38, align 8, !tbaa !56
  %39 = add i32 %36, 1
  store i32 %39, ptr %35, align 4, !tbaa !77
  br label %64

40:                                               ; preds = %24
  %41 = icmp eq i32 %10, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %40
  %43 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef %3)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !79
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !77
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50
  store ptr %43, ptr %51, align 8, !tbaa !56
  %52 = add i32 %49, 1
  store i32 %52, ptr %48, align 4, !tbaa !77
  br label %64

53:                                               ; preds = %40
  %54 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef %3)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  %57 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !79
  %59 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %2, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !77
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  store ptr %54, ptr %62, align 8, !tbaa !56
  %63 = add i32 %60, 1
  store i32 %63, ptr %59, align 4, !tbaa !77
  br label %64

64:                                               ; preds = %32, %29, %45, %42, %56, %53, %5
  ret void
}

declare void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef null)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !84
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !85
  %17 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %14, i32 noundef %16, ptr noundef %17)
          to label %20 unwind label %18

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  resume { ptr, i32 } %19

20:                                               ; preds = %7, %10
  %21 = phi ptr [ %12, %10 ], [ undef, %7 ]
  br i1 %9, label %22, label %23

22:                                               ; preds = %20, %3
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi ptr [ %21, %20 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory22createWildcardParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !41
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7)
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %8, i32 noundef 9, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %10, i32 noundef %12, ptr noundef %13)
          to label %16 unwind label %14

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  resume { ptr, i32 } %15

16:                                               ; preds = %3, %6
  %17 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %3, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %129

13:                                               ; preds = %7
  store ptr %3, ptr %8, align 8, !tbaa !99
  br label %129

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %16, ptr noundef nonnull %2, ptr noundef null)
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ null, %14 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %27, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %31

31:                                               ; preds = %29, %25, %20
  %32 = phi ptr [ null, %20 ], [ %30, %29 ], [ null, %25 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !116
  br label %39

39:                                               ; preds = %31, %36
  %40 = phi i32 [ %38, %36 ], [ 0, %31 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %90, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 8, !tbaa !41
  %44 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %43)
  %45 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %2, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !118
  %47 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %44, i32 noundef %40, i32 noundef 29, ptr noundef %46, i1 noundef zeroext false, ptr noundef %47)
          to label %48 unwind label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %44, i64 0, i32 2
  %50 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %44, i64 0, i32 3
  %51 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %44, i64 0, i32 1
  br label %54

52:                                               ; preds = %42
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #13
  br label %127

54:                                               ; preds = %48, %87
  %55 = phi i32 [ 0, %48 ], [ %88, %87 ]
  %56 = load ptr, ptr %33, align 8, !tbaa !115
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef %55)
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %59, %58 ], [ null, %54 ]
  %62 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %61, ptr noundef nonnull %2)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 8, !tbaa !46
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(72) %62)
  %69 = load ptr, ptr %62, align 8, !tbaa !46
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(72) %62)
  %73 = load ptr, ptr %49, align 8, !tbaa !119
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %73, i32 noundef 1)
  %74 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !121
  %76 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %73, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !123
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %75, i64 %78
  store ptr %62, ptr %79, align 8, !tbaa !56
  %80 = add i32 %77, 1
  store i32 %80, ptr %76, align 4, !tbaa !123
  %81 = load ptr, ptr %50, align 8, !tbaa !124
  %82 = load ptr, ptr %51, align 8, !tbaa !125
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  %84 = getelementptr inbounds ptr, ptr %83, i64 9
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(40) %82, ptr noundef %72)
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef %68, i32 noundef %86, ptr noundef nonnull %62)
  br label %87

87:                                               ; preds = %64, %60
  %88 = add nuw i32 %55, 1
  %89 = icmp eq i32 %88, %40
  br i1 %89, label %90, label %54, !llvm.loop !126

90:                                               ; preds = %87, %39
  %91 = phi ptr [ null, %39 ], [ %44, %87 ]
  %92 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !127
  %94 = load ptr, ptr %0, align 8, !tbaa !41
  %95 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %94)
  %96 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
          to label %97 unwind label %120

97:                                               ; preds = %90
  %98 = icmp eq i32 %93, 2
  %99 = icmp eq i32 %93, 1
  %100 = zext i1 %99 to i32
  %101 = select i1 %98, i32 2, i32 %100
  %102 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %95, ptr noundef nonnull %1, ptr noundef %32, ptr noundef %21, ptr noundef %96, ptr noundef %91, ptr noundef nonnull %2, i32 noundef %101, ptr noundef %3, ptr noundef %102)
          to label %103 unwind label %120

103:                                              ; preds = %97
  %104 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef %1, ptr noundef nonnull %95)
  %106 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %107, i32 noundef 1)
  %108 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !54
  %110 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %107, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !52
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %109, i64 %112
  store ptr %95, ptr %113, align 8, !tbaa !56
  %114 = add i32 %111, 1
  store i32 %114, ptr %110, align 4, !tbaa !52
  %115 = load ptr, ptr %22, align 8, !tbaa !113
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %103
  %118 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %115, ptr noundef nonnull %2)
  %119 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %95, i64 0, i32 5
  store ptr %118, ptr %119, align 8, !tbaa !128
  br label %129

120:                                              ; preds = %97, %90
  %121 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %95, ptr noundef %94) #13
  br label %127

122:                                              ; preds = %103
  %123 = icmp eq ptr %32, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %122
  %125 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  %126 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %95, i64 0, i32 5
  store ptr %125, ptr %126, align 8, !tbaa !128
  br label %129

127:                                              ; preds = %120, %52
  %128 = phi { ptr, i32 } [ %121, %120 ], [ %53, %52 ]
  resume { ptr, i32 } %128

129:                                              ; preds = %117, %124, %122, %7, %13
  %130 = phi ptr [ %5, %13 ], [ %5, %7 ], [ %95, %122 ], [ %95, %124 ], [ %95, %117 ]
  ret ptr %130
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4)
  %6 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %1)
          to label %7 unwind label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef %6, ptr noundef %2, ptr noundef %8)
          to label %9 unwind label %19

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1)
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !52
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %5, ptr %17, align 8, !tbaa !56
  %18 = add i32 %15, 1
  store i32 %18, ptr %14, align 4, !tbaa !52
  ret ptr %5

19:                                               ; preds = %7, %3
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %5, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !129
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = icmp eq ptr %13, null
  %15 = icmp ne ptr %3, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %53

17:                                               ; preds = %11
  store ptr %3, ptr %12, align 8, !tbaa !131
  br label %53

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !132
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %20, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ null, %18 ]
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !138
  %28 = load ptr, ptr %0, align 8, !tbaa !41
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %28)
  %30 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
          to label %31 unwind label %51

31:                                               ; preds = %24
  %32 = icmp eq i32 %27, 1
  %33 = icmp eq i32 %27, 2
  %34 = select i1 %33, ptr %3, ptr null
  %35 = select i1 %32, ptr null, ptr %34
  %36 = select i1 %33, i32 2, i32 0
  %37 = select i1 %32, i32 1, i32 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %29, ptr noundef nonnull %1, ptr noundef %25, ptr noundef %30, ptr noundef nonnull %2, i32 noundef %37, ptr noundef %35, ptr noundef %38)
          to label %39 unwind label %51

39:                                               ; preds = %31
  %40 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef %1, ptr noundef nonnull %29)
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %43, i32 noundef 1)
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !52
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  store ptr %29, ptr %49, align 8, !tbaa !56
  %50 = add i32 %47, 1
  store i32 %50, ptr %46, align 4, !tbaa !52
  br label %53

51:                                               ; preds = %31, %24
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #13
  resume { ptr, i32 } %52

53:                                               ; preds = %7, %11, %17, %39
  %54 = phi ptr [ %5, %17 ], [ %5, %11 ], [ %5, %7 ], [ %29, %39 ]
  ret ptr %54
}

declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %122

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !139
  %10 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  switch i32 %9, label %77 [
    i32 25, label %12
    i32 24, label %62
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !144
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !146
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %19)
  %21 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %20, i64 0, i32 1
  store i8 0, ptr %22, align 8, !tbaa !148
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %20, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !150
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %20, i64 0, i32 3
  store i32 %16, ptr %24, align 8, !tbaa !151
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %20, i64 0, i32 4
  store ptr null, ptr %25, align 8, !tbaa !152
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %20, i64 0, i32 5
  store ptr %21, ptr %26, align 8, !tbaa !153
  %27 = zext i32 %16 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = load ptr, ptr %21, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %28)
          to label %33 unwind label %42

33:                                               ; preds = %18
  store ptr %32, ptr %25, align 8, !tbaa !152
  %34 = zext i32 %16 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %39, %35 ]
  %37 = load ptr, ptr %25, align 8, !tbaa !152
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr null, ptr %38, align 8, !tbaa !56
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, %34
  br i1 %40, label %41, label %35, !llvm.loop !154

41:                                               ; preds = %35
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %20, align 8, !tbaa !46
  br label %44

42:                                               ; preds = %18
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %20, ptr noundef %19) #13
  br label %120

44:                                               ; preds = %41, %44
  %45 = phi i32 [ 0, %41 ], [ %53, %44 ]
  %46 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %45)
  %47 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %46, ptr noundef nonnull %2, i1 noundef zeroext false)
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 1)
  %48 = load ptr, ptr %25, align 8, !tbaa !152
  %49 = load i32, ptr %23, align 4, !tbaa !150
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  store ptr %47, ptr %51, align 8, !tbaa !56
  %52 = add i32 %49, 1
  store i32 %52, ptr %23, align 4, !tbaa !150
  %53 = add nuw i32 %45, 1
  %54 = icmp eq i32 %53, %16
  br i1 %54, label %55, label %44, !llvm.loop !155

55:                                               ; preds = %44, %12
  %56 = phi ptr [ null, %12 ], [ %20, %44 ]
  %57 = icmp eq ptr %11, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %11, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %92

60:                                               ; preds = %55
  %61 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  br label %92

62:                                               ; preds = %7
  %63 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %11, i64 0, i32 9
  %64 = load i32, ptr %63, align 4, !tbaa !139
  %65 = icmp eq i32 %64, 24
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %11, ptr noundef nonnull %2, i1 noundef zeroext false)
  %68 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !156
  %70 = icmp eq i32 %69, 2
  %71 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %67, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8
  %73 = select i1 %70, ptr %72, ptr null
  br label %92

74:                                               ; preds = %62
  %75 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  %76 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %11, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %92

77:                                               ; preds = %7
  br i1 %3, label %90, label %78

78:                                               ; preds = %77
  %79 = icmp eq ptr %11, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %78
  %81 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %11, ptr noundef nonnull %2, i1 noundef zeroext false)
  %82 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %81, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !156
  %84 = icmp eq i32 %83, 1
  %85 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %81, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8
  %87 = select i1 %84, ptr %86, ptr null
  br label %92

88:                                               ; preds = %78
  %89 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  br label %92

90:                                               ; preds = %77
  %91 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  br label %92

92:                                               ; preds = %58, %60, %74, %66, %80, %88, %90
  %93 = phi i32 [ 2, %66 ], [ 2, %74 ], [ 1, %90 ], [ 1, %80 ], [ 1, %88 ], [ 3, %60 ], [ 3, %58 ]
  %94 = phi i1 [ false, %66 ], [ false, %74 ], [ false, %90 ], [ false, %80 ], [ true, %88 ], [ false, %60 ], [ false, %58 ]
  %95 = phi ptr [ %73, %66 ], [ %76, %74 ], [ null, %90 ], [ %87, %80 ], [ null, %88 ], [ null, %60 ], [ null, %58 ]
  %96 = phi ptr [ null, %66 ], [ null, %74 ], [ null, %90 ], [ null, %80 ], [ null, %88 ], [ %56, %60 ], [ %56, %58 ]
  %97 = phi ptr [ %67, %66 ], [ %75, %74 ], [ %91, %90 ], [ %81, %80 ], [ %89, %88 ], [ %61, %60 ], [ %59, %58 ]
  %98 = load ptr, ptr %0, align 8, !tbaa !41
  %99 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %98)
  %100 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
          to label %101 unwind label %117

101:                                              ; preds = %92
  %102 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_722XSSimpleTypeDefinitionC1EPNS_17DatatypeValidatorENS0_7VARIETYEPNS_16XSTypeDefinitionEPS0_PNS_11RefVectorOfIS0_EEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %99, ptr noundef nonnull %1, i32 noundef %93, ptr noundef %97, ptr noundef %95, ptr noundef %96, ptr noundef %100, ptr noundef nonnull %2, ptr noundef %102)
          to label %103 unwind label %117

103:                                              ; preds = %101
  %104 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef %1, ptr noundef nonnull %99)
  %106 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %107, i32 noundef 1)
  %108 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !54
  %110 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %107, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !52
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %109, i64 %112
  store ptr %99, ptr %113, align 8, !tbaa !56
  %114 = add i32 %111, 1
  store i32 %114, ptr %110, align 4, !tbaa !52
  br i1 %94, label %115, label %119

115:                                              ; preds = %103
  %116 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %99, i64 0, i32 8
  store ptr %99, ptr %116, align 8, !tbaa !161
  br label %119

117:                                              ; preds = %101, %92
  %118 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %99, ptr noundef %98) #13
  br label %120

119:                                              ; preds = %115, %103
  tail call void @_ZN11xercesc_2_715XSObjectFactory13processFacetsEPNS_17DatatypeValidatorEPNS_7XSModelEPNS_22XSSimpleTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %99)
  br label %122

120:                                              ; preds = %117, %42
  %121 = phi { ptr, i32 } [ %118, %117 ], [ %43, %42 ]
  resume { ptr, i32 } %121

122:                                              ; preds = %119, %4
  %123 = phi ptr [ %5, %4 ], [ %99, %119 ]
  ret ptr %123
}

declare void @_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2)
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !56
  %14 = add i32 %11, 1
  store i32 %14, ptr %10, align 4, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !146
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !163
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

declare noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_722XSSimpleTypeDefinitionC1EPNS_17DatatypeValidatorENS0_7VARIETYEPNS_16XSTypeDefinitionEPS0_PNS_11RefVectorOfIS0_EEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory13processFacetsEPNS_17DatatypeValidatorEPNS_7XSModelEPNS_22XSSimpleTypeDefinitionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !164
  %9 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !165
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %11)
  %13 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %12, i64 0, i32 1
  store i8 0, ptr %14, align 8, !tbaa !166
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %12, i64 0, i32 2
  store i32 0, ptr %15, align 4, !tbaa !168
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %12, i64 0, i32 3
  store i32 4, ptr %16, align 8, !tbaa !169
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %12, i64 0, i32 4
  store ptr null, ptr %17, align 8, !tbaa !170
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %12, i64 0, i32 5
  store ptr %13, ptr %18, align 8, !tbaa !171
  %19 = load ptr, ptr %13, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %23 unwind label %63

23:                                               ; preds = %4
  store ptr %22, ptr %17, align 8, !tbaa !170
  br label %24

24:                                               ; preds = %23, %24
  %25 = phi i64 [ 0, %23 ], [ %28, %24 ]
  %26 = load ptr, ptr %17, align 8, !tbaa !170
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  store ptr null, ptr %27, align 8, !tbaa !56
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %24, !llvm.loop !172

30:                                               ; preds = %24
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !46
  %31 = icmp eq ptr %1, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %30, %38
  %33 = phi ptr [ %40, %38 ], [ %1, %30 ]
  %34 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %33, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !164
  %36 = and i32 %35, 24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %33, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !143
  %41 = icmp eq ptr %40, null
  br i1 %41, label %67, label %32, !llvm.loop !173

42:                                               ; preds = %32
  %43 = load ptr, ptr %0, align 8, !tbaa !41
  %44 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %43)
  %45 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %44, i64 0, i32 1
  store i8 0, ptr %46, align 8, !tbaa !174
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %44, i64 0, i32 2
  store i32 0, ptr %47, align 4, !tbaa !176
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %44, i64 0, i32 3
  store i32 2, ptr %48, align 8, !tbaa !177
  %49 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %44, i64 0, i32 4
  store ptr null, ptr %49, align 8, !tbaa !178
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %44, i64 0, i32 5
  store ptr %45, ptr %50, align 8, !tbaa !179
  %51 = load ptr, ptr %45, align 8, !tbaa !46
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef 16)
          to label %55 unwind label %65

55:                                               ; preds = %42
  store ptr %54, ptr %49, align 8, !tbaa !178
  br label %56

56:                                               ; preds = %55, %56
  %57 = phi i64 [ 0, %55 ], [ %60, %56 ]
  %58 = load ptr, ptr %49, align 8, !tbaa !178
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  store ptr null, ptr %59, align 8, !tbaa !56
  %60 = add nuw nsw i64 %57, 1
  %61 = icmp eq i64 %57, 0
  br i1 %61, label %56, label %62, !llvm.loop !180

62:                                               ; preds = %56
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %44, align 8, !tbaa !46
  br label %67

63:                                               ; preds = %4
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %12, ptr noundef %11) #13
  br label %709

65:                                               ; preds = %42
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %44, ptr noundef %43) #13
  br label %709

67:                                               ; preds = %38, %30, %62
  %68 = phi ptr [ %44, %62 ], [ null, %30 ], [ null, %38 ]
  %69 = and i32 %8, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %1, align 8, !tbaa !46
  %73 = getelementptr inbounds ptr, ptr %72, i64 6
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %76 = and i32 %10, 16
  %77 = shl nuw nsw i32 %76, 7
  %78 = lshr exact i32 %76, 4
  %79 = trunc i32 %78 to i8
  %80 = load ptr, ptr %0, align 8, !tbaa !41
  %81 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %80)
  %82 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %75)
          to label %83 unwind label %103

83:                                               ; preds = %71
  %84 = icmp ne i32 %76, 0
  %85 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %81, i32 noundef 2048, ptr noundef %75, i1 noundef zeroext %84, ptr noundef %82, ptr noundef %2, ptr noundef %85)
          to label %86 unwind label %103

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %88, i32 noundef 1)
  %89 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !54
  %91 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %88, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !52
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %90, i64 %93
  store ptr %81, ptr %94, align 8, !tbaa !56
  %95 = add i32 %92, 1
  store i32 %95, ptr %91, align 4, !tbaa !52
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef 1)
  %96 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %68, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !178
  %98 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %68, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !176
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %97, i64 %100
  store ptr %81, ptr %101, align 8, !tbaa !56
  %102 = add i32 %99, 1
  store i32 %102, ptr %98, align 4, !tbaa !176
  br label %105

103:                                              ; preds = %83, %71
  %104 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %81, ptr noundef %80) #13
  br label %709

105:                                              ; preds = %86, %67
  %106 = phi i32 [ %77, %86 ], [ 0, %67 ]
  %107 = phi i32 [ 2048, %86 ], [ 0, %67 ]
  %108 = phi i8 [ %79, %86 ], [ 0, %67 ]
  %109 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !181
  %111 = icmp eq ptr %110, null
  br i1 %111, label %581, label %112

112:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  %113 = load ptr, ptr %0, align 8, !tbaa !41
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %110, i1 noundef zeroext false, ptr noundef %113)
  %114 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %5, i64 0, i32 2
  %115 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %5, i64 0, i32 3
  %116 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %5, i64 0, i32 4
  %117 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 13
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %6, i64 0, i32 1
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %6, i64 0, i32 2
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %6, i64 0, i32 3
  %121 = and i32 %10, 8
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %124 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %68, i64 0, i32 4
  %125 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %68, i64 0, i32 2
  %126 = lshr i32 %10, 14
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = lshr i32 %10, 10
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = lshr i32 %10, 9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = trunc i32 %10 to i8
  %136 = lshr i8 %135, 2
  %137 = and i8 %136, 1
  %138 = trunc i32 %10 to i8
  %139 = lshr i8 %138, 1
  %140 = and i8 %139, 1
  %141 = trunc i32 %10 to i8
  %142 = and i8 %141, 1
  %143 = lshr i32 %10, 8
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = and i32 %10, 128
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i8
  %149 = trunc i32 %10 to i8
  %150 = lshr i8 %149, 6
  %151 = and i8 %150, 1
  %152 = trunc i32 %10 to i8
  %153 = lshr i8 %152, 5
  %154 = and i8 %153, 1
  %155 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  br label %156

156:                                              ; preds = %530, %112
  %157 = phi ptr [ %400, %530 ], [ null, %112 ]
  %158 = phi i32 [ %512, %530 ], [ %106, %112 ]
  %159 = phi i32 [ %536, %530 ], [ %107, %112 ]
  %160 = phi i8 [ %513, %530 ], [ %108, %112 ]
  br label %161

161:                                              ; preds = %156, %565
  %162 = phi i32 [ %158, %156 ], [ %573, %565 ]
  %163 = phi i32 [ %159, %156 ], [ %571, %565 ]
  %164 = phi i8 [ %160, %156 ], [ %547, %565 ]
  br label %165

165:                                              ; preds = %380, %161
  %166 = load ptr, ptr %114, align 8, !tbaa !182
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, ptr %115, align 8, !tbaa !185
  %170 = load ptr, ptr %116, align 8, !tbaa !186
  %171 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %170, i64 0, i32 3
  %172 = load i32, ptr %171, align 8, !tbaa !187
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %580, label %174

174:                                              ; preds = %168, %165
  %175 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %176 unwind label %200

176:                                              ; preds = %174
  %177 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %175, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !189
  %179 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %175)
          to label %180 unwind label %202

180:                                              ; preds = %176
  %181 = icmp eq ptr %178, null
  br i1 %181, label %186, label %182

182:                                              ; preds = %180
  %183 = load i16, ptr %178, align 2, !tbaa !192
  %184 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE, align 2, !tbaa !192
  %185 = icmp eq i16 %183, %184
  br i1 %185, label %189, label %204

186:                                              ; preds = %180
  %187 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE, align 2, !tbaa !192
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %545, label %204

189:                                              ; preds = %182, %194
  %190 = phi i16 [ %197, %194 ], [ %183, %182 ]
  %191 = phi ptr [ %196, %194 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE, %182 ]
  %192 = phi ptr [ %195, %194 ], [ %178, %182 ]
  %193 = icmp eq i16 %190, 0
  br i1 %193, label %545, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds i16, ptr %192, i64 1
  %196 = getelementptr inbounds i16, ptr %191, i64 1
  %197 = load i16, ptr %195, align 2, !tbaa !192
  %198 = load i16, ptr %196, align 2, !tbaa !192
  %199 = icmp eq i16 %197, %198
  br i1 %199, label %189, label %204, !llvm.loop !193

200:                                              ; preds = %174
  %201 = landingpad { ptr, i32 }
          cleanup
  br label %578

202:                                              ; preds = %176
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %578

204:                                              ; preds = %194, %182, %186
  br i1 %181, label %209, label %205

205:                                              ; preds = %204
  %206 = load i16, ptr %178, align 2, !tbaa !192
  %207 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE, align 2, !tbaa !192
  %208 = icmp eq i16 %206, %207
  br i1 %208, label %212, label %223

209:                                              ; preds = %204
  %210 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE, align 2, !tbaa !192
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %545, label %223

212:                                              ; preds = %205, %217
  %213 = phi i16 [ %220, %217 ], [ %206, %205 ]
  %214 = phi ptr [ %219, %217 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE, %205 ]
  %215 = phi ptr [ %218, %217 ], [ %178, %205 ]
  %216 = icmp eq i16 %213, 0
  br i1 %216, label %545, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds i16, ptr %215, i64 1
  %219 = getelementptr inbounds i16, ptr %214, i64 1
  %220 = load i16, ptr %218, align 2, !tbaa !192
  %221 = load i16, ptr %219, align 2, !tbaa !192
  %222 = icmp eq i16 %220, %221
  br i1 %222, label %212, label %223, !llvm.loop !193

223:                                              ; preds = %217, %205, %209
  br i1 %181, label %228, label %224

224:                                              ; preds = %223
  %225 = load i16, ptr %178, align 2, !tbaa !192
  %226 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE, align 2, !tbaa !192
  %227 = icmp eq i16 %225, %226
  br i1 %227, label %231, label %242

228:                                              ; preds = %223
  %229 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE, align 2, !tbaa !192
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %545, label %242

231:                                              ; preds = %224, %236
  %232 = phi i16 [ %239, %236 ], [ %225, %224 ]
  %233 = phi ptr [ %238, %236 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE, %224 ]
  %234 = phi ptr [ %237, %236 ], [ %178, %224 ]
  %235 = icmp eq i16 %232, 0
  br i1 %235, label %545, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds i16, ptr %234, i64 1
  %238 = getelementptr inbounds i16, ptr %233, i64 1
  %239 = load i16, ptr %237, align 2, !tbaa !192
  %240 = load i16, ptr %238, align 2, !tbaa !192
  %241 = icmp eq i16 %239, %240
  br i1 %241, label %231, label %242, !llvm.loop !193

242:                                              ; preds = %236, %224, %228
  br i1 %181, label %247, label %243

243:                                              ; preds = %242
  %244 = load i16, ptr %178, align 2, !tbaa !192
  %245 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE, align 2, !tbaa !192
  %246 = icmp eq i16 %244, %245
  br i1 %246, label %250, label %261

247:                                              ; preds = %242
  %248 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE, align 2, !tbaa !192
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %545, label %261

250:                                              ; preds = %243, %255
  %251 = phi i16 [ %258, %255 ], [ %244, %243 ]
  %252 = phi ptr [ %257, %255 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE, %243 ]
  %253 = phi ptr [ %256, %255 ], [ %178, %243 ]
  %254 = icmp eq i16 %251, 0
  br i1 %254, label %545, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds i16, ptr %253, i64 1
  %257 = getelementptr inbounds i16, ptr %252, i64 1
  %258 = load i16, ptr %256, align 2, !tbaa !192
  %259 = load i16, ptr %257, align 2, !tbaa !192
  %260 = icmp eq i16 %258, %259
  br i1 %260, label %250, label %261, !llvm.loop !193

261:                                              ; preds = %255, %243, %247
  br i1 %181, label %266, label %262

262:                                              ; preds = %261
  %263 = load i16, ptr %178, align 2, !tbaa !192
  %264 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE, align 2, !tbaa !192
  %265 = icmp eq i16 %263, %264
  br i1 %265, label %269, label %280

266:                                              ; preds = %261
  %267 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE, align 2, !tbaa !192
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %545, label %280

269:                                              ; preds = %262, %274
  %270 = phi i16 [ %277, %274 ], [ %263, %262 ]
  %271 = phi ptr [ %276, %274 ], [ @_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE, %262 ]
  %272 = phi ptr [ %275, %274 ], [ %178, %262 ]
  %273 = icmp eq i16 %270, 0
  br i1 %273, label %545, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds i16, ptr %272, i64 1
  %276 = getelementptr inbounds i16, ptr %271, i64 1
  %277 = load i16, ptr %275, align 2, !tbaa !192
  %278 = load i16, ptr %276, align 2, !tbaa !192
  %279 = icmp eq i16 %277, %278
  br i1 %279, label %269, label %280, !llvm.loop !193

280:                                              ; preds = %274, %262, %266
  br i1 %181, label %285, label %281

281:                                              ; preds = %280
  %282 = load i16, ptr %178, align 2, !tbaa !192
  %283 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE, align 2, !tbaa !192
  %284 = icmp eq i16 %282, %283
  br i1 %284, label %288, label %299

285:                                              ; preds = %280
  %286 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE, align 2, !tbaa !192
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %545, label %299

288:                                              ; preds = %281, %293
  %289 = phi i16 [ %296, %293 ], [ %282, %281 ]
  %290 = phi ptr [ %295, %293 ], [ @_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE, %281 ]
  %291 = phi ptr [ %294, %293 ], [ %178, %281 ]
  %292 = icmp eq i16 %289, 0
  br i1 %292, label %545, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds i16, ptr %291, i64 1
  %295 = getelementptr inbounds i16, ptr %290, i64 1
  %296 = load i16, ptr %294, align 2, !tbaa !192
  %297 = load i16, ptr %295, align 2, !tbaa !192
  %298 = icmp eq i16 %296, %297
  br i1 %298, label %288, label %299, !llvm.loop !193

299:                                              ; preds = %293, %281, %285
  br i1 %181, label %304, label %300

300:                                              ; preds = %299
  %301 = load i16, ptr %178, align 2, !tbaa !192
  %302 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE, align 2, !tbaa !192
  %303 = icmp eq i16 %301, %302
  br i1 %303, label %307, label %318

304:                                              ; preds = %299
  %305 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE, align 2, !tbaa !192
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %545, label %318

307:                                              ; preds = %300, %312
  %308 = phi i16 [ %315, %312 ], [ %301, %300 ]
  %309 = phi ptr [ %314, %312 ], [ @_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE, %300 ]
  %310 = phi ptr [ %313, %312 ], [ %178, %300 ]
  %311 = icmp eq i16 %308, 0
  br i1 %311, label %545, label %312

312:                                              ; preds = %307
  %313 = getelementptr inbounds i16, ptr %310, i64 1
  %314 = getelementptr inbounds i16, ptr %309, i64 1
  %315 = load i16, ptr %313, align 2, !tbaa !192
  %316 = load i16, ptr %314, align 2, !tbaa !192
  %317 = icmp eq i16 %315, %316
  br i1 %317, label %307, label %318, !llvm.loop !193

318:                                              ; preds = %312, %300, %304
  br i1 %181, label %323, label %319

319:                                              ; preds = %318
  %320 = load i16, ptr %178, align 2, !tbaa !192
  %321 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, align 2, !tbaa !192
  %322 = icmp eq i16 %320, %321
  br i1 %322, label %326, label %337

323:                                              ; preds = %318
  %324 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, align 2, !tbaa !192
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %545, label %337

326:                                              ; preds = %319, %331
  %327 = phi i16 [ %334, %331 ], [ %320, %319 ]
  %328 = phi ptr [ %333, %331 ], [ @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, %319 ]
  %329 = phi ptr [ %332, %331 ], [ %178, %319 ]
  %330 = icmp eq i16 %327, 0
  br i1 %330, label %545, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds i16, ptr %329, i64 1
  %333 = getelementptr inbounds i16, ptr %328, i64 1
  %334 = load i16, ptr %332, align 2, !tbaa !192
  %335 = load i16, ptr %333, align 2, !tbaa !192
  %336 = icmp eq i16 %334, %335
  br i1 %336, label %326, label %337, !llvm.loop !193

337:                                              ; preds = %331, %319, %323
  br i1 %181, label %342, label %338

338:                                              ; preds = %337
  %339 = load i16, ptr %178, align 2, !tbaa !192
  %340 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, align 2, !tbaa !192
  %341 = icmp eq i16 %339, %340
  br i1 %341, label %345, label %356

342:                                              ; preds = %337
  %343 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, align 2, !tbaa !192
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %545, label %356

345:                                              ; preds = %338, %350
  %346 = phi i16 [ %353, %350 ], [ %339, %338 ]
  %347 = phi ptr [ %352, %350 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, %338 ]
  %348 = phi ptr [ %351, %350 ], [ %178, %338 ]
  %349 = icmp eq i16 %346, 0
  br i1 %349, label %545, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds i16, ptr %348, i64 1
  %352 = getelementptr inbounds i16, ptr %347, i64 1
  %353 = load i16, ptr %351, align 2, !tbaa !192
  %354 = load i16, ptr %352, align 2, !tbaa !192
  %355 = icmp eq i16 %353, %354
  br i1 %355, label %345, label %356, !llvm.loop !193

356:                                              ; preds = %350, %338, %342
  br i1 %181, label %361, label %357

357:                                              ; preds = %356
  %358 = load i16, ptr %178, align 2, !tbaa !192
  %359 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE, align 2, !tbaa !192
  %360 = icmp eq i16 %358, %359
  br i1 %360, label %364, label %375

361:                                              ; preds = %356
  %362 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE, align 2, !tbaa !192
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %545, label %375

364:                                              ; preds = %357, %369
  %365 = phi i16 [ %372, %369 ], [ %358, %357 ]
  %366 = phi ptr [ %371, %369 ], [ @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE, %357 ]
  %367 = phi ptr [ %370, %369 ], [ %178, %357 ]
  %368 = icmp eq i16 %365, 0
  br i1 %368, label %545, label %369

369:                                              ; preds = %364
  %370 = getelementptr inbounds i16, ptr %367, i64 1
  %371 = getelementptr inbounds i16, ptr %366, i64 1
  %372 = load i16, ptr %370, align 2, !tbaa !192
  %373 = load i16, ptr %371, align 2, !tbaa !192
  %374 = icmp eq i16 %372, %373
  br i1 %374, label %364, label %375, !llvm.loop !193

375:                                              ; preds = %369, %357, %361
  br i1 %181, label %381, label %376

376:                                              ; preds = %375
  %377 = load i16, ptr %178, align 2, !tbaa !192
  %378 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, align 2, !tbaa !192
  %379 = icmp eq i16 %377, %378
  br i1 %379, label %384, label %380

380:                                              ; preds = %389, %376, %381
  br label %165, !llvm.loop !194

381:                                              ; preds = %375
  %382 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, align 2, !tbaa !192
  %383 = icmp eq i16 %382, 0
  br i1 %383, label %395, label %380

384:                                              ; preds = %376, %389
  %385 = phi i16 [ %392, %389 ], [ %377, %376 ]
  %386 = phi ptr [ %391, %389 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, %376 ]
  %387 = phi ptr [ %390, %389 ], [ %178, %376 ]
  %388 = icmp eq i16 %385, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %384
  %390 = getelementptr inbounds i16, ptr %387, i64 1
  %391 = getelementptr inbounds i16, ptr %386, i64 1
  %392 = load i16, ptr %390, align 2, !tbaa !192
  %393 = load i16, ptr %391, align 2, !tbaa !192
  %394 = icmp eq i16 %392, %393
  br i1 %394, label %384, label %380, !llvm.loop !193

395:                                              ; preds = %381, %384
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  %396 = load ptr, ptr %117, align 8, !tbaa !195
  %397 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %396, ptr noundef nonnull @_ZN11xercesc_2_7L14regexSeparatorE, ptr noundef %397)
          to label %398 unwind label %499

398:                                              ; preds = %395
  %399 = load ptr, ptr %0, align 8, !tbaa !41
  %400 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %399)
          to label %401 unwind label %503

401:                                              ; preds = %398
  %402 = load i32, ptr %118, align 4, !tbaa !196
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %437, label %404

404:                                              ; preds = %401
  %405 = load i32, ptr %6, align 8, !tbaa !198
  %406 = load i32, ptr %118, align 4, !tbaa !196
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %437

408:                                              ; preds = %404
  %409 = sext i32 %405 to i64
  br label %410

410:                                              ; preds = %408, %430
  %411 = phi i64 [ %409, %408 ], [ %433, %430 ]
  %412 = phi i8 [ 0, %408 ], [ %432, %430 ]
  %413 = phi i32 [ 0, %408 ], [ %431, %430 ]
  %414 = load ptr, ptr %119, align 8, !tbaa !199
  %415 = getelementptr inbounds i16, ptr %414, i64 %411
  %416 = load i16, ptr %415, align 2, !tbaa !192
  %417 = load ptr, ptr %120, align 8, !tbaa !200
  %418 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %417, i16 noundef zeroext %416)
          to label %419 unwind label %505

419:                                              ; preds = %410
  %420 = icmp eq i32 %418, -1
  %421 = and i8 %412, 1
  %422 = icmp eq i8 %421, 0
  br i1 %420, label %425, label %423

423:                                              ; preds = %419
  %424 = select i1 %422, i8 %412, i8 0
  br label %430

425:                                              ; preds = %419
  %426 = xor i8 %421, 1
  %427 = zext nneg i8 %426 to i32
  %428 = add nsw i32 %413, %427
  %429 = select i1 %422, i8 1, i8 %412
  br label %430

430:                                              ; preds = %425, %423
  %431 = phi i32 [ %413, %423 ], [ %428, %425 ]
  %432 = phi i8 [ %424, %423 ], [ %429, %425 ]
  %433 = add nsw i64 %411, 1
  %434 = load i32, ptr %118, align 4, !tbaa !196
  %435 = sext i32 %434 to i64
  %436 = icmp slt i64 %433, %435
  br i1 %436, label %410, label %437, !llvm.loop !201

437:                                              ; preds = %430, %404, %401
  %438 = phi i32 [ 0, %401 ], [ 0, %404 ], [ %431, %430 ]
  %439 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %400, align 8, !tbaa !46
  %440 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %400, i64 0, i32 1
  store i8 1, ptr %440, align 8, !tbaa !202
  %441 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %400, i64 0, i32 2
  store i32 0, ptr %441, align 4, !tbaa !204
  %442 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %400, i64 0, i32 3
  store i32 %438, ptr %442, align 8, !tbaa !205
  %443 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %400, i64 0, i32 4
  store ptr null, ptr %443, align 8, !tbaa !206
  %444 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %400, i64 0, i32 5
  store ptr %439, ptr %444, align 8, !tbaa !207
  %445 = zext i32 %438 to i64
  %446 = shl nuw nsw i64 %445, 3
  %447 = load ptr, ptr %439, align 8, !tbaa !46
  %448 = getelementptr inbounds ptr, ptr %447, i64 2
  %449 = load ptr, ptr %448, align 8
  %450 = invoke noundef ptr %449(ptr noundef nonnull align 8 dereferenceable(8) %439, i64 noundef %446)
          to label %451 unwind label %507

451:                                              ; preds = %437
  store ptr %450, ptr %443, align 8, !tbaa !206
  %452 = icmp eq i32 %438, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %451
  %454 = zext i32 %438 to i64
  br label %455

455:                                              ; preds = %453, %455
  %456 = phi i64 [ 0, %453 ], [ %459, %455 ]
  %457 = load ptr, ptr %443, align 8, !tbaa !206
  %458 = getelementptr inbounds ptr, ptr %457, i64 %456
  store ptr null, ptr %458, align 8, !tbaa !56
  %459 = add nuw nsw i64 %456, 1
  %460 = icmp eq i64 %459, %454
  br i1 %460, label %461, label %455, !llvm.loop !208

461:                                              ; preds = %455, %451
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %400, align 8, !tbaa !46
  br label %462

462:                                              ; preds = %493, %461
  %463 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %464 unwind label %501

464:                                              ; preds = %462
  br i1 %463, label %465, label %511

465:                                              ; preds = %464
  %466 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %467 unwind label %501

467:                                              ; preds = %465
  %468 = load ptr, ptr %0, align 8, !tbaa !41
  %469 = icmp eq ptr %466, null
  br i1 %469, label %491, label %470

470:                                              ; preds = %467
  %471 = load i16, ptr %466, align 2, !tbaa !192
  %472 = icmp eq i16 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %470, %473
  %474 = phi ptr [ %475, %473 ], [ %466, %470 ]
  %475 = getelementptr inbounds i16, ptr %474, i64 1
  %476 = load i16, ptr %475, align 2, !tbaa !192
  %477 = icmp eq i16 %476, 0
  br i1 %477, label %478, label %473, !llvm.loop !209

478:                                              ; preds = %473
  %479 = ptrtoint ptr %475 to i64
  %480 = ptrtoint ptr %466 to i64
  %481 = sub i64 %479, %480
  %482 = add i64 %481, 2
  %483 = and i64 %482, 8589934590
  br label %484

484:                                              ; preds = %478, %470
  %485 = phi i64 [ %483, %478 ], [ 2, %470 ]
  %486 = load ptr, ptr %468, align 8, !tbaa !46
  %487 = getelementptr inbounds ptr, ptr %486, i64 2
  %488 = load ptr, ptr %487, align 8
  %489 = invoke noundef ptr %488(ptr noundef nonnull align 8 dereferenceable(8) %468, i64 noundef %485)
          to label %490 unwind label %501

490:                                              ; preds = %484
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %489, ptr nonnull align 2 %466, i64 %485, i1 false)
  br label %491

491:                                              ; preds = %490, %467
  %492 = phi ptr [ %489, %490 ], [ null, %467 ]
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %400, i32 noundef 1)
          to label %493 unwind label %501

493:                                              ; preds = %491
  %494 = load ptr, ptr %443, align 8, !tbaa !206
  %495 = load i32, ptr %441, align 4, !tbaa !204
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds ptr, ptr %494, i64 %496
  store ptr %492, ptr %497, align 8, !tbaa !56
  %498 = add i32 %495, 1
  store i32 %498, ptr %441, align 4, !tbaa !204
  br label %462

499:                                              ; preds = %395
  %500 = landingpad { ptr, i32 }
          cleanup
  br label %543

501:                                              ; preds = %462, %465, %484, %491
  %502 = landingpad { ptr, i32 }
          cleanup
  br label %541

503:                                              ; preds = %398
  %504 = landingpad { ptr, i32 }
          cleanup
  br label %541

505:                                              ; preds = %410
  %506 = landingpad { ptr, i32 }
          cleanup
  br label %509

507:                                              ; preds = %437
  %508 = landingpad { ptr, i32 }
          cleanup
  br label %509

509:                                              ; preds = %507, %505
  %510 = phi { ptr, i32 } [ %506, %505 ], [ %508, %507 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %400, ptr noundef %399) #13
  br label %541

511:                                              ; preds = %464
  %512 = or i32 %162, %121
  %513 = select i1 %122, i8 %164, i8 1
  %514 = load ptr, ptr %0, align 8, !tbaa !41
  %515 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %514)
          to label %516 unwind label %537

516:                                              ; preds = %511
  %517 = and i8 %513, 1
  %518 = icmp ne i8 %517, 0
  %519 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %515, i32 noundef 8, ptr noundef nonnull %400, i1 noundef zeroext %518, ptr noundef %179, ptr noundef %2, ptr noundef %519)
          to label %520 unwind label %539

520:                                              ; preds = %516
  %521 = load ptr, ptr %123, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %521, i32 noundef 1)
          to label %522 unwind label %537

522:                                              ; preds = %520
  %523 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %521, i64 0, i32 4
  %524 = load ptr, ptr %523, align 8, !tbaa !54
  %525 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %521, i64 0, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !52
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds ptr, ptr %524, i64 %527
  store ptr %515, ptr %528, align 8, !tbaa !56
  %529 = add i32 %526, 1
  store i32 %529, ptr %525, align 4, !tbaa !52
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef 1)
          to label %530 unwind label %537

530:                                              ; preds = %522
  %531 = load ptr, ptr %124, align 8, !tbaa !178
  %532 = load i32, ptr %125, align 4, !tbaa !176
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds ptr, ptr %531, i64 %533
  store ptr %515, ptr %534, align 8, !tbaa !56
  %535 = add i32 %532, 1
  store i32 %535, ptr %125, align 4, !tbaa !176
  %536 = or i32 %163, 8
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  br label %156

537:                                              ; preds = %522, %520, %511
  %538 = landingpad { ptr, i32 }
          cleanup
  br label %541

539:                                              ; preds = %516
  %540 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %515, ptr noundef %514) #13
  br label %541

541:                                              ; preds = %501, %503, %537, %539, %509
  %542 = phi { ptr, i32 } [ %510, %509 ], [ %538, %537 ], [ %540, %539 ], [ %502, %501 ], [ %504, %503 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  br label %543

543:                                              ; preds = %541, %499
  %544 = phi { ptr, i32 } [ %542, %541 ], [ %500, %499 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  br label %578

545:                                              ; preds = %361, %342, %323, %304, %285, %266, %247, %228, %209, %186, %189, %212, %231, %250, %269, %288, %307, %326, %345, %364
  %546 = phi i32 [ 16, %364 ], [ 1024, %345 ], [ 512, %326 ], [ 4, %307 ], [ 2, %288 ], [ 1, %269 ], [ 128, %250 ], [ 256, %231 ], [ 64, %212 ], [ 32, %189 ], [ 16, %361 ], [ 1024, %342 ], [ 512, %323 ], [ 4, %304 ], [ 2, %285 ], [ 1, %266 ], [ 128, %247 ], [ 256, %228 ], [ 64, %209 ], [ 32, %186 ]
  %547 = phi i8 [ %128, %364 ], [ %131, %345 ], [ %134, %326 ], [ %137, %307 ], [ %140, %288 ], [ %142, %269 ], [ %145, %250 ], [ %148, %231 ], [ %151, %212 ], [ %154, %189 ], [ %128, %361 ], [ %131, %342 ], [ %134, %323 ], [ %137, %304 ], [ %140, %285 ], [ %142, %266 ], [ %145, %247 ], [ %148, %228 ], [ %151, %209 ], [ %154, %186 ]
  %548 = load ptr, ptr %0, align 8, !tbaa !41
  %549 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %548)
          to label %550 unwind label %574

550:                                              ; preds = %545
  %551 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %175, i64 0, i32 4
  %552 = load ptr, ptr %551, align 8, !tbaa !210
  %553 = icmp ne i8 %547, 0
  %554 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %549, i32 noundef %546, ptr noundef %552, i1 noundef zeroext %553, ptr noundef %179, ptr noundef %2, ptr noundef %554)
          to label %555 unwind label %576

555:                                              ; preds = %550
  %556 = load ptr, ptr %155, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %556, i32 noundef 1)
          to label %557 unwind label %574

557:                                              ; preds = %555
  %558 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %556, i64 0, i32 4
  %559 = load ptr, ptr %558, align 8, !tbaa !54
  %560 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %556, i64 0, i32 2
  %561 = load i32, ptr %560, align 4, !tbaa !52
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds ptr, ptr %559, i64 %562
  store ptr %549, ptr %563, align 8, !tbaa !56
  %564 = add i32 %561, 1
  store i32 %564, ptr %560, align 4, !tbaa !52
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 1)
          to label %565 unwind label %574

565:                                              ; preds = %557
  %566 = load ptr, ptr %17, align 8, !tbaa !170
  %567 = load i32, ptr %15, align 4, !tbaa !168
  %568 = zext i32 %567 to i64
  %569 = getelementptr inbounds ptr, ptr %566, i64 %568
  store ptr %549, ptr %569, align 8, !tbaa !56
  %570 = add i32 %567, 1
  store i32 %570, ptr %15, align 4, !tbaa !168
  %571 = or i32 %546, %163
  %572 = select i1 %553, i32 %546, i32 0
  %573 = or i32 %572, %162
  br label %161

574:                                              ; preds = %557, %555, %545
  %575 = landingpad { ptr, i32 }
          cleanup
  br label %578

576:                                              ; preds = %550
  %577 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %549, ptr noundef %548) #13
  br label %578

578:                                              ; preds = %202, %543, %576, %574, %200
  %579 = phi { ptr, i32 } [ %201, %200 ], [ %544, %543 ], [ %203, %202 ], [ %575, %574 ], [ %577, %576 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %709

580:                                              ; preds = %168
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %581

581:                                              ; preds = %580, %105
  %582 = phi ptr [ %157, %580 ], [ null, %105 ]
  %583 = phi i32 [ %162, %580 ], [ %106, %105 ]
  %584 = phi i32 [ %163, %580 ], [ %107, %105 ]
  %585 = and i32 %584, 16
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %613

587:                                              ; preds = %581
  %588 = load ptr, ptr %0, align 8, !tbaa !41
  %589 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %588)
  %590 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 5
  %591 = load i16, ptr %590, align 4, !tbaa !211
  %592 = invoke noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef signext %591)
          to label %593 unwind label %611

593:                                              ; preds = %587
  %594 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %589, i32 noundef 16, ptr noundef %592, i1 noundef zeroext false, ptr noundef null, ptr noundef %2, ptr noundef %594)
          to label %595 unwind label %611

595:                                              ; preds = %593
  %596 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %597 = load ptr, ptr %596, align 8, !tbaa !60
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %597, i32 noundef 1)
  %598 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %597, i64 0, i32 4
  %599 = load ptr, ptr %598, align 8, !tbaa !54
  %600 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %597, i64 0, i32 2
  %601 = load i32, ptr %600, align 4, !tbaa !52
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds ptr, ptr %599, i64 %602
  store ptr %589, ptr %603, align 8, !tbaa !56
  %604 = add i32 %601, 1
  store i32 %604, ptr %600, align 4, !tbaa !52
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 1)
  %605 = load ptr, ptr %17, align 8, !tbaa !170
  %606 = load i32, ptr %15, align 4, !tbaa !168
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds ptr, ptr %605, i64 %607
  store ptr %589, ptr %608, align 8, !tbaa !56
  %609 = add i32 %606, 1
  store i32 %609, ptr %15, align 4, !tbaa !168
  %610 = or disjoint i32 %584, 16
  br label %613

611:                                              ; preds = %593, %587
  %612 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %589, ptr noundef %588) #13
  br label %709

613:                                              ; preds = %595, %581
  %614 = phi i32 [ %610, %595 ], [ %584, %581 ]
  %615 = load ptr, ptr %3, align 8, !tbaa !46
  %616 = getelementptr inbounds ptr, ptr %615, i64 6
  %617 = load ptr, ptr %616, align 8
  %618 = call noundef ptr %617(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %619 = icmp eq ptr %618, null
  br i1 %619, label %706, label %620

620:                                              ; preds = %613
  %621 = load ptr, ptr %3, align 8, !tbaa !46
  %622 = getelementptr inbounds ptr, ptr %621, i64 6
  %623 = load ptr, ptr %622, align 8
  %624 = call noundef ptr %623(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %625 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %624, i64 0, i32 1
  %626 = load i32, ptr %625, align 4, !tbaa !212
  %627 = icmp eq i32 %626, 16
  br i1 %627, label %628, label %706

628:                                              ; preds = %620
  %629 = load ptr, ptr %3, align 8, !tbaa !46
  %630 = getelementptr inbounds ptr, ptr %629, i64 6
  %631 = load ptr, ptr %630, align 8
  %632 = call noundef ptr %631(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %633 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %632, i64 0, i32 5
  %634 = load ptr, ptr %633, align 8, !tbaa !213
  %635 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %634, i64 0, i32 2
  %636 = load i32, ptr %635, align 4, !tbaa !168
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %648

638:                                              ; preds = %670, %628
  %639 = phi i32 [ %583, %628 ], [ %671, %670 ]
  %640 = phi i32 [ %614, %628 ], [ %672, %670 ]
  %641 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %632, i64 0, i32 6
  %642 = load ptr, ptr %641, align 8, !tbaa !214
  %643 = icmp eq ptr %642, null
  br i1 %643, label %706, label %644

644:                                              ; preds = %638
  %645 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %642, i64 0, i32 2
  %646 = load i32, ptr %645, align 4, !tbaa !176
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %706, label %676

648:                                              ; preds = %628, %670
  %649 = phi i32 [ %672, %670 ], [ %614, %628 ]
  %650 = phi i32 [ %671, %670 ], [ %583, %628 ]
  %651 = phi i32 [ %673, %670 ], [ 0, %628 ]
  %652 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %634, i32 noundef %651)
  %653 = getelementptr inbounds %"class.xercesc_2_7::XSFacet", ptr %652, i64 0, i32 1
  %654 = load i32, ptr %653, align 4, !tbaa !215
  %655 = and i32 %654, %649
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %670

657:                                              ; preds = %648
  %658 = or i32 %654, %649
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 1)
  %659 = load ptr, ptr %17, align 8, !tbaa !170
  %660 = load i32, ptr %15, align 4, !tbaa !168
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds ptr, ptr %659, i64 %661
  store ptr %652, ptr %662, align 8, !tbaa !56
  %663 = add i32 %660, 1
  store i32 %663, ptr %15, align 4, !tbaa !168
  %664 = getelementptr inbounds %"class.xercesc_2_7::XSFacet", ptr %652, i64 0, i32 2
  %665 = load i8, ptr %664, align 8, !tbaa !218, !range !219, !noundef !220
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %670, label %667

667:                                              ; preds = %657
  %668 = load i32, ptr %653, align 4, !tbaa !215
  %669 = or i32 %668, %650
  br label %670

670:                                              ; preds = %657, %667, %648
  %671 = phi i32 [ %669, %667 ], [ %650, %657 ], [ %650, %648 ]
  %672 = phi i32 [ %658, %667 ], [ %658, %657 ], [ %649, %648 ]
  %673 = add nuw i32 %651, 1
  %674 = load i32, ptr %635, align 4, !tbaa !168
  %675 = icmp ult i32 %673, %674
  br i1 %675, label %648, label %638, !llvm.loop !221

676:                                              ; preds = %644, %700
  %677 = phi i32 [ %703, %700 ], [ 0, %644 ]
  %678 = phi i32 [ %702, %700 ], [ %640, %644 ]
  %679 = phi i32 [ %701, %700 ], [ %639, %644 ]
  %680 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %642, i32 noundef %677)
  %681 = getelementptr inbounds %"class.xercesc_2_7::XSMultiValueFacet", ptr %680, i64 0, i32 1
  %682 = load i32, ptr %681, align 4, !tbaa !222
  %683 = and i32 %682, %678
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %700

685:                                              ; preds = %676
  %686 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %68, i64 0, i32 4
  %687 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %68, i64 0, i32 2
  %688 = or i32 %682, %678
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef 1)
  %689 = load ptr, ptr %686, align 8, !tbaa !178
  %690 = load i32, ptr %687, align 4, !tbaa !176
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds ptr, ptr %689, i64 %691
  store ptr %680, ptr %692, align 8, !tbaa !56
  %693 = add i32 %690, 1
  store i32 %693, ptr %687, align 4, !tbaa !176
  %694 = getelementptr inbounds %"class.xercesc_2_7::XSMultiValueFacet", ptr %680, i64 0, i32 2
  %695 = load i8, ptr %694, align 8, !tbaa !224, !range !219, !noundef !220
  %696 = icmp eq i8 %695, 0
  br i1 %696, label %700, label %697

697:                                              ; preds = %685
  %698 = load i32, ptr %681, align 4, !tbaa !222
  %699 = or i32 %698, %679
  br label %700

700:                                              ; preds = %685, %697, %676
  %701 = phi i32 [ %699, %697 ], [ %679, %685 ], [ %679, %676 ]
  %702 = phi i32 [ %688, %697 ], [ %688, %685 ], [ %678, %676 ]
  %703 = add nuw i32 %677, 1
  %704 = load i32, ptr %645, align 4, !tbaa !176
  %705 = icmp ult i32 %703, %704
  br i1 %705, label %676, label %706, !llvm.loop !225

706:                                              ; preds = %700, %644, %638, %620, %613
  %707 = phi i32 [ %583, %620 ], [ %583, %613 ], [ %639, %638 ], [ %639, %644 ], [ %701, %700 ]
  %708 = phi i32 [ %614, %620 ], [ %614, %613 ], [ %640, %638 ], [ %640, %644 ], [ %702, %700 ]
  call void @_ZN11xercesc_2_722XSSimpleTypeDefinition12setFacetInfoEiiPNS_11RefVectorOfINS_7XSFacetEEEPNS1_INS_17XSMultiValueFacetEEEPNS_16RefArrayVectorOfItEE(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %708, i32 noundef %707, ptr noundef nonnull %12, ptr noundef %68, ptr noundef %582)
  ret void

709:                                              ; preds = %611, %578, %103, %65, %63
  %710 = phi { ptr, i32 } [ %579, %578 ], [ %612, %611 ], [ %104, %103 ], [ %66, %65 ], [ %64, %63 ]
  resume { ptr, i32 } %710
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr %5, ptr %0, align 8, !tbaa !226
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !125
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %8, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !227
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %8, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !123
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %8, i64 0, i32 3
  store i32 %1, ptr %11, align 8, !tbaa !228
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %8, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !121
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %8, i64 0, i32 5
  store ptr %5, ptr %13, align 8, !tbaa !229
  %14 = zext i32 %1 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %5, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %15)
          to label %20 unwind label %35

20:                                               ; preds = %6
  store ptr %19, ptr %12, align 8, !tbaa !121
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = zext i32 %1 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %28, %24 ]
  %26 = load ptr, ptr %12, align 8, !tbaa !121
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  store ptr null, ptr %27, align 8, !tbaa !56
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, %23
  br i1 %29, label %30, label %24, !llvm.loop !230

30:                                               ; preds = %24, %20
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !46
  %31 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  store ptr %8, ptr %31, align 8, !tbaa !119
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef nonnull %5)
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef %2, i1 noundef zeroext %4, ptr noundef nonnull %5)
          to label %33 unwind label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  store ptr %32, ptr %34, align 8, !tbaa !124
  ret void

35:                                               ; preds = %6
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %8, ptr noundef nonnull %5) #13
  br label %39

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %32, ptr noundef nonnull %5) #13
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %40
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %115

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !231
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !233
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %6 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %81, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !41
  %18 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %17)
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %18, i64 0, i32 1
  store i8 1, ptr %20, align 8, !tbaa !202
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %18, i64 0, i32 2
  store i32 0, ptr %21, align 4, !tbaa !204
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %18, i64 0, i32 3
  store i32 %14, ptr %22, align 8, !tbaa !205
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %18, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !206
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %18, i64 0, i32 5
  store ptr %19, ptr %24, align 8, !tbaa !207
  %25 = zext i32 %14 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %19, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %26)
          to label %31 unwind label %40

31:                                               ; preds = %16
  store ptr %30, ptr %23, align 8, !tbaa !206
  %32 = zext i32 %14 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %37, %33 ]
  %35 = load ptr, ptr %23, align 8, !tbaa !206
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr null, ptr %36, align 8, !tbaa !56
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !208

39:                                               ; preds = %33
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !46
  br label %42

40:                                               ; preds = %16
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %18, ptr noundef %17) #13
  br label %113

42:                                               ; preds = %39, %72
  %43 = phi i32 [ 0, %39 ], [ %79, %72 ]
  %44 = load ptr, ptr %7, align 8, !tbaa !231, !nonnull !220, !noundef !220
  %45 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef %43)
  %46 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !235
  %48 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !237
  %50 = load ptr, ptr %0, align 8, !tbaa !41
  %51 = icmp eq ptr %49, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %42
  %53 = load i16, ptr %49, align 2, !tbaa !192
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %57, %55 ], [ %49, %52 ]
  %57 = getelementptr inbounds i16, ptr %56, i64 1
  %58 = load i16, ptr %57, align 2, !tbaa !192
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %55, !llvm.loop !209

60:                                               ; preds = %55
  %61 = ptrtoint ptr %57 to i64
  %62 = ptrtoint ptr %49 to i64
  %63 = sub i64 %61, %62
  %64 = add i64 %63, 2
  %65 = and i64 %64, 8589934590
  br label %66

66:                                               ; preds = %60, %52
  %67 = phi i64 [ %65, %60 ], [ 2, %52 ]
  %68 = load ptr, ptr %50, align 8, !tbaa !46
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %67)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %71, ptr nonnull align 2 %49, i64 %67, i1 false)
  br label %72

72:                                               ; preds = %42, %66
  %73 = phi ptr [ %71, %66 ], [ null, %42 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 1)
  %74 = load ptr, ptr %23, align 8, !tbaa !206
  %75 = load i32, ptr %21, align 4, !tbaa !204
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  store ptr %73, ptr %77, align 8, !tbaa !56
  %78 = add i32 %75, 1
  store i32 %78, ptr %21, align 4, !tbaa !204
  %79 = add nuw i32 %43, 1
  %80 = icmp eq i32 %79, %14
  br i1 %80, label %81, label %42, !llvm.loop !239

81:                                               ; preds = %72, %13
  %82 = phi ptr [ null, %13 ], [ %18, %72 ]
  %83 = load ptr, ptr %1, align 8, !tbaa !46
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef signext i16 %85(ptr noundef nonnull align 8 dereferenceable(52) %1)
  %87 = icmp eq i16 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %1, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !240
  %91 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %90, ptr noundef nonnull %2)
  br label %92

92:                                               ; preds = %88, %81
  %93 = phi ptr [ %91, %88 ], [ null, %81 ]
  %94 = load ptr, ptr %0, align 8, !tbaa !41
  %95 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %94)
  %96 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
          to label %97 unwind label %111

97:                                               ; preds = %92
  %98 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_715XSIDCDefinitionC1EPNS_18IdentityConstraintEPS0_PNS_12XSAnnotationEPNS_16RefArrayVectorOfItEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %95, ptr noundef nonnull %1, ptr noundef %93, ptr noundef %96, ptr noundef %82, ptr noundef nonnull %2, ptr noundef %98)
          to label %99 unwind label %111

99:                                               ; preds = %97
  %100 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %101, ptr noundef nonnull %1, ptr noundef nonnull %95)
  %102 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %103, i32 noundef 1)
  %104 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %103, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %103, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !52
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %105, i64 %108
  store ptr %95, ptr %109, align 8, !tbaa !56
  %110 = add i32 %107, 1
  store i32 %110, ptr %106, align 4, !tbaa !52
  br label %115

111:                                              ; preds = %97, %92
  %112 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %95, ptr noundef %94) #13
  br label %113

113:                                              ; preds = %111, %40
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %41, %40 ]
  resume { ptr, i32 } %114

115:                                              ; preds = %99, %3
  %116 = phi ptr [ %4, %3 ], [ %95, %99 ]
  ret ptr %116
}

declare void @_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %197

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !242
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %8, ptr noundef nonnull %2)
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ null, %6 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !244
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !245
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %19, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %23

23:                                               ; preds = %21, %17, %12
  %24 = phi ptr [ %22, %21 ], [ null, %17 ], [ null, %12 ]
  %25 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !246
  %27 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !247
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %23
  %31 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %1)
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds ptr, ptr %32, i64 13
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(48) %31)
  %36 = load ptr, ptr %0, align 8, !tbaa !41
  %37 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %36)
  %38 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %37, i64 0, i32 1
  store i8 0, ptr %39, align 8, !tbaa !249
  %40 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %37, i64 0, i32 2
  store i32 0, ptr %40, align 4, !tbaa !251
  %41 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %37, i64 0, i32 3
  store i32 %35, ptr %41, align 8, !tbaa !252
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %37, i64 0, i32 4
  store ptr null, ptr %42, align 8, !tbaa !253
  %43 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %37, i64 0, i32 5
  store ptr %38, ptr %43, align 8, !tbaa !254
  %44 = zext i32 %35 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %38, align 8, !tbaa !46
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %45)
          to label %50 unwind label %61

50:                                               ; preds = %30
  store ptr %49, ptr %42, align 8, !tbaa !253
  %51 = icmp eq i32 %35, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %50
  %53 = zext i32 %35 to i64
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ 0, %52 ], [ %58, %54 ]
  %56 = load ptr, ptr %42, align 8, !tbaa !253
  %57 = getelementptr inbounds ptr, ptr %56, i64 %55
  store ptr null, ptr %57, align 8, !tbaa !56
  %58 = add nuw nsw i64 %55, 1
  %59 = icmp eq i64 %58, %53
  br i1 %59, label %60, label %54, !llvm.loop !255

60:                                               ; preds = %54, %50
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %37, align 8, !tbaa !46
  br label %63

61:                                               ; preds = %30
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %37, ptr noundef %36) #13
  br label %195

63:                                               ; preds = %60, %23
  %64 = phi i32 [ 0, %23 ], [ %35, %60 ]
  %65 = phi ptr [ null, %23 ], [ %37, %60 ]
  %66 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !256
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = icmp eq ptr %67, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %67, ptr noundef nonnull %2)
  br label %81

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !257
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %75, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %81

79:                                               ; preds = %73
  %80 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE)
  br label %81

81:                                               ; preds = %63, %71, %79, %77
  %82 = phi ptr [ %72, %71 ], [ %78, %77 ], [ %80, %79 ], [ null, %63 ]
  %83 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 20
  %84 = load ptr, ptr %83, align 8, !tbaa !258
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %84, ptr noundef nonnull %2)
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ null, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !41
  %91 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 112, ptr noundef %90)
  %92 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
          to label %93 unwind label %109

93:                                               ; preds = %88
  %94 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_723XSComplexTypeDefinitionC1EPNS_15ComplexTypeInfoEPNS_10XSWildcardEPNS_22XSSimpleTypeDefinitionEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_16XSTypeDefinitionEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(106) %91, ptr noundef nonnull %1, ptr noundef %13, ptr noundef %24, ptr noundef %65, ptr noundef %82, ptr noundef %89, ptr noundef %92, ptr noundef nonnull %2, ptr noundef %94)
          to label %95 unwind label %109

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef %1, ptr noundef nonnull %91)
  %98 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %99, i32 noundef 1)
  %100 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %99, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !52
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %101, i64 %104
  store ptr %91, ptr %105, align 8, !tbaa !56
  %106 = add i32 %103, 1
  store i32 %106, ptr %102, align 4, !tbaa !52
  br i1 %68, label %107, label %111

107:                                              ; preds = %95
  %108 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %91, i64 0, i32 3
  store ptr %91, ptr %108, align 8, !tbaa !259
  br label %111

109:                                              ; preds = %93, %88
  %110 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %91, ptr noundef %90) #13
  br label %195

111:                                              ; preds = %107, %95
  %112 = load ptr, ptr %25, align 8, !tbaa !246
  %113 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %112, i64 0, i32 4
  %114 = load i32, ptr %113, align 4, !tbaa !247
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %162, label %116

116:                                              ; preds = %111
  %117 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %1)
  %118 = icmp eq i32 %64, 0
  br i1 %118, label %162, label %119

119:                                              ; preds = %116, %159
  %120 = phi i32 [ %160, %159 ], [ 0, %116 ]
  %121 = load ptr, ptr %117, align 8, !tbaa !46
  %122 = getelementptr inbounds ptr, ptr %121, i64 14
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef nonnull align 8 dereferenceable(56) ptr %123(ptr noundef nonnull align 8 dereferenceable(48) %117, i32 noundef %120)
  %125 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %124, i64 0, i32 10
  %126 = load ptr, ptr %125, align 8, !tbaa !260
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %126, ptr noundef nonnull %2, ptr noundef null)
  %130 = load ptr, ptr %96, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %130, ptr noundef nonnull %124, ptr noundef %129)
  br label %133

131:                                              ; preds = %119
  %132 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %124, ptr noundef nonnull %2, ptr noundef nonnull %91)
  br label %133

133:                                              ; preds = %131, %128
  %134 = phi ptr [ %129, %128 ], [ %132, %131 ]
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %124, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !261
  %137 = icmp eq i32 %136, 8
  br i1 %137, label %159, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %65, i64 0, i32 4
  %140 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %65, i64 0, i32 2
  %141 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %134, ptr noundef nonnull %2)
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef 1)
  %142 = load ptr, ptr %139, align 8, !tbaa !253
  %143 = load i32, ptr %140, align 4, !tbaa !251
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  store ptr %141, ptr %145, align 8, !tbaa !56
  %146 = add i32 %143, 1
  store i32 %146, ptr %140, align 4, !tbaa !251
  %147 = load i32, ptr %135, align 8, !tbaa !261
  %148 = icmp ult i32 %147, 4
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = zext nneg i32 %147 to i64
  %151 = getelementptr inbounds [4 x i32], ptr @switch.table._ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %138, %149
  %154 = phi i32 [ %152, %149 ], [ 0, %138 ]
  %155 = and i32 %147, -2
  %156 = icmp eq i32 %155, 2
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %124, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !262
  tail call void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64) %141, i1 noundef zeroext %156, i32 noundef %154, ptr noundef %158)
  br label %159

159:                                              ; preds = %153, %133
  %160 = add nuw i32 %120, 1
  %161 = icmp eq i32 %160, %64
  br i1 %161, label %162, label %119, !llvm.loop !263

162:                                              ; preds = %159, %116, %111
  %163 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 23
  %164 = load ptr, ptr %163, align 8, !tbaa !264
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %164, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !265
  br label %169

169:                                              ; preds = %162, %166
  %170 = phi i32 [ %168, %166 ], [ 0, %162 ]
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %197, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %1, i64 0, i32 9
  br label %174

174:                                              ; preds = %172, %192
  %175 = phi i32 [ 0, %172 ], [ %193, %192 ]
  %176 = load ptr, ptr %163, align 8, !tbaa !264
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %176, i32 noundef %175)
  br label %180

180:                                              ; preds = %174, %178
  %181 = phi ptr [ %179, %178 ], [ null, %174 ]
  %182 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %181, i64 0, i32 6
  %183 = load i32, ptr %182, align 4, !tbaa !267
  %184 = load i32, ptr %173, align 4, !tbaa !268
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %181, i64 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !127
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %181, ptr noundef nonnull %2, ptr noundef nonnull %91)
  br label %192

192:                                              ; preds = %190, %186, %180
  %193 = add nuw i32 %175, 1
  %194 = icmp eq i32 %193, %170
  br i1 %194, label %197, label %174, !llvm.loop !269

195:                                              ; preds = %109, %61
  %196 = phi { ptr, i32 } [ %110, %109 ], [ %62, %61 ]
  resume { ptr, i32 } %196

197:                                              ; preds = %192, %169, %3
  %198 = phi ptr [ %4, %3 ], [ %91, %169 ], [ %91, %192 ]
  ret ptr %198
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !260
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %1, ptr %5
  %8 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %7)
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %9)
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %1, ptr noundef %8, ptr noundef %2, ptr noundef %11)
          to label %12 unwind label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1)
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  store ptr %10, ptr %20, align 8, !tbaa !56
  %21 = add i32 %18, 1
  store i32 %21, ptr %17, align 4, !tbaa !52
  ret ptr %10

22:                                               ; preds = %3
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #13
  resume { ptr, i32 } %23
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_723XSComplexTypeDefinitionC1EPNS_15ComplexTypeInfoEPNS_10XSWildcardEPNS_22XSSimpleTypeDefinitionEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_16XSTypeDefinitionEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(106), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = load i32, ptr %4, align 8, !tbaa !65
  %16 = load ptr, ptr %0, align 8, !tbaa !61
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !68
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !270
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !272

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !63, !range !219, !noundef !220
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !273
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !46
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(36) %47) #13
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !273
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !270
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !61
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24)
  %61 = load ptr, ptr %20, align 8, !tbaa !64
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  store ptr %2, ptr %60, align 8, !tbaa !273
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !274
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !270
  store ptr %60, ptr %62, align 8, !tbaa !56
  %66 = load i32, ptr %8, align 8, !tbaa !67
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !67
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4)
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_714XSAttributeUseC1EPNS_22XSAttributeDeclarationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef %2, ptr noundef %6)
          to label %7 unwind label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  store ptr %5, ptr %15, align 8, !tbaa !56
  %16 = add i32 %13, 1
  store i32 %16, ptr %12, align 4, !tbaa !52
  ret ptr %5

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory13processAttUseEPNS_12SchemaAttDefEPNS_14XSAttributeUseE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !261
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [4 x i32], ptr @switch.table._ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %3 ]
  %13 = and i32 %5, -2
  %14 = icmp eq i32 %13, 2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !262
  tail call void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64) %2, i1 noundef zeroext %14, i32 noundef %12, ptr noundef %16)
  ret void
}

declare void @_ZN11xercesc_2_715XSIDCDefinitionC1EPNS_18IdentityConstraintEPS0_PNS_12XSAnnotationEPNS_16RefArrayVectorOfItEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15XMLNotationDeclEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !41
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7)
  %9 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, ptr noundef %1)
          to label %10 unwind label %24

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_721XSNotationDeclarationC1EPNS_15XMLNotationDeclEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %1, ptr noundef %9, ptr noundef nonnull %2, ptr noundef %11)
          to label %12 unwind label %24

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %1, ptr noundef nonnull %8)
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  store ptr %8, ptr %22, align 8, !tbaa !56
  %23 = add i32 %20, 1
  store i32 %23, ptr %19, align 4, !tbaa !52
  br label %26

24:                                               ; preds = %10, %6
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  resume { ptr, i32 } %25

26:                                               ; preds = %12, %3
  %27 = phi ptr [ %4, %3 ], [ %8, %12 ]
  ret ptr %27
}

declare void @_ZN11xercesc_2_721XSNotationDeclarationC1EPNS_15XMLNotationDeclEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_714XSAttributeUseC1EPNS_22XSAttributeDeclarationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory28createXSModelGroupDefinitionEPNS_15XercesGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, ptr noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !41
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %7)
  %9 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %1)
          to label %10 unwind label %30

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %9, ptr noundef %2, ptr noundef %11)
          to label %12 unwind label %30

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1)
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  store ptr %8, ptr %20, align 8, !tbaa !56
  %21 = add i32 %18, 1
  store i32 %21, ptr %17, align 4, !tbaa !52
  %22 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %1, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !277
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !265
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %1, i64 0, i32 2
  br label %32

29:                                               ; preds = %42, %12
  ret ptr %8

30:                                               ; preds = %10, %3
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #13
  resume { ptr, i32 } %31

32:                                               ; preds = %27, %42
  %33 = phi i32 [ 0, %27 ], [ %43, %42 ]
  %34 = load ptr, ptr %22, align 8, !tbaa !277
  %35 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef %33)
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %35, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !267
  %38 = load i32, ptr %28, align 4, !tbaa !278
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef null)
  br label %42

42:                                               ; preds = %40, %32
  %43 = add nuw i32 %33, 1
  %44 = icmp eq i32 %43, %25
  br i1 %44, label %29, label %32, !llvm.loop !279
}

declare void @_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !280
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !282
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !41
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14)
  %16 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %15, i64 0, i32 1
  store i8 0, ptr %17, align 8, !tbaa !249
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %15, i64 0, i32 2
  store i32 0, ptr %18, align 4, !tbaa !251
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %15, i64 0, i32 3
  store i32 %11, ptr %19, align 8, !tbaa !252
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %15, i64 0, i32 4
  store ptr null, ptr %20, align 8, !tbaa !253
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %15, i64 0, i32 5
  store ptr %16, ptr %21, align 8, !tbaa !254
  %22 = zext i32 %11 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = load ptr, ptr %16, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %23)
          to label %28 unwind label %37

28:                                               ; preds = %13
  store ptr %27, ptr %20, align 8, !tbaa !253
  %29 = zext i32 %11 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %32 = load ptr, ptr %20, align 8, !tbaa !253
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !56
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %29
  br i1 %35, label %36, label %30, !llvm.loop !255

36:                                               ; preds = %30
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !46
  br label %39

37:                                               ; preds = %13
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %15, ptr noundef %14) #13
  br label %105

39:                                               ; preds = %36, %76
  %40 = phi i32 [ 0, %36 ], [ %77, %76 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !280
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %41, i32 noundef %40)
  br label %45

45:                                               ; preds = %39, %43
  %46 = phi ptr [ %44, %43 ], [ null, %39 ]
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %46, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !260
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %46, ptr %48
  %51 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %50, ptr noundef %2, ptr noundef null)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %46, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !261
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %51, ptr noundef nonnull %2)
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 1)
  %59 = load ptr, ptr %20, align 8, !tbaa !253
  %60 = load i32, ptr %18, align 4, !tbaa !251
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  store ptr %58, ptr %62, align 8, !tbaa !56
  %63 = add i32 %60, 1
  store i32 %63, ptr %18, align 4, !tbaa !251
  %64 = load i32, ptr %54, align 8, !tbaa !261
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = zext nneg i32 %64 to i64
  %68 = getelementptr inbounds [4 x i32], ptr @switch.table._ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %57, %66
  %71 = phi i32 [ %69, %66 ], [ 0, %57 ]
  %72 = and i32 %64, -2
  %73 = icmp eq i32 %72, 2
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %46, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !262
  tail call void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64) %58, i1 noundef zeroext %73, i32 noundef %71, ptr noundef %75)
  br label %76

76:                                               ; preds = %70, %53, %45
  %77 = add nuw i32 %40, 1
  %78 = icmp eq i32 %77, %11
  br i1 %78, label %79, label %39, !llvm.loop !284

79:                                               ; preds = %76, %10
  %80 = phi ptr [ null, %10 ], [ %15, %76 ]
  %81 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %1, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !285
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %82, ptr noundef %2)
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi ptr [ %85, %84 ], [ null, %79 ]
  %88 = load ptr, ptr %0, align 8, !tbaa !41
  %89 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %88)
  %90 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %1)
          to label %91 unwind label %103

91:                                               ; preds = %86
  %92 = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_726XSAttributeGroupDefinitionC1EPNS_18XercesAttGroupInfoEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_10XSWildcardEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %89, ptr noundef nonnull %1, ptr noundef %80, ptr noundef %87, ptr noundef %90, ptr noundef %2, ptr noundef %92)
          to label %93 unwind label %103

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %95, i32 noundef 1)
  %96 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !54
  %98 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !52
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %97, i64 %100
  store ptr %89, ptr %101, align 8, !tbaa !56
  %102 = add i32 %99, 1
  store i32 %102, ptr %98, align 4, !tbaa !52
  ret ptr %89

103:                                              ; preds = %91, %86
  %104 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %89, ptr noundef %88) #13
  br label %105

105:                                              ; preds = %103, %37
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %38, %37 ]
  resume { ptr, i32 } %106
}

declare void @_ZN11xercesc_2_726XSAttributeGroupDefinitionC1EPNS_18XercesAttGroupInfoEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_10XSWildcardEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !88
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !287
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715XSObjectFactory24isMultiValueFacetDefinedEPNS_17DatatypeValidatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr noundef readonly %1) local_unnamed_addr #7 align 2 !prof !40 {
  %3 = icmp ne ptr %1, null
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !164
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %19

9:                                                ; preds = %14
  %10 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %17, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !164
  %12 = and i32 %11, 24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !llvm.loop !173

14:                                               ; preds = %4, %9
  %15 = phi ptr [ %17, %9 ], [ %1, %4 ]
  %16 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !143
  %18 = icmp ne ptr %17, null
  br i1 %18, label %9, label %19, !llvm.loop !173

19:                                               ; preds = %14, %9, %4, %2
  %20 = phi i1 [ %3, %2 ], [ %3, %4 ], [ %18, %9 ], [ %18, %14 ]
  ret i1 %20
}

declare void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !288
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !182
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !185
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !186
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !289
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %14 = load ptr, ptr %10, align 8, !tbaa !289
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #13
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !291

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !186
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !187
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !292
  br i1 %5, label %13, label %6, !prof !293

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !289
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !294
  ret ptr %16
}

declare void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !297

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #13
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef signext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !168
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

declare void @_ZN11xercesc_2_722XSSimpleTypeDefinition12setFacetInfoEiiPNS_11RefVectorOfINS_7XSFacetEEEPNS1_INS_17XSMultiValueFacetEEEPNS_16RefArrayVectorOfItEE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !116
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !299

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !301
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !265
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !306
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !307 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !233
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !308

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !309
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !310
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !282
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !311
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !312
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !313
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !315
  %7 = load ptr, ptr %0, align 8, !tbaa !316
  %8 = load ptr, ptr %4, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !317
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !313
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !318
  %22 = load ptr, ptr %19, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !320

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !321
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !54
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(36) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !52
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !322

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !48, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(36) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !52
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !48, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !54
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(36) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !54
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !52
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !323
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !48, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(36) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !52
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
  %40 = load ptr, ptr %35, align 8, !tbaa !54
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !324

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !52
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !52
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !48, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(36) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !54
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(36) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !52
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !325

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !67
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !64
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !274
  %23 = load i8, ptr %11, align 8, !tbaa !63, !range !219, !noundef !220
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !273
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(36) %26) #13
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !61
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !326

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !64
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !56
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !65
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !327

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !75, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !77
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !79
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(56) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !77
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !328

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !77
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !75, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(56) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !77
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !75, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !79
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(56) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !79
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !77
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !329
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !75, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(56) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !77
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
  %40 = load ptr, ptr %35, align 8, !tbaa !79
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !330

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !75, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(56) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !75, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !77
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !79
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(56) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !77
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !331

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !77
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !79
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !332

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !80
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !79
  store i32 %12, ptr %6, align 8, !tbaa !78
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !148, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !150
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !152
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(128) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !150
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !333

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !152
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !150
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !148, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(128) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !152
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !150
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !148, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !152
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(128) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !152
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !150
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !334
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !150
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !148, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(128) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !150
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !152
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !335

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !152
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !150
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !150
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !148, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(128) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !148, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !150
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !152
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(128) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !150
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !336

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !152
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !150
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !151
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !150
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !152
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !337

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !153
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !152
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !152
  store i32 %12, ptr %6, align 8, !tbaa !151
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !338
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !340
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !341
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !342
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !343
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !344
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  %11 = load ptr, ptr %0, align 8, !tbaa !338
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %14

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !344
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !227, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !123
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !121
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !123
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !345

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !229
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !123
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !227, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !123
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !227, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !121
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !121
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !123
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !346
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !229
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !227, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !123
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !121
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !347

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !121
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !123
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !123
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !227, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !227, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !123
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !121
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !123
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !348

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !229
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !338
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #13
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !338
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !342
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !341
  %21 = load i32, ptr %12, align 8, !tbaa !342
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !341
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !56
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !349
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !342
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !343
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !340, !range !219, !noundef !220
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !350
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(72) %21) #13
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !350
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !352
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !353
  br label %47

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !338
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32)
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !341
  %38 = load i32, ptr %5, align 4, !tbaa !354
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  store ptr %3, ptr %35, align 8, !tbaa !350
  %42 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !355
  %43 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !352
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 3
  store i32 %2, ptr %44, align 8, !tbaa !353
  store ptr %35, ptr %40, align 8, !tbaa !56
  %45 = load i32, ptr %9, align 4, !tbaa !343
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 4, !tbaa !343
  br label %47

47:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !228
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !229
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !123
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !121
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !356

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !229
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !121
  store i32 %12, ptr %6, align 8, !tbaa !228
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !342
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !338
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %14 = load ptr, ptr %0, align 8, !tbaa !338
  store ptr %13, ptr %2, align 8, !tbaa !357
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !359
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !342
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !341
  %24 = load ptr, ptr %2, align 8, !tbaa !357
  store ptr null, ptr %2, align 8, !tbaa !357
  store ptr %24, ptr %22, align 8, !tbaa !341
  store i32 %6, ptr %3, align 8, !tbaa !342
  %25 = load ptr, ptr %0, align 8, !tbaa !338
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !341
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !355
  %39 = load ptr, ptr %20, align 8, !tbaa !344
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !352
  %42 = load ptr, ptr %0, align 8, !tbaa !338
  %43 = load ptr, ptr %39, align 8, !tbaa !46
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  store ptr %49, ptr %37, align 8, !tbaa !355
  store ptr %36, ptr %48, align 8, !tbaa !56
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !360

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !342
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !361

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !344
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !342
  %9 = load ptr, ptr %0, align 8, !tbaa !338
  %10 = load ptr, ptr %6, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !354
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !341
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !353
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !344
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !352
  %28 = load ptr, ptr %25, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !362

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !357
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !359
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #16
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !249, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !251
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !253
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !251
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !363

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !254
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !253
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !251
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !254
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !249, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !253
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(64) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !253
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !251
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !251
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !249, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !253
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(64) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !253
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !251
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !364
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !251
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !254
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !249, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !253
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !251
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !253
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !365

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !253
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !251
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !251
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !251
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !249, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !253
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !249, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !251
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !253
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !251
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !366

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !254
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !253
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.28", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !61
  store ptr %12, ptr %2, align 8, !tbaa !367
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.28", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !369
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !65
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = load ptr, ptr %2, align 8, !tbaa !367
  store ptr null, ptr %2, align 8, !tbaa !367
  store ptr %23, ptr %21, align 8, !tbaa !64
  store i32 %5, ptr %3, align 8, !tbaa !65
  %24 = load ptr, ptr %0, align 8, !tbaa !61
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !64
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !274
  %38 = load ptr, ptr %19, align 8, !tbaa !68
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !270
  %41 = load ptr, ptr %0, align 8, !tbaa !61
  %42 = load ptr, ptr %38, align 8, !tbaa !46
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  store ptr %48, ptr %36, align 8, !tbaa !274
  store ptr %35, ptr %47, align 8, !tbaa !56
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !370

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !65
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !371

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !367
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.28", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !369
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #16
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !251
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !252
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !254
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !251
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !253
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !372

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !254
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !253
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !253
  store i32 %12, ptr %6, align 8, !tbaa !252
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !202, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !204
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !374

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !207
  %15 = load ptr, ptr %11, align 8, !tbaa !206
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %14, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %35, !prof !375

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !204
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !376, !llvm.loop !377

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !207
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !206
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %37, !prof !378

34:                                               ; preds = %26
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
  tail call void @__clang_call_terminate(ptr %41) #14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !379 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !202, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !204
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !374

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !207
  %15 = load ptr, ptr %11, align 8, !tbaa !206
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %14, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %34, !prof !375

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !204
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !376, !llvm.loop !377

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !207
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !206
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %41 unwind label %36, !prof !378

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

36:                                               ; preds = %26
  %37 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #14
  unreachable

41:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !380 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !204
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !381

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 52, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !202, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !382

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !207
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !206
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = load ptr, ptr %20, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25), !prof !383
  br label %29

29:                                               ; preds = %18, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !206
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !204
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %12

10:                                               ; preds = %24, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !204
  ret void

12:                                               ; preds = %5, %24
  %13 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %14 = load i8, ptr %6, align 8, !tbaa !202, !range !219, !noundef !220
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !207
  %18 = load ptr, ptr %8, align 8, !tbaa !206
  %19 = getelementptr inbounds ptr, ptr %18, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = load ptr, ptr %17, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
  br label %24

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr %9, align 8, !tbaa !206
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %13, 1
  %28 = load i32, ptr %2, align 4, !tbaa !204
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %12, label %10, !llvm.loop !384
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !204
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 77, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !202, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !207
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = load ptr, ptr %19, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24)
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, ptr %3, align 4, !tbaa !204
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !206
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !385

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !206
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !204
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !204
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !204
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !202, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !207
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %12, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17)
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !202, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !204
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !207
  %15 = load ptr, ptr %11, align 8, !tbaa !206
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %14, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !204
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !386

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !207
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !206
  %30 = load ptr, ptr %27, align 8, !tbaa !46
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !204
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !202, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !206
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %23) #16
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !206
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !204
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !204
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !202, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !206
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #16
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !206
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !56
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !204
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !387
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !204
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !202, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %22) #16
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !204
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !206
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !56
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !388

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !206
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !56
  store i32 %27, ptr %3, align 4, !tbaa !204
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !204
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !204
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !202, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !206
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %15) #16
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !202, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !204
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !206
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #16
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !204
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !389

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !207
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !206
  %28 = load ptr, ptr %25, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 !prof !390 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !204
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !205
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !391

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !207
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !392
  %21 = load i32, ptr %3, align 4, !tbaa !204
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !393

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !394

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !206
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !395, !llvm.loop !396

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !207
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !397
  store ptr %20, ptr %50, align 8, !tbaa !206
  store i32 %12, ptr %6, align 8, !tbaa !205
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !52
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !54
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !398

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !55
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !54
  store i32 %12, ptr %6, align 8, !tbaa !53
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !166, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !170
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !168
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !399

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !171
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !170
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !166, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !170
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(64) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !170
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !168
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !168
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !166, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !170
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(64) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !170
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !168
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !400
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !168
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !166, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !170
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !168
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !170
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !401

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !170
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !168
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !168
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !168
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !166, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !170
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !166, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !170
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !168
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !402

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !171
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !170
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !174, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !176
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !178
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !176
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !403

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load ptr, ptr %28, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !176
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !174, !range !219, !noundef !220
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(64) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !178
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !176
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !174, !range !219, !noundef !220
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !178
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(64) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !178
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !56
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !176
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !404
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !174, !range !219, !noundef !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #13
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !178
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !56
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !405

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !56
  store i32 %30, ptr %3, align 4, !tbaa !176
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !176
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !174, !range !219, !noundef !220
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !174, !range !219, !noundef !220
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !176
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !178
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !176
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !406

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  %31 = load ptr, ptr %28, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !177
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !179
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !176
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !178
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !407

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !179
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !178
  %52 = load ptr, ptr %49, align 8, !tbaa !46
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !291

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !408
  store ptr %7, ptr %2, align 8, !tbaa !182
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !182
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !293

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !185
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !185
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !187
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !409

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !410
  %23 = load i32, ptr %12, align 8, !tbaa !185
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !411

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !185
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !412, !llvm.loop !413

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !182
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !185
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !182
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !296 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !414
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !410
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !415
  store ptr null, ptr %3, align 8, !tbaa !410
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !416
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !417

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13, !prof !418
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !296 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !419
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !420

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !187
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !421

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !419
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !410
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !422

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !408
  %23 = load i8, ptr %11, align 8, !tbaa !423, !range !219, !noundef !220
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !291

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !294
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !291

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #13, !prof !424
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !414
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !425
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !293, !llvm.loop !426

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !410
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !56
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !187
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !427, !llvm.loop !428

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !46
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !168
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !169
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !168
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !56
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !170
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !56
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !429

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !171
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !170
  %52 = load ptr, ptr %49, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !170
  store i32 %12, ptr %6, align 8, !tbaa !169
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv, i64 35}
!36 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 35}
!37 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 188746}
!38 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSN11xercesc_2_715XSObjectFactoryE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !45, i64 0}
!48 = !{!49, !50, i64 8}
!49 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!50 = !{!"bool", !44, i64 0}
!51 = !{!"int", !44, i64 0}
!52 = !{!49, !51, i64 12}
!53 = !{!49, !51, i64 16}
!54 = !{!49, !43, i64 24}
!55 = !{!49, !43, i64 32}
!56 = !{!43, !43, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!42, !43, i64 16}
!61 = !{!62, !43, i64 0}
!62 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_8XSObjectEEE", !43, i64 0, !50, i64 8, !43, i64 16, !51, i64 24, !51, i64 28, !51, i64 32, !43, i64 40}
!63 = !{!62, !50, i64 8}
!64 = !{!62, !43, i64 16}
!65 = !{!62, !51, i64 24}
!66 = !{!62, !51, i64 28}
!67 = !{!62, !51, i64 32}
!68 = !{!62, !43, i64 40}
!69 = distinct !{!69, !58, !59}
!70 = !{!42, !43, i64 8}
!71 = !{!72, !74, i64 48}
!72 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !73, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !74, i64 48, !50, i64 52, !50, i64 53, !51, i64 56, !51, i64 60}
!73 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!74 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !44, i64 0}
!75 = !{!76, !50, i64 8}
!76 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!77 = !{!76, !51, i64 12}
!78 = !{!76, !51, i64 16}
!79 = !{!76, !43, i64 24}
!80 = !{!76, !43, i64 32}
!81 = distinct !{!81, !58, !59}
!82 = !{!72, !43, i64 32}
!83 = !{!72, !43, i64 40}
!84 = !{!72, !51, i64 56}
!85 = !{!72, !51, i64 60}
!86 = !{!87, !43, i64 16}
!87 = !{!"_ZTSN11xercesc_2_77XSModelE", !43, i64 0, !43, i64 8, !43, i64 16, !44, i64 24, !44, i64 136, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !50, i64 296, !50, i64 297}
!88 = !{!89, !51, i64 12}
!89 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!90 = distinct !{!90, !58, !59}
!91 = !{!92, !43, i64 8}
!92 = !{!"_ZTSN11xercesc_2_715XSNamespaceItemE", !43, i64 0, !43, i64 8, !43, i64 16, !44, i64 24, !43, i64 136, !44, i64 144, !43, i64 256}
!93 = !{!94, !43, i64 120}
!94 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !95, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !50, i64 128, !96, i64 136}
!95 = !{!"_ZTSN11xercesc_2_77GrammarE", !73, i64 0}
!96 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !73, i64 0, !43, i64 8, !43, i64 16}
!97 = !{!87, !43, i64 288}
!98 = !{!72, !43, i64 24}
!99 = !{!100, !43, i64 64}
!100 = !{!"_ZTSN11xercesc_2_720XSElementDeclarationE", !101, i64 0, !103, i64 36, !103, i64 38, !104, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88}
!101 = !{!"_ZTSN11xercesc_2_78XSObjectE", !102, i64 8, !43, i64 16, !43, i64 24, !51, i64 32}
!102 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !44, i64 0}
!103 = !{!"short", !44, i64 0}
!104 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !44, i64 0}
!105 = !{!106, !43, i64 128}
!106 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !107, i64 0, !109, i64 36, !110, i64 40, !111, i64 44, !112, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !51, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !50, i64 144, !50, i64 145, !50, i64 146}
!107 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !73, i64 0, !43, i64 8, !43, i64 16, !108, i64 24, !51, i64 28, !50, i64 32}
!108 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !44, i64 0}
!109 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !44, i64 0}
!110 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !44, i64 0}
!111 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !44, i64 0}
!112 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !44, i64 0}
!113 = !{!106, !43, i64 80}
!114 = !{!106, !43, i64 136}
!115 = !{!106, !43, i64 112}
!116 = !{!117, !51, i64 12}
!117 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!118 = !{!87, !43, i64 248}
!119 = !{!120, !43, i64 16}
!120 = !{!"_ZTSN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEE", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!121 = !{!122, !43, i64 24}
!122 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!123 = !{!122, !51, i64 12}
!124 = !{!120, !43, i64 24}
!125 = !{!120, !43, i64 8}
!126 = distinct !{!126, !58, !59}
!127 = !{!106, !110, i64 40}
!128 = !{!100, !43, i64 56}
!129 = !{!130, !104, i64 64}
!130 = !{!"_ZTSN11xercesc_2_722XSAttributeDeclarationE", !101, i64 0, !43, i64 40, !43, i64 48, !43, i64 56, !104, i64 64, !43, i64 72}
!131 = !{!130, !43, i64 72}
!132 = !{!133, !43, i64 80}
!133 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !134, i64 0, !51, i64 56, !111, i64 60, !112, i64 64, !110, i64 68, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112}
!134 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !73, i64 0, !135, i64 8, !136, i64 12, !137, i64 16, !50, i64 20, !50, i64 21, !51, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!135 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !44, i64 0}
!136 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !44, i64 0}
!137 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !44, i64 0}
!138 = !{!133, !110, i64 68}
!139 = !{!140, !141, i64 28}
!140 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !73, i64 0, !50, i64 8, !50, i64 9, !50, i64 10, !50, i64 11, !103, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !141, i64 28, !142, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96}
!141 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !44, i64 0}
!142 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !44, i64 0}
!143 = !{!140, !43, i64 40}
!144 = !{!145, !43, i64 120}
!145 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !140, i64 0, !50, i64 104, !50, i64 105, !43, i64 112, !43, i64 120, !43, i64 128}
!146 = !{!147, !51, i64 12}
!147 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!148 = !{!149, !50, i64 8}
!149 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!150 = !{!149, !51, i64 12}
!151 = !{!149, !51, i64 16}
!152 = !{!149, !43, i64 24}
!153 = !{!149, !43, i64 32}
!154 = distinct !{!154, !58, !59}
!155 = distinct !{!155, !58, !59}
!156 = !{!157, !160, i64 64}
!157 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !158, i64 0, !51, i64 56, !51, i64 60, !160, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120}
!158 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !101, i64 0, !159, i64 36, !103, i64 40, !43, i64 48}
!159 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !44, i64 0}
!160 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !44, i64 0}
!161 = !{!157, !43, i64 104}
!162 = !{!147, !43, i64 32}
!163 = !{!147, !43, i64 24}
!164 = !{!140, !51, i64 20}
!165 = !{!140, !51, i64 24}
!166 = !{!167, !50, i64 8}
!167 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!168 = !{!167, !51, i64 12}
!169 = !{!167, !51, i64 16}
!170 = !{!167, !43, i64 24}
!171 = !{!167, !43, i64 32}
!172 = distinct !{!172, !58, !59}
!173 = distinct !{!173, !58, !59}
!174 = !{!175, !50, i64 8}
!175 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!176 = !{!175, !51, i64 12}
!177 = !{!175, !51, i64 16}
!178 = !{!175, !43, i64 24}
!179 = !{!175, !43, i64 32}
!180 = distinct !{!180, !58, !59}
!181 = !{!140, !43, i64 48}
!182 = !{!183, !43, i64 16}
!183 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE", !184, i64 0, !50, i64 8, !43, i64 16, !51, i64 24, !43, i64 32, !43, i64 40}
!184 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE"}
!185 = !{!183, !51, i64 24}
!186 = !{!183, !43, i64 32}
!187 = !{!188, !51, i64 24}
!188 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !43, i64 0, !50, i64 8, !43, i64 16, !51, i64 24, !51, i64 28, !51, i64 32, !43, i64 40}
!189 = !{!190, !43, i64 24}
!190 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !73, i64 0, !191, i64 8, !191, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!191 = !{!"long", !44, i64 0}
!192 = !{!103, !103, i64 0}
!193 = distinct !{!193, !58, !59}
!194 = distinct !{!194, !58, !59}
!195 = !{!140, !43, i64 56}
!196 = !{!197, !51, i64 4}
!197 = !{!"_ZTSN11xercesc_2_718XMLStringTokenizerE", !51, i64 0, !51, i64 4, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!198 = !{!197, !51, i64 0}
!199 = !{!197, !43, i64 8}
!200 = !{!197, !43, i64 16}
!201 = distinct !{!201, !58, !59}
!202 = !{!203, !50, i64 8}
!203 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!204 = !{!203, !51, i64 12}
!205 = !{!203, !51, i64 16}
!206 = !{!203, !43, i64 24}
!207 = !{!203, !43, i64 32}
!208 = distinct !{!208, !58, !59}
!209 = distinct !{!209, !58, !59}
!210 = !{!190, !43, i64 32}
!211 = !{!140, !103, i64 12}
!212 = !{!158, !159, i64 36}
!213 = !{!157, !43, i64 80}
!214 = !{!157, !43, i64 88}
!215 = !{!216, !217, i64 36}
!216 = !{!"_ZTSN11xercesc_2_77XSFacetE", !101, i64 0, !217, i64 36, !50, i64 40, !43, i64 48, !43, i64 56}
!217 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition5FACETE", !44, i64 0}
!218 = !{!216, !50, i64 40}
!219 = !{i8 0, i8 2}
!220 = !{}
!221 = distinct !{!221, !58, !59}
!222 = !{!223, !217, i64 36}
!223 = !{!"_ZTSN11xercesc_2_717XSMultiValueFacetE", !101, i64 0, !217, i64 36, !50, i64 40, !43, i64 48, !43, i64 56}
!224 = !{!223, !50, i64 40}
!225 = distinct !{!225, !58, !59}
!226 = !{!120, !43, i64 0}
!227 = !{!122, !50, i64 8}
!228 = !{!122, !51, i64 16}
!229 = !{!122, !43, i64 32}
!230 = distinct !{!230, !58, !59}
!231 = !{!232, !43, i64 32}
!232 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !73, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !51, i64 48}
!233 = !{!234, !51, i64 12}
!234 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!235 = !{!236, !43, i64 8}
!236 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !73, i64 0, !43, i64 8, !43, i64 16}
!237 = !{!238, !43, i64 16}
!238 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !73, i64 0, !51, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!239 = distinct !{!239, !58, !59}
!240 = !{!241, !43, i64 56}
!241 = !{!"_ZTSN11xercesc_2_79IC_KeyRefE", !232, i64 0, !43, i64 56}
!242 = !{!243, !43, i64 104}
!243 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !73, i64 0, !50, i64 8, !50, i64 9, !50, i64 10, !50, i64 11, !50, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168}
!244 = !{!243, !51, i64 32}
!245 = !{!243, !43, i64 80}
!246 = !{!243, !43, i64 128}
!247 = !{!248, !51, i64 28}
!248 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !43, i64 0, !50, i64 8, !43, i64 16, !51, i64 24, !51, i64 28, !43, i64 32}
!249 = !{!250, !50, i64 8}
!250 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!251 = !{!250, !51, i64 12}
!252 = !{!250, !51, i64 16}
!253 = !{!250, !43, i64 24}
!254 = !{!250, !43, i64 32}
!255 = distinct !{!255, !58, !59}
!256 = !{!243, !43, i64 88}
!257 = !{!243, !43, i64 72}
!258 = !{!243, !43, i64 96}
!259 = !{!158, !43, i64 48}
!260 = !{!133, !43, i64 112}
!261 = !{!134, !135, i64 8}
!262 = !{!134, !43, i64 32}
!263 = distinct !{!263, !58, !59}
!264 = !{!243, !43, i64 120}
!265 = !{!266, !51, i64 12}
!266 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!267 = !{!106, !51, i64 52}
!268 = !{!243, !51, i64 28}
!269 = distinct !{!269, !58, !59}
!270 = !{!271, !43, i64 16}
!271 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!272 = distinct !{!272, !58, !59}
!273 = !{!271, !43, i64 0}
!274 = !{!271, !43, i64 8}
!275 = !{!276, !43, i64 24}
!276 = !{!"_ZTSN11xercesc_2_715XercesGroupInfoE", !73, i64 0, !50, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!277 = !{!276, !43, i64 32}
!278 = !{!276, !51, i64 12}
!279 = distinct !{!279, !58, !59}
!280 = !{!281, !43, i64 24}
!281 = !{!"_ZTSN11xercesc_2_718XercesAttGroupInfoE", !73, i64 0, !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!282 = !{!283, !51, i64 12}
!283 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEEE", !50, i64 8, !51, i64 12, !51, i64 16, !43, i64 24, !43, i64 32}
!284 = distinct !{!284, !58, !59}
!285 = !{!281, !43, i64 40}
!286 = !{!89, !43, i64 32}
!287 = !{!89, !43, i64 24}
!288 = !{!183, !50, i64 8}
!289 = !{!183, !43, i64 40}
!290 = !{!"function_entry_count", i64 35}
!291 = !{!"branch_weights", i32 0, i32 35}
!292 = !{!"VP", i32 0, i64 35, i64 8042189608553320560, i64 35}
!293 = !{!"branch_weights", i32 35, i32 0}
!294 = !{!295, !43, i64 0}
!295 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!296 = !{!"function_entry_count", i64 34}
!297 = !{!"branch_weights", i32 34, i32 0}
!298 = !{!"function_entry_count", i64 32}
!299 = !{!"branch_weights", i32 32, i32 0}
!300 = !{!117, !43, i64 32}
!301 = !{!117, !43, i64 24}
!302 = !{!303, !43, i64 40}
!303 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !304, i64 8, !43, i64 16, !51, i64 24, !43, i64 32, !43, i64 40}
!304 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !44, i64 0}
!305 = !{!266, !43, i64 32}
!306 = !{!266, !43, i64 24}
!307 = !{!"function_entry_count", i64 475779}
!308 = !{!"branch_weights", i32 475779, i32 0}
!309 = !{!234, !43, i64 32}
!310 = !{!234, !43, i64 24}
!311 = !{!283, !43, i64 32}
!312 = !{!283, !43, i64 24}
!313 = !{!314, !43, i64 40}
!314 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !43, i64 0, !50, i64 8, !43, i64 16, !51, i64 24, !51, i64 28, !51, i64 32, !43, i64 40}
!315 = !{!314, !51, i64 24}
!316 = !{!314, !43, i64 0}
!317 = !{!314, !43, i64 16}
!318 = !{!319, !43, i64 16}
!319 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!320 = distinct !{!320, !58, !59}
!321 = !{!319, !43, i64 0}
!322 = distinct !{!322, !58, !59}
!323 = distinct !{!323, !58, !59}
!324 = distinct !{!324, !58, !59}
!325 = distinct !{!325, !58, !59}
!326 = distinct !{!326, !58, !59}
!327 = distinct !{!327, !58, !59}
!328 = distinct !{!328, !58, !59}
!329 = distinct !{!329, !58, !59}
!330 = distinct !{!330, !58, !59}
!331 = distinct !{!331, !58, !59}
!332 = distinct !{!332, !58, !59}
!333 = distinct !{!333, !58, !59}
!334 = distinct !{!334, !58, !59}
!335 = distinct !{!335, !58, !59}
!336 = distinct !{!336, !58, !59}
!337 = distinct !{!337, !58, !59}
!338 = !{!339, !43, i64 0}
!339 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEE", !43, i64 0, !50, i64 8, !43, i64 16, !51, i64 24, !51, i64 28, !43, i64 32}
!340 = !{!339, !50, i64 8}
!341 = !{!339, !43, i64 16}
!342 = !{!339, !51, i64 24}
!343 = !{!339, !51, i64 28}
!344 = !{!339, !43, i64 32}
!345 = distinct !{!345, !58, !59}
!346 = distinct !{!346, !58, !59}
!347 = distinct !{!347, !58, !59}
!348 = distinct !{!348, !58, !59}
!349 = distinct !{!349, !58, !59}
!350 = !{!351, !43, i64 0}
!351 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEE", !43, i64 0, !43, i64 8, !43, i64 16, !51, i64 24}
!352 = !{!351, !43, i64 16}
!353 = !{!351, !51, i64 24}
!354 = !{!51, !51, i64 0}
!355 = !{!351, !43, i64 8}
!356 = distinct !{!356, !58, !59}
!357 = !{!358, !43, i64 0}
!358 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEE", !43, i64 0, !43, i64 8}
!359 = !{!358, !43, i64 8}
!360 = distinct !{!360, !58, !59}
!361 = distinct !{!361, !58, !59}
!362 = distinct !{!362, !58, !59}
!363 = distinct !{!363, !58, !59}
!364 = distinct !{!364, !58, !59}
!365 = distinct !{!365, !58, !59}
!366 = distinct !{!366, !58, !59}
!367 = !{!368, !43, i64 0}
!368 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEE", !43, i64 0, !43, i64 8}
!369 = !{!368, !43, i64 8}
!370 = distinct !{!370, !58, !59}
!371 = distinct !{!371, !58, !59}
!372 = distinct !{!372, !58, !59}
!373 = !{!"branch_weights", i32 6, i32 188740}
!374 = !{!"branch_weights", i32 1, i32 188739}
!375 = !{!"VP", i32 0, i64 188992, i64 -7405368087501025645, i64 188992}
!376 = !{!"branch_weights", i32 253, i32 188739}
!377 = distinct !{!377, !58, !59}
!378 = !{!"VP", i32 0, i64 188746, i64 -7405368087501025645, i64 188746}
!379 = !{!"function_entry_count", i64 188746}
!380 = !{!"function_entry_count", i64 317171}
!381 = !{!"branch_weights", i32 317171, i32 0}
!382 = !{!"branch_weights", i32 0, i32 317171}
!383 = !{!"VP", i32 0, i64 317171, i64 -7405368087501025645, i64 317171}
!384 = distinct !{!384, !58, !59}
!385 = distinct !{!385, !58, !59}
!386 = distinct !{!386, !58, !59}
!387 = distinct !{!387, !58, !59}
!388 = distinct !{!388, !58, !59}
!389 = distinct !{!389, !58, !59}
!390 = !{!"function_entry_count", i64 188992}
!391 = !{!"branch_weights", i32 9, i32 188983}
!392 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!393 = !{!"branch_weights", i32 1, i32 143}
!394 = !{!"branch_weights", i32 143, i32 1}
!395 = !{!"branch_weights", i32 143, i32 9329}
!396 = distinct !{!396, !58, !59}
!397 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!398 = distinct !{!398, !58, !59}
!399 = distinct !{!399, !58, !59}
!400 = distinct !{!400, !58, !59}
!401 = distinct !{!401, !58, !59}
!402 = distinct !{!402, !58, !59}
!403 = distinct !{!403, !58, !59}
!404 = distinct !{!404, !58, !59}
!405 = distinct !{!405, !58, !59}
!406 = distinct !{!406, !58, !59}
!407 = distinct !{!407, !58, !59}
!408 = !{!295, !43, i64 8}
!409 = !{!"branch_weights", i32 15, i32 20}
!410 = !{!188, !43, i64 16}
!411 = !{!"branch_weights", i32 304, i32 6}
!412 = !{!"branch_weights", i32 14, i32 290}
!413 = distinct !{!413, !58, !59}
!414 = !{!188, !43, i64 0}
!415 = !{!"VP", i32 0, i64 34, i64 -7405368087501025645, i64 34}
!416 = !{!188, !43, i64 40}
!417 = !{!"branch_weights", i32 0, i32 34}
!418 = !{!"VP", i32 0, i64 34, i64 -5147776714887549805, i64 34}
!419 = !{!188, !51, i64 32}
!420 = !{!"branch_weights", i32 5, i32 29}
!421 = !{!"branch_weights", i32 1, i32 231}
!422 = !{!"branch_weights", i32 360, i32 35}
!423 = !{!188, !50, i64 8}
!424 = !{!"VP", i32 0, i64 35, i64 -2769809254715685994, i64 35}
!425 = !{!"VP", i32 0, i64 35, i64 -7405368087501025645, i64 35}
!426 = distinct !{!426, !58, !59}
!427 = !{!"branch_weights", i32 2929, i32 231}
!428 = distinct !{!428, !58, !59}
!429 = distinct !{!429, !58, !59}
