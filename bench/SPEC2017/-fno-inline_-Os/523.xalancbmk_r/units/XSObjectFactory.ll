; ModuleID = 'XSObjectFactory.cpp'
source_filename = "XSObjectFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSObjectFactory" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XSNamespaceItem" = type { ptr, ptr, ptr, [14 x ptr], ptr, [14 x ptr], ptr }
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSAttributeDeclaration" = type { %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
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
%"class.xercesc_2_7::XSElementDeclaration" = type { %"class.xercesc_2_7::XSObject.base", i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSNamedMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.24" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.7" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::IC_Field" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.8" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IC_KeyRef" = type { %"class.xercesc_2_7::IdentityConstraint.base", ptr }
%"class.xercesc_2_7::IdentityConstraint.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32 }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XercesGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesAttGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.10" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.14" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.30" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.12" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSFacet" = type { %"class.xercesc_2_7::XSObject.base", i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSMultiValueFacet" = type { %"class.xercesc_2_7::XSObject.base", i32, i8, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.16" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.18" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.20" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.22" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.23" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.27" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.26" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.28" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.29" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEED2Ev = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv = comdat any

$_ZNK11xercesc_2_722XSAttributeDeclaration8getScopeEv = comdat any

$_ZN11xercesc_2_722XSAttributeDeclaration24getEnclosingCTDefinitionEv = comdat any

$_ZN11xercesc_2_722XSAttributeDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE = comdat any

$_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef12getPSVIScopeEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj = comdat any

$_ZN11xercesc_2_722XSSimpleTypeDefinition11getItemTypeEv = comdat any

$_ZN11xercesc_2_722XSSimpleTypeDefinition16getPrimitiveTypeEv = comdat any

$_ZN11xercesc_2_722XSSimpleTypeDefinition16setPrimitiveTypeEPS0_ = comdat any

$_ZNK11xercesc_2_720XSElementDeclaration24getEnclosingCTDefinitionEv = comdat any

$_ZN11xercesc_2_720XSElementDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv = comdat any

$_ZN11xercesc_2_77XSModel16getURIStringPoolEv = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEE10addElementEPS1_PKtS5_ = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getPSVIScopeEv = comdat any

$_ZN11xercesc_2_720XSElementDeclaration17setTypeDefinitionEPNS_16XSTypeDefinitionE = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo24getBaseDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv = comdat any

$_ZN11xercesc_2_723XSComplexTypeDefinition11setBaseTypeEPNS_16XSTypeDefinitionE = comdat any

$_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_ = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo9elementAtEj = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv = comdat any

$_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj = comdat any

$_ZNK11xercesc_2_78IC_Field8getXPathEv = comdat any

$_ZN11xercesc_2_711XercesXPath13getExpressionEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt = comdat any

$_ZNK11xercesc_2_79IC_KeyRef6getKeyEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv = comdat any

$_ZN11xercesc_2_715XercesGroupInfo9elementAtEj = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv = comdat any

$_ZNK11xercesc_2_718XercesAttGroupInfo14attributeCountEv = comdat any

$_ZN11xercesc_2_718XercesAttGroupInfo11attributeAtEj = comdat any

$_ZNK11xercesc_2_718XercesAttGroupInfo19getCompleteWildCardEv = comdat any

$_ZN11xercesc_2_77XSModel17getNamespaceItemsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj = comdat any

$_ZN11xercesc_2_713SchemaGrammar13getAnnotationEPKv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getFixedEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_717DatatypeValidator9getFacetsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv = comdat any

$_ZN11xercesc_2_712KVStringPair6getKeyEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getPatternEv = comdat any

$_ZN11xercesc_2_718XMLStringTokenizer11countTokensEv = comdat any

$_ZN11xercesc_2_712KVStringPair8getValueEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv = comdat any

$_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv = comdat any

$_ZN11xercesc_2_722XSSimpleTypeDefinition9getFacetsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XSFacet12getFacetKindEv = comdat any

$_ZNK11xercesc_2_77XSFacet7isFixedEv = comdat any

$_ZN11xercesc_2_722XSSimpleTypeDefinition19getMultiValueFacetsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj = comdat any

$_ZNK11xercesc_2_717XSMultiValueFacet12getFacetKindEv = comdat any

$_ZNK11xercesc_2_717XSMultiValueFacet7isFixedEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_718XMLStringTokenizer11isDelimeterEt = comdat any

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

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_8XSObjectEE7isEmptyEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

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

$_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE = external constant [0 x i16], align 2
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
@_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715XSObjectFactoryC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715XSObjectFactoryC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_715XSObjectFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XSObjectFactoryD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactoryC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !72
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #13
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 20, i1 noundef zeroext true, ptr noundef %1) #13
          to label %5 unwind label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  store ptr %4, ptr %6, align 8, !tbaa !77
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1) #13
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %1) #13
          to label %9 unwind label %14

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %10 unwind label %16

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef 109, i1 noundef zeroext false, ptr noundef nonnull %8, ptr noundef %1) #13
          to label %11 unwind label %14

11:                                               ; preds = %10
  store ptr %7, ptr %3, align 8, !tbaa !78
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %18

14:                                               ; preds = %10, %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %1) #14
  br label %18

18:                                               ; preds = %14, %16, %12
  %19 = phi ptr [ %4, %12 ], [ %7, %16 ], [ %7, %14 ]
  %20 = phi { ptr, i32 } [ %13, %12 ], [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %1) #14
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !79 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 !prof !71 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !82
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !87
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !89
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !90
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  store ptr %3, ptr %12, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactoryD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !80
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  switch i32 %6, label %41 [
    i32 36, label %7
    i32 21, label %7
    i32 9, label %7
  ]

7:                                                ; preds = %5, %5, %5
  %8 = load ptr, ptr %0, align 8, !tbaa !72
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 4, i1 noundef zeroext true, ptr noundef %10) #13
          to label %11 unwind label %18

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !72
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %13) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  switch i32 %6, label %25 [
    i32 9, label %16
    i32 36, label %22
  ]

16:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 3, ptr noundef nonnull %9, ptr noundef %12, ptr noundef nonnull %2, ptr noundef %15) #13
          to label %17 unwind label %20

17:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %2) #13
  br label %31

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #14
  br label %39

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #14
  br label %39

22:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 2, ptr noundef nonnull %9, ptr noundef %12, ptr noundef nonnull %2, ptr noundef %15) #13
          to label %28 unwind label %23

23:                                               ; preds = %22
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #14
  br label %39

25:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 1, ptr noundef nonnull %9, ptr noundef %12, ptr noundef nonnull %2, ptr noundef %15) #13
          to label %28 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #14
  br label %39

28:                                               ; preds = %25, %22
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %29, ptr noundef nonnull %9, ptr noundef nonnull %2) #13
  %30 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %30, ptr noundef nonnull %9, ptr noundef nonnull %2) #13
  br label %31

31:                                               ; preds = %28, %17
  %32 = load ptr, ptr %0, align 8, !tbaa !72
  %33 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %32) #13
  %34 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %35 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %36 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %33, i32 noundef 6, ptr noundef nonnull %2, ptr noundef %14, i32 noundef %34, i32 noundef %35, ptr noundef %36) #13
          to label %41 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %33, ptr noundef %32) #14
  br label %39

39:                                               ; preds = %20, %23, %26, %37, %18
  %40 = phi { ptr, i32 } [ %19, %18 ], [ %38, %37 ], [ %21, %20 ], [ %24, %23 ], [ %27, %26 ]
  resume { ptr, i32 } %40

41:                                               ; preds = %31, %5, %3
  %42 = phi ptr [ null, %3 ], [ %33, %31 ], [ null, %5 ]
  ret ptr %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !93
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !71 {
  br label %4

4:                                                ; preds = %22, %3
  %5 = phi ptr [ %1, %3 ], [ %24, %22 ]
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getNamespaceItemsEv(ptr noundef nonnull align 8 dereferenceable(298) %5) #13
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4, %18
  %10 = phi i32 [ %19, %18 ], [ 0, %4 ]
  %11 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %10) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSNamespaceItem", ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call noundef ptr @_ZN11xercesc_2_713SchemaGrammar13getAnnotationEPKv(ptr noundef nonnull align 8 dereferenceable(160) %13, ptr noundef %2) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %9, %15
  %19 = add nuw i32 %10, 1
  %20 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %9, label %22, !llvm.loop !99

22:                                               ; preds = %18, %4
  %23 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %5, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %4

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %16, %15 ], [ null, %22 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !71 {
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi ptr [ %1, %4 ], [ %9, %8 ]
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  switch i32 %7, label %16 [
    i32 9, label %8
    i32 0, label %12
  ]

8:                                                ; preds = %5
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  tail call void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %10, ptr noundef %2, ptr noundef %3) #13
  %11 = icmp eq ptr %9, null
  br i1 %11, label %16, label %5

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, ptr noundef %3) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %13) #13
  br label %16

16:                                               ; preds = %5, %8, %12, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !71 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %4, %11
  %7 = phi ptr [ %13, %11 ], [ %1, %4 ]
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #13
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #13
  tail call void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, ptr noundef %2, ptr noundef %3) #13
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %6

15:                                               ; preds = %6
  %16 = and i32 %8, 14
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = and i32 %8, 15
  %20 = icmp eq i32 %19, 8
  %21 = icmp eq i32 %8, 20
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %18
  %24 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22createWildcardParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %7, ptr noundef %3) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %34

26:                                               ; preds = %18
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %7, ptr noundef %3) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %34

31:                                               ; preds = %26
  %32 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %7, ptr noundef %3) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %28, %23
  %35 = phi ptr [ %24, %23 ], [ %29, %28 ], [ %32, %31 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %35) #13
  br label %36

36:                                               ; preds = %11, %34, %4, %23, %28, %31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !107
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !109
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %8 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, ptr noundef %2, ptr noundef null) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !72
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %11) #13
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %13, i32 noundef %14, ptr noundef %15) #13
          to label %18 unwind label %16

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #14
  resume { ptr, i32 } %17

18:                                               ; preds = %6, %3, %10
  %19 = phi ptr [ %12, %10 ], [ null, %3 ], [ null, %6 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory22createWildcardParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !72
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7) #13
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %10 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %8, i32 noundef 9, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %9, i32 noundef %10, ptr noundef %11) #13
          to label %14 unwind label %12

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3, %6
  %15 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNK11xercesc_2_720XSElementDeclaration24getEnclosingCTDefinitionEv(ptr noundef nonnull align 8 dereferenceable(96) %5) #13
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %3, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %86

12:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_720XSElementDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %3) #13
  br label %86

13:                                               ; preds = %4
  %14 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %18 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %17, ptr noundef nonnull %2, ptr noundef null) #13
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %28 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %27, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  br label %29

29:                                               ; preds = %26, %23, %19
  %30 = phi ptr [ null, %19 ], [ %28, %26 ], [ null, %23 ]
  %31 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8, !tbaa !72
  %35 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %34) #13
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %2) #13
  %37 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef %31, i32 noundef 29, ptr noundef %36, i1 noundef zeroext false, ptr noundef %37) #13
          to label %40 unwind label %38

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %34) #14
  br label %84

40:                                               ; preds = %33, %54
  %41 = phi i32 [ %55, %54 ], [ 0, %33 ]
  %42 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %1, i32 noundef %41) #13
  %43 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %42, ptr noundef nonnull %2) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %43, align 8, !tbaa !80
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %50 = load ptr, ptr %43, align 8, !tbaa !80
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull %43, ptr noundef %49, ptr noundef %53) #13
  br label %54

54:                                               ; preds = %45, %40
  %55 = add nuw i32 %41, 1
  %56 = icmp eq i32 %55, %31
  br i1 %56, label %57, label %40, !llvm.loop !115

57:                                               ; preds = %54, %29
  %58 = phi ptr [ null, %29 ], [ %35, %54 ]
  %59 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ 2, %57 ], [ %64, %61 ]
  %67 = load ptr, ptr %0, align 8, !tbaa !72
  %68 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %67) #13
  %69 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %70 unwind label %78

70:                                               ; preds = %65
  %71 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %68, ptr noundef nonnull %1, ptr noundef %30, ptr noundef %20, ptr noundef %69, ptr noundef %58, ptr noundef nonnull %2, i32 noundef %66, ptr noundef %3, ptr noundef %71) #13
          to label %72 unwind label %78

72:                                               ; preds = %70
  tail call void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %68) #13
  %73 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %77 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %76, ptr noundef nonnull %2) #13
  tail call void @_ZN11xercesc_2_720XSElementDeclaration17setTypeDefinitionEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %68, ptr noundef %77) #13
  br label %86

78:                                               ; preds = %70, %65
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %68, ptr noundef %67) #14
  br label %84

80:                                               ; preds = %72
  %81 = icmp eq ptr %30, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  tail call void @_ZN11xercesc_2_720XSElementDeclaration17setTypeDefinitionEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %68, ptr noundef %83) #13
  br label %86

84:                                               ; preds = %78, %38
  %85 = phi { ptr, i32 } [ %79, %78 ], [ %39, %38 ]
  resume { ptr, i32 } %85

86:                                               ; preds = %75, %82, %80, %7, %12
  %87 = phi ptr [ %5, %12 ], [ %5, %7 ], [ %68, %80 ], [ %68, %82 ], [ %68, %75 ]
  ret ptr %87
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #13
  %6 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %1) #13
          to label %7 unwind label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %2, ptr noundef %8) #13
          to label %9 unwind label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %5) #13
  ret ptr %5

12:                                               ; preds = %7, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #14
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call noundef i32 @_ZNK11xercesc_2_722XSAttributeDeclaration8getScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #13
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %42

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration24getEnclosingCTDefinitionEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #13
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %3, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_722XSAttributeDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %3) #13
  br label %42

16:                                               ; preds = %4
  %17 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %21 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %20, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  %24 = tail call noundef i32 @_ZNK11xercesc_2_712SchemaAttDef12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = tail call noundef i32 @_ZNK11xercesc_2_712SchemaAttDef12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 2, i32 0
  %30 = select i1 %28, ptr %3, ptr null
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ 1, %22 ], [ %29, %26 ]
  %33 = phi ptr [ null, %22 ], [ %30, %26 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !72
  %35 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %34) #13
  %36 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %37 unwind label %40

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull %1, ptr noundef %23, ptr noundef %36, ptr noundef nonnull %2, i32 noundef %32, ptr noundef %33, ptr noundef %38) #13
          to label %39 unwind label %40

39:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %35) #13
  br label %42

40:                                               ; preds = %37, %31
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %34) #14
  resume { ptr, i32 } %41

42:                                               ; preds = %7, %10, %15, %39
  %43 = phi ptr [ %5, %15 ], [ %5, %10 ], [ %5, %7 ], [ %35, %39 ]
  ret ptr %43
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_722XSAttributeDeclaration8getScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !116
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration24getEnclosingCTDefinitionEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722XSAttributeDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %70

7:                                                ; preds = %4
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %9 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  switch i32 %8, label %42 [
    i32 25, label %10
    i32 24, label %33
  ]

10:                                               ; preds = %7
  %11 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv(ptr noundef nonnull align 8 dereferenceable(136) %1) #13
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %15) #13
  %17 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %12, i1 noundef zeroext false, ptr noundef %17) #13
          to label %20 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #14
  br label %68

20:                                               ; preds = %14, %20
  %21 = phi i32 [ %24, %20 ], [ 0, %14 ]
  %22 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %21) #13
  %23 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %22, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef %23) #13
  %24 = add nuw i32 %21, 1
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %26, label %20, !llvm.loop !132

26:                                               ; preds = %20, %10
  %27 = phi ptr [ null, %10 ], [ %16, %20 ]
  %28 = icmp eq ptr %9, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %9, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  br label %52

31:                                               ; preds = %26
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  br label %52

33:                                               ; preds = %7
  %34 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %9) #13
  %35 = icmp eq i32 %34, 24
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %9, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  %38 = tail call noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition11getItemTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %37) #13
  br label %52

39:                                               ; preds = %33
  %40 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  %41 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %9, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  br label %52

42:                                               ; preds = %7
  br i1 %3, label %50, label %43

43:                                               ; preds = %42
  %44 = icmp eq ptr %9, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %9, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  %47 = tail call noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition16getPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %46) #13
  br label %52

48:                                               ; preds = %43
  %49 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  br label %52

50:                                               ; preds = %42
  %51 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  br label %52

52:                                               ; preds = %29, %31, %39, %36, %45, %48, %50
  %53 = phi i32 [ 2, %36 ], [ 2, %39 ], [ 1, %50 ], [ 1, %45 ], [ 1, %48 ], [ 3, %31 ], [ 3, %29 ]
  %54 = phi i1 [ false, %36 ], [ false, %39 ], [ false, %50 ], [ false, %45 ], [ true, %48 ], [ false, %31 ], [ false, %29 ]
  %55 = phi ptr [ %38, %36 ], [ %41, %39 ], [ null, %50 ], [ %47, %45 ], [ null, %48 ], [ null, %31 ], [ null, %29 ]
  %56 = phi ptr [ null, %36 ], [ null, %39 ], [ null, %50 ], [ null, %45 ], [ null, %48 ], [ %27, %31 ], [ %27, %29 ]
  %57 = phi ptr [ %37, %36 ], [ %40, %39 ], [ %51, %50 ], [ %46, %45 ], [ %49, %48 ], [ %32, %31 ], [ %30, %29 ]
  %58 = load ptr, ptr %0, align 8, !tbaa !72
  %59 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %58) #13
  %60 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %61 unwind label %65

61:                                               ; preds = %52
  %62 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_722XSSimpleTypeDefinitionC1EPNS_17DatatypeValidatorENS0_7VARIETYEPNS_16XSTypeDefinitionEPS0_PNS_11RefVectorOfIS0_EEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %59, ptr noundef nonnull %1, i32 noundef %53, ptr noundef %57, ptr noundef %55, ptr noundef %56, ptr noundef %60, ptr noundef nonnull %2, ptr noundef %62) #13
          to label %63 unwind label %65

63:                                               ; preds = %61
  tail call void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %59) #13
  br i1 %54, label %64, label %67

64:                                               ; preds = %63
  tail call void @_ZN11xercesc_2_722XSSimpleTypeDefinition16setPrimitiveTypeEPS0_(ptr noundef nonnull align 8 dereferenceable(128) %59, ptr noundef nonnull %59) #13
  br label %67

65:                                               ; preds = %61, %52
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %59, ptr noundef %58) #14
  br label %68

67:                                               ; preds = %64, %63
  tail call void @_ZN11xercesc_2_715XSObjectFactory13processFacetsEPNS_17DatatypeValidatorEPNS_7XSModelEPNS_22XSSimpleTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %59) #13
  br label %70

68:                                               ; preds = %65, %18
  %69 = phi { ptr, i32 } [ %66, %65 ], [ %19, %18 ]
  resume { ptr, i32 } %69

70:                                               ; preds = %67, %4
  %71 = phi ptr [ %5, %4 ], [ %59, %67 ]
  ret ptr %71
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SchemaAttDef12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !133
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !135
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !140 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !144
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !148
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition11getItemTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !151
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr %6, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition16getPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !151
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr %6, ptr null
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSSimpleTypeDefinitionC1EPNS_17DatatypeValidatorENS0_7VARIETYEPNS_16XSTypeDefinitionEPS0_PNS_11RefVectorOfIS0_EEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722XSSimpleTypeDefinition16setPrimitiveTypeEPS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory13processFacetsEPNS_17DatatypeValidatorEPNS_7XSModelEPNS_22XSSimpleTypeDefinitionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  %7 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !72
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %9) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 4, i1 noundef zeroext false, ptr noundef %11) #13
          to label %12 unwind label %18

12:                                               ; preds = %4
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_715XSObjectFactory24isMultiValueFacetDefinedEPNS_17DatatypeValidatorE(ptr nonnull align 8 poison, ptr noundef nonnull %1) #13
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %15) #13
  %17 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 2, i1 noundef zeroext false, ptr noundef %17) #13
          to label %22 unwind label %20

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #14
  br label %296

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #14
  br label %296

22:                                               ; preds = %14, %12
  %23 = phi ptr [ null, %12 ], [ %16, %14 ]
  %24 = and i32 %7, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8, !tbaa !80
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %31 = and i32 %8, 16
  %32 = shl nuw nsw i32 %31, 7
  %33 = lshr exact i32 %31, 4
  %34 = trunc i32 %33 to i8
  %35 = load ptr, ptr %0, align 8, !tbaa !72
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %35) #13
  %37 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %30) #13
          to label %38 unwind label %44

38:                                               ; preds = %26
  %39 = icmp ne i32 %31, 0
  %40 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %36, i32 noundef 2048, ptr noundef %30, i1 noundef zeroext %39, ptr noundef %37, ptr noundef nonnull %2, ptr noundef %40) #13
          to label %41 unwind label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef nonnull %36) #13
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull %36) #13
  br label %46

44:                                               ; preds = %38, %26
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #14
  br label %296

46:                                               ; preds = %41, %22
  %47 = phi i32 [ %32, %41 ], [ 0, %22 ]
  %48 = phi i32 [ 2048, %41 ], [ 0, %22 ]
  %49 = phi i8 [ %34, %41 ], [ 0, %22 ]
  %50 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %201, label %52

52:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #11
  %53 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %54 = load ptr, ptr %0, align 8, !tbaa !72
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %53, i1 noundef zeroext false, ptr noundef %54) #13
  %55 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  br i1 %55, label %56, label %197

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %58 = trunc i32 %8 to i8
  %59 = and i8 %58, 1
  %60 = lshr i32 %8, 8
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = and i32 %8, 128
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i8
  %66 = lshr i8 %58, 6
  %67 = and i8 %66, 1
  %68 = lshr i8 %58, 5
  %69 = and i8 %68, 1
  br label %70

70:                                               ; preds = %56, %189
  %71 = phi i8 [ %49, %56 ], [ %193, %189 ]
  %72 = phi i32 [ %48, %56 ], [ %192, %189 ]
  %73 = phi i32 [ %47, %56 ], [ %191, %189 ]
  %74 = phi ptr [ null, %56 ], [ %190, %189 ]
  %75 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
          to label %76 unwind label %81

76:                                               ; preds = %70
  %77 = call noundef ptr @_ZN11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %75) #13
  %78 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %75) #13
          to label %79 unwind label %83

79:                                               ; preds = %76
  %80 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXINCLUSIVEE) #13
  br i1 %80, label %169, label %85

81:                                               ; preds = %70
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %195

83:                                               ; preds = %76
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %195

85:                                               ; preds = %79
  %86 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MAXEXCLUSIVEE) #13
  br i1 %86, label %169, label %87

87:                                               ; preds = %85
  %88 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MININCLUSIVEE) #13
  br i1 %88, label %169, label %89

89:                                               ; preds = %87
  %90 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgELT_MINEXCLUSIVEE) #13
  br i1 %90, label %169, label %91

91:                                               ; preds = %89
  %92 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgELT_LENGTHE) #13
  br i1 %92, label %169, label %93

93:                                               ; preds = %91
  %94 = lshr i8 %58, 1
  %95 = and i8 %94, 1
  %96 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgELT_MINLENGTHE) #13
  br i1 %96, label %169, label %97

97:                                               ; preds = %93
  %98 = lshr i8 %58, 2
  %99 = and i8 %98, 1
  %100 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgELT_MAXLENGTHE) #13
  br i1 %100, label %169, label %101

101:                                              ; preds = %97
  %102 = lshr i32 %8, 9
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE) #13
  br i1 %105, label %169, label %106

106:                                              ; preds = %101
  %107 = lshr i32 %8, 10
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE) #13
  br i1 %110, label %169, label %111

111:                                              ; preds = %106
  %112 = lshr i32 %8, 14
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE) #13
  br i1 %115, label %169, label %116

116:                                              ; preds = %111
  %117 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE) #13
  br i1 %117, label %118, label %189, !llvm.loop !157

118:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  %119 = call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %120 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %119, ptr noundef nonnull @_ZN11xercesc_2_7L14regexSeparatorE, ptr noundef %120) #13
          to label %121 unwind label %137

121:                                              ; preds = %118
  %122 = load ptr, ptr %0, align 8, !tbaa !72
  %123 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %122) #13
          to label %124 unwind label %141

124:                                              ; preds = %121
  %125 = invoke noundef i32 @_ZN11xercesc_2_718XMLStringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
          to label %126 unwind label %143

126:                                              ; preds = %124
  %127 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %123, i32 noundef %125, i1 noundef zeroext true, ptr noundef %127) #13
          to label %128 unwind label %143

128:                                              ; preds = %126, %136
  %129 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
          to label %130 unwind label %139

130:                                              ; preds = %128
  br i1 %129, label %131, label %145

131:                                              ; preds = %130
  %132 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
          to label %133 unwind label %139

133:                                              ; preds = %131
  %134 = load ptr, ptr %0, align 8, !tbaa !72
  %135 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %132, ptr noundef %134) #13
          to label %136 unwind label %139

136:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %123, ptr noundef %135) #13
          to label %128 unwind label %139, !llvm.loop !158

137:                                              ; preds = %118
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %167

139:                                              ; preds = %128, %131, %133, %136
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %165

141:                                              ; preds = %121
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %165

143:                                              ; preds = %126, %124
  %144 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %123, ptr noundef %122) #14
  br label %165

145:                                              ; preds = %130
  %146 = and i32 %8, 8
  %147 = icmp eq i32 %146, 0
  %148 = or i32 %73, %146
  %149 = select i1 %147, i8 %71, i8 1
  %150 = load ptr, ptr %0, align 8, !tbaa !72
  %151 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %150) #13
          to label %152 unwind label %161

152:                                              ; preds = %145
  %153 = and i8 %149, 1
  %154 = icmp ne i8 %153, 0
  %155 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %151, i32 noundef 8, ptr noundef nonnull %123, i1 noundef zeroext %154, ptr noundef %78, ptr noundef nonnull %2, ptr noundef %155) #13
          to label %156 unwind label %163

156:                                              ; preds = %152
  %157 = load ptr, ptr %57, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %157, ptr noundef nonnull %151) #13
          to label %158 unwind label %161

158:                                              ; preds = %156
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull %151) #13
          to label %159 unwind label %161

159:                                              ; preds = %158
  %160 = or i32 %72, 8
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  br label %189

161:                                              ; preds = %158, %156, %145
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %165

163:                                              ; preds = %152
  %164 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %151, ptr noundef %150) #14
  br label %165

165:                                              ; preds = %139, %141, %161, %163, %143
  %166 = phi { ptr, i32 } [ %144, %143 ], [ %162, %161 ], [ %164, %163 ], [ %140, %139 ], [ %142, %141 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  br label %167

167:                                              ; preds = %165, %137
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  br label %195

169:                                              ; preds = %111, %106, %101, %97, %93, %91, %89, %87, %85, %79
  %170 = phi i32 [ 32, %79 ], [ 64, %85 ], [ 256, %87 ], [ 128, %89 ], [ 1, %91 ], [ 2, %93 ], [ 4, %97 ], [ 512, %101 ], [ 1024, %106 ], [ 16, %111 ]
  %171 = phi i8 [ %69, %79 ], [ %67, %85 ], [ %65, %87 ], [ %62, %89 ], [ %59, %91 ], [ %95, %93 ], [ %99, %97 ], [ %104, %101 ], [ %109, %106 ], [ %114, %111 ]
  %172 = load ptr, ptr %0, align 8, !tbaa !72
  %173 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %172) #13
          to label %174 unwind label %185

174:                                              ; preds = %169
  %175 = call noundef ptr @_ZN11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %75) #13
  %176 = icmp ne i8 %171, 0
  %177 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %173, i32 noundef %170, ptr noundef %175, i1 noundef zeroext %176, ptr noundef %78, ptr noundef nonnull %2, ptr noundef %177) #13
          to label %178 unwind label %187

178:                                              ; preds = %174
  %179 = load ptr, ptr %57, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %179, ptr noundef nonnull %173) #13
          to label %180 unwind label %185

180:                                              ; preds = %178
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %173) #13
          to label %181 unwind label %185

181:                                              ; preds = %180
  %182 = or i32 %170, %72
  %183 = select i1 %176, i32 %170, i32 0
  %184 = or i32 %183, %73
  br label %189

185:                                              ; preds = %180, %178, %169
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %195

187:                                              ; preds = %174
  %188 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %173, ptr noundef %172) #14
  br label %195

189:                                              ; preds = %116, %181, %159
  %190 = phi ptr [ %74, %181 ], [ %123, %159 ], [ %74, %116 ]
  %191 = phi i32 [ %184, %181 ], [ %148, %159 ], [ %73, %116 ]
  %192 = phi i32 [ %182, %181 ], [ %160, %159 ], [ %72, %116 ]
  %193 = phi i8 [ %171, %181 ], [ %149, %159 ], [ %71, %116 ]
  %194 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  br i1 %194, label %70, label %197

195:                                              ; preds = %83, %167, %187, %185, %81
  %196 = phi { ptr, i32 } [ %82, %81 ], [ %168, %167 ], [ %84, %83 ], [ %186, %185 ], [ %188, %187 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #11
  br label %296

197:                                              ; preds = %189, %52
  %198 = phi ptr [ null, %52 ], [ %190, %189 ]
  %199 = phi i32 [ %47, %52 ], [ %191, %189 ]
  %200 = phi i32 [ %48, %52 ], [ %192, %189 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #11
  br label %201

201:                                              ; preds = %197, %46
  %202 = phi ptr [ %198, %197 ], [ null, %46 ]
  %203 = phi i32 [ %199, %197 ], [ %47, %46 ]
  %204 = phi i32 [ %200, %197 ], [ %48, %46 ]
  %205 = and i32 %204, 16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %201
  %208 = load ptr, ptr %0, align 8, !tbaa !72
  %209 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %208) #13
  %210 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %211 = invoke noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef signext %210) #13
          to label %212 unwind label %218

212:                                              ; preds = %207
  %213 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %209, i32 noundef 16, ptr noundef %211, i1 noundef zeroext false, ptr noundef null, ptr noundef %2, ptr noundef %213) #13
          to label %214 unwind label %218

214:                                              ; preds = %212
  %215 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !77
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %216, ptr noundef nonnull %209) #13
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %209) #13
  %217 = or disjoint i32 %204, 16
  br label %220

218:                                              ; preds = %212, %207
  %219 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %209, ptr noundef %208) #14
  br label %296

220:                                              ; preds = %214, %201
  %221 = phi i32 [ %217, %214 ], [ %204, %201 ]
  %222 = load ptr, ptr %3, align 8, !tbaa !80
  %223 = getelementptr inbounds ptr, ptr %222, i64 6
  %224 = load ptr, ptr %223, align 8
  %225 = call noundef ptr %224(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  %226 = icmp eq ptr %225, null
  br i1 %226, label %293, label %227

227:                                              ; preds = %220
  %228 = load ptr, ptr %3, align 8, !tbaa !80
  %229 = getelementptr inbounds ptr, ptr %228, i64 6
  %230 = load ptr, ptr %229, align 8
  %231 = call noundef ptr %230(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  %232 = call noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %231) #13
  %233 = icmp eq i32 %232, 16
  br i1 %233, label %234, label %293

234:                                              ; preds = %227
  %235 = load ptr, ptr %3, align 8, !tbaa !80
  %236 = getelementptr inbounds ptr, ptr %235, i64 6
  %237 = load ptr, ptr %236, align 8
  %238 = call noundef ptr %237(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  %239 = call noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %238) #13
  %240 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %239) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %262, %234
  %243 = phi i32 [ %203, %234 ], [ %263, %262 ]
  %244 = phi i32 [ %221, %234 ], [ %264, %262 ]
  %245 = call noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition19getMultiValueFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %238) #13
  %246 = icmp eq ptr %245, null
  br i1 %246, label %293, label %268

247:                                              ; preds = %234, %262
  %248 = phi i32 [ %264, %262 ], [ %221, %234 ]
  %249 = phi i32 [ %263, %262 ], [ %203, %234 ]
  %250 = phi i32 [ %265, %262 ], [ 0, %234 ]
  %251 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %239, i32 noundef %250) #13
  %252 = call noundef i32 @_ZNK11xercesc_2_77XSFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %251) #13
  %253 = and i32 %252, %248
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %247
  %256 = call noundef i32 @_ZNK11xercesc_2_77XSFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %251) #13
  %257 = or i32 %256, %248
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %251) #13
  %258 = call noundef zeroext i1 @_ZNK11xercesc_2_77XSFacet7isFixedEv(ptr noundef nonnull align 8 dereferenceable(64) %251) #13
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = call noundef i32 @_ZNK11xercesc_2_77XSFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %251) #13
  %261 = or i32 %260, %249
  br label %262

262:                                              ; preds = %255, %259, %247
  %263 = phi i32 [ %261, %259 ], [ %249, %255 ], [ %249, %247 ]
  %264 = phi i32 [ %257, %259 ], [ %257, %255 ], [ %248, %247 ]
  %265 = add nuw i32 %250, 1
  %266 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %239) #13
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %247, label %242, !llvm.loop !159

268:                                              ; preds = %242
  %269 = call noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition19getMultiValueFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %238) #13
  %270 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %269) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %293, label %272

272:                                              ; preds = %268, %287
  %273 = phi i32 [ %290, %287 ], [ 0, %268 ]
  %274 = phi i32 [ %289, %287 ], [ %244, %268 ]
  %275 = phi i32 [ %288, %287 ], [ %243, %268 ]
  %276 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %269, i32 noundef %273) #13
  %277 = call noundef i32 @_ZNK11xercesc_2_717XSMultiValueFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %276) #13
  %278 = and i32 %277, %274
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %272
  %281 = call noundef i32 @_ZNK11xercesc_2_717XSMultiValueFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %276) #13
  %282 = or i32 %281, %274
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull %276) #13
  %283 = call noundef zeroext i1 @_ZNK11xercesc_2_717XSMultiValueFacet7isFixedEv(ptr noundef nonnull align 8 dereferenceable(64) %276) #13
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = call noundef i32 @_ZNK11xercesc_2_717XSMultiValueFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %276) #13
  %286 = or i32 %285, %275
  br label %287

287:                                              ; preds = %280, %284, %272
  %288 = phi i32 [ %286, %284 ], [ %275, %280 ], [ %275, %272 ]
  %289 = phi i32 [ %282, %284 ], [ %282, %280 ], [ %274, %272 ]
  %290 = add nuw i32 %273, 1
  %291 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %269) #13
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %272, label %293, !llvm.loop !160

293:                                              ; preds = %287, %268, %242, %227, %220
  %294 = phi i32 [ %203, %227 ], [ %203, %220 ], [ %243, %242 ], [ %243, %268 ], [ %288, %287 ]
  %295 = phi i32 [ %221, %227 ], [ %221, %220 ], [ %244, %242 ], [ %244, %268 ], [ %289, %287 ]
  call void @_ZN11xercesc_2_722XSSimpleTypeDefinition12setFacetInfoEiiPNS_11RefVectorOfINS_7XSFacetEEEPNS1_INS_17XSMultiValueFacetEEEPNS_16RefArrayVectorOfItEE(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %295, i32 noundef %294, ptr noundef nonnull %10, ptr noundef %23, ptr noundef %202) #13
  ret void

296:                                              ; preds = %218, %195, %44, %20, %18
  %297 = phi { ptr, i32 } [ %196, %195 ], [ %219, %218 ], [ %45, %44 ], [ %21, %20 ], [ %19, %18 ]
  resume { ptr, i32 } %297
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720XSElementDeclaration24getEnclosingCTDefinitionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XSElementDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !168 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #4 comdat align 2 !prof !172 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !174

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !175
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %5, ptr %0, align 8, !tbaa !176
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !178
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1, i1 noundef zeroext false, ptr noundef %5) #13
          to label %9 unwind label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  store ptr %8, ptr %10, align 8, !tbaa !179
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %2, i1 noundef zeroext %4, ptr noundef %5) #13
          to label %12 unwind label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !180
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
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %5) #14
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %7, i1 noundef zeroext true, ptr noundef %12) #13
          to label %15 unwind label %13

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #14
  br label %44

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %22, %15 ], [ 0, %9 ]
  %17 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %16) #13
  %18 = tail call noundef ptr @_ZNK11xercesc_2_78IC_Field8getXPathEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #13
  %19 = tail call noundef ptr @_ZN11xercesc_2_711XercesXPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  %20 = load ptr, ptr %0, align 8, !tbaa !72
  %21 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %20) #13
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %21) #13
  %22 = add nuw i32 %16, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %24, label %15, !llvm.loop !181

24:                                               ; preds = %15, %6
  %25 = phi ptr [ null, %6 ], [ %11, %15 ]
  %26 = load ptr, ptr %1, align 8, !tbaa !80
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef signext i16 %28(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = tail call noundef ptr @_ZNK11xercesc_2_79IC_KeyRef6getKeyEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %33 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %32, ptr noundef nonnull %2) #13
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi ptr [ %33, %31 ], [ null, %24 ]
  %36 = load ptr, ptr %0, align 8, !tbaa !72
  %37 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %36) #13
  %38 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %39 unwind label %42

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_715XSIDCDefinitionC1EPNS_18IdentityConstraintEPS0_PNS_12XSAnnotationEPNS_16RefArrayVectorOfItEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull %1, ptr noundef %35, ptr noundef %38, ptr noundef %25, ptr noundef nonnull %2, ptr noundef %40) #13
          to label %41 unwind label %42

41:                                               ; preds = %39
  tail call void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %37) #13
  br label %46

42:                                               ; preds = %39, %34
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %37, ptr noundef %36) #14
  br label %44

44:                                               ; preds = %42, %13
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %14, %13 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %41, %3
  %47 = phi ptr [ %4, %3 ], [ %37, %41 ]
  ret ptr %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !182 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !183

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %1) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %3) #13
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2, i32 noundef %14, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !184
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %121

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %11 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %10, ptr noundef nonnull %2) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ null, %6 ]
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %21 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %20, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  br label %22

22:                                               ; preds = %19, %16, %12
  %23 = phi ptr [ %21, %19 ], [ null, %16 ], [ null, %12 ]
  %24 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(48) %26) #13
  %31 = load ptr, ptr %0, align 8, !tbaa !72
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %31) #13
  %33 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef %30, i1 noundef zeroext false, ptr noundef %33) #13
          to label %36 unwind label %34

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %32, ptr noundef %31) #14
  br label %119

36:                                               ; preds = %25, %22
  %37 = phi i32 [ 0, %22 ], [ %30, %25 ]
  %38 = phi ptr [ null, %22 ], [ %32, %25 ]
  %39 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %46 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %45, ptr noundef nonnull %2) #13
  br label %55

47:                                               ; preds = %41
  %48 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getBaseDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getBaseDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %52 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %51, ptr noundef nonnull %2, i1 noundef zeroext false) #13
  br label %55

53:                                               ; preds = %47
  %54 = tail call noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #13
  br label %55

55:                                               ; preds = %36, %44, %53, %50
  %56 = phi ptr [ %46, %44 ], [ %52, %50 ], [ %54, %53 ], [ null, %36 ]
  %57 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %57, ptr noundef nonnull %2) #13
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ null, %55 ]
  %63 = load ptr, ptr %0, align 8, !tbaa !72
  %64 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 112, ptr noundef %63) #13
  %65 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %66 unwind label %70

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_723XSComplexTypeDefinitionC1EPNS_15ComplexTypeInfoEPNS_10XSWildcardEPNS_22XSSimpleTypeDefinitionEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_16XSTypeDefinitionEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(106) %64, ptr noundef nonnull %1, ptr noundef %13, ptr noundef %23, ptr noundef %38, ptr noundef %56, ptr noundef %62, ptr noundef %65, ptr noundef nonnull %2, ptr noundef %67) #13
          to label %68 unwind label %70

68:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %64) #13
  br i1 %40, label %69, label %72

69:                                               ; preds = %68
  tail call void @_ZN11xercesc_2_723XSComplexTypeDefinition11setBaseTypeEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(106) %64, ptr noundef nonnull %64) #13
  br label %72

70:                                               ; preds = %66, %61
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %64, ptr noundef %63) #14
  br label %119

72:                                               ; preds = %69, %68
  %73 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  br i1 %73, label %74, label %102

74:                                               ; preds = %72
  %75 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %76 = icmp eq i32 %37, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  br label %79

79:                                               ; preds = %77, %99
  %80 = phi i32 [ 0, %77 ], [ %100, %99 ]
  %81 = load ptr, ptr %75, align 8, !tbaa !80
  %82 = getelementptr inbounds ptr, ptr %81, i64 14
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef nonnull align 8 dereferenceable(56) ptr %83(ptr noundef nonnull align 8 dereferenceable(48) %75, i32 noundef %80) #13
  %85 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %84) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %84) #13
  %89 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %88, ptr noundef nonnull %2, ptr noundef null) #13
  %90 = load ptr, ptr %78, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef nonnull %84, ptr noundef %89) #13
  br label %93

91:                                               ; preds = %79
  %92 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %84, ptr noundef nonnull %2, ptr noundef nonnull %64) #13
  br label %93

93:                                               ; preds = %91, %87
  %94 = phi ptr [ %89, %87 ], [ %92, %91 ]
  %95 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %84) #13
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %94, ptr noundef nonnull %2) #13
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %98) #13
  tail call void @_ZN11xercesc_2_715XSObjectFactory13processAttUseEPNS_12SchemaAttDefEPNS_14XSAttributeUseE(ptr nonnull align 8 poison, ptr noundef nonnull %84, ptr noundef %98) #13
  br label %99

99:                                               ; preds = %97, %93
  %100 = add nuw i32 %80, 1
  %101 = icmp eq i32 %100, %37
  br i1 %101, label %102, label %79, !llvm.loop !185

102:                                              ; preds = %99, %74, %72
  %103 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102, %116
  %106 = phi i32 [ %117, %116 ], [ 0, %102 ]
  %107 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef %106) #13
  %108 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %107) #13
  %109 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %107) #13
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %107, ptr noundef nonnull %2, ptr noundef nonnull %64) #13
  br label %116

116:                                              ; preds = %114, %111, %105
  %117 = add nuw i32 %106, 1
  %118 = icmp eq i32 %117, %103
  br i1 %118, label %121, label %105, !llvm.loop !186

119:                                              ; preds = %70, %34
  %120 = phi { ptr, i32 } [ %71, %70 ], [ %35, %34 ]
  resume { ptr, i32 } %120

121:                                              ; preds = %116, %102, %3
  %122 = phi ptr [ %4, %3 ], [ %64, %102 ], [ %64, %116 ]
  ret ptr %122
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XSElementDeclaration17setTypeDefinitionEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #13
  %8 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %7) #13
  br label %11

9:                                                ; preds = %3
  %10 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !72
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %13) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %1, ptr noundef %12, ptr noundef %2, ptr noundef %15) #13
          to label %16 unwind label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull %14) #13
  ret ptr %14

19:                                               ; preds = %11
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #14
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !191 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !192
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !193 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !195 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !197 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getBaseDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !200 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723XSComplexTypeDefinitionC1EPNS_15ComplexTypeInfoEPNS_10XSWildcardEPNS_22XSSimpleTypeDefinitionEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_16XSTypeDefinitionEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(106), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSComplexTypeDefinition11setBaseTypeEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(106) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !90
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !86, !range !204, !noundef !205
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !206
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(36) %21) #14
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !206
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !208
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !82
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = load i32, ptr %4, align 4, !tbaa !209
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #13
  %41 = load ptr, ptr %35, align 8, !tbaa !87
  %42 = load i32, ptr %4, align 4, !tbaa !209
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !113
  %45 = load i32, ptr %9, align 8, !tbaa !90
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !90
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !211
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_714XSAttributeUseC1EPNS_22XSAttributeDeclarationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef %2, ptr noundef %6) #13
          to label %7 unwind label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %5) #13
  ret ptr %5

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #14
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !214
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !214
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory13processAttUseEPNS_12SchemaAttDefEPNS_14XSAttributeUseE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !71 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %3, %9, %12
  %14 = phi i32 [ 2, %12 ], [ 0, %9 ], [ 1, %3 ]
  %15 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i1 [ true, %20 ], [ false, %17 ]
  %23 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  tail call void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64) %2, i1 noundef zeroext %22, i32 noundef %14, ptr noundef %23) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !215
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !216
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !218
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #4 comdat align 2 !prof !219 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !222

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !223 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !224 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !225

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !226 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !227

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_78IC_Field8getXPathEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_711XercesXPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !232 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !235
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !235
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79IC_KeyRef6getKeyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !236 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XSIDCDefinitionC1EPNS_18IdentityConstraintEPS0_PNS_12XSAnnotationEPNS_16RefArrayVectorOfItEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15XMLNotationDeclEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !72
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7) #13
  %9 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef %1) #13
          to label %10 unwind label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_721XSNotationDeclarationC1EPNS_15XMLNotationDeclEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %1, ptr noundef %9, ptr noundef nonnull %2, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %8) #13
  br label %15

13:                                               ; preds = %10, %6
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #14
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %4, %3 ], [ %8, %12 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721XSNotationDeclarationC1EPNS_15XMLNotationDeclEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XSAttributeUseC1EPNS_22XSAttributeDeclarationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !239
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !241
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !241
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory28createXSModelGroupDefinitionEPNS_15XercesGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4, ptr noundef %2) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !72
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %6) #13
  %8 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
          to label %9 unwind label %17

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %1, ptr noundef %5, ptr noundef %8, ptr noundef nonnull %2, ptr noundef %10) #13
          to label %11 unwind label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull %7) #13
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %27, %11
  ret ptr %7

17:                                               ; preds = %9, %3
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #14
  resume { ptr, i32 } %18

19:                                               ; preds = %11, %27
  %20 = phi i32 [ %28, %27 ], [ 0, %11 ]
  %21 = tail call noundef ptr @_ZN11xercesc_2_715XercesGroupInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %20) #13
  %22 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %21) #13
  %23 = tail call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21, ptr noundef %2, ptr noundef null) #13
  br label %27

27:                                               ; preds = %25, %19
  %28 = add nuw i32 %20, 1
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %16, label %19, !llvm.loop !242
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715XercesGroupInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !246
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_718XercesAttGroupInfo14attributeCountEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !72
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %7) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %4, i1 noundef zeroext false, ptr noundef %9) #13
          to label %12 unwind label %10

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #14
  br label %52

12:                                               ; preds = %6, %30
  %13 = phi i32 [ %31, %30 ], [ 0, %6 ]
  %14 = tail call noundef ptr @_ZN11xercesc_2_718XercesAttGroupInfo11attributeAtEj(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %13) #13
  %15 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %14) #13
  %19 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %18, ptr noundef %2, ptr noundef null) #13
  br label %22

20:                                               ; preds = %12
  %21 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %14, ptr noundef %2, ptr noundef null) #13
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %19, %17 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #13
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %23, ptr noundef %2) #13
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %29) #13
  tail call void @_ZN11xercesc_2_715XSObjectFactory13processAttUseEPNS_12SchemaAttDefEPNS_14XSAttributeUseE(ptr nonnull align 8 poison, ptr noundef nonnull %14, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %28, %25, %22
  %31 = add nuw i32 %13, 1
  %32 = icmp eq i32 %31, %4
  br i1 %32, label %33, label %12, !llvm.loop !247

33:                                               ; preds = %30, %3
  %34 = phi ptr [ null, %3 ], [ %8, %30 ]
  %35 = tail call noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo19getCompleteWildCardEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo19getCompleteWildCardEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %39 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %38, ptr noundef %2) #13
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %39, %37 ], [ null, %33 ]
  %42 = load ptr, ptr %0, align 8, !tbaa !72
  %43 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %42) #13
  %44 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
          to label %45 unwind label %50

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_726XSAttributeGroupDefinitionC1EPNS_18XercesAttGroupInfoEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_10XSWildcardEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %43, ptr noundef nonnull %1, ptr noundef %34, ptr noundef %41, ptr noundef %44, ptr noundef nonnull %2, ptr noundef %46) #13
          to label %47 unwind label %50

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef nonnull %43) #13
  ret ptr %43

50:                                               ; preds = %45, %40
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %42) #14
  br label %52

52:                                               ; preds = %50, %10
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %11, %10 ]
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718XercesAttGroupInfo14attributeCountEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !248
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718XercesAttGroupInfo11attributeAtEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo19getCompleteWildCardEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_726XSAttributeGroupDefinitionC1EPNS_18XercesAttGroupInfoEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_10XSWildcardEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel17getNamespaceItemsEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !252
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !252
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !254
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !255
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar13getAnnotationEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !260 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !261
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !262 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !263
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715XSObjectFactory24isMultiValueFacetDefinedEPNS_17DatatypeValidatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !71 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %14, %13 ], [ %1, %2 ]
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %5) #13
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %5) #13
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !264

16:                                               ; preds = %9, %4, %13, %2
  %17 = phi i1 [ false, %2 ], [ false, %13 ], [ true, %4 ], [ true, %9 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !265
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !267
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !267
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !268 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !271
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !274
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !275
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !276
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !277
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20, !prof !278

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !277
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 15, ptr noundef %14) #13
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #11
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !279 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !280

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !275
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !276
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !281
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !283

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !284 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %5, label %13, label %6, !prof !285

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !277
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 575, i32 noundef 30, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !274
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !286
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !288
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !291 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !292

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !293
  %8 = load i16, ptr %1, align 2, !tbaa !293
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !294

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !295

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !293
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !296

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !297

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !293
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !298

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !299

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !293
  %28 = load i16, ptr %26, align 2, !tbaa !293
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !300, !llvm.loop !301

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !302 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718XMLStringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !304
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !306
  %7 = icmp slt i32 %6, %3
  br i1 %7, label %8, label %35

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %0, i64 0, i32 2
  %10 = sext i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %28
  %12 = phi i64 [ %10, %8 ], [ %31, %28 ]
  %13 = phi i8 [ 0, %8 ], [ %30, %28 ]
  %14 = phi i32 [ 0, %8 ], [ %29, %28 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !307
  %16 = getelementptr inbounds i16, ptr %15, i64 %12
  %17 = load i16, ptr %16, align 2, !tbaa !293
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer11isDelimeterEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %17) #13
  %19 = and i8 %13, 1
  %20 = icmp eq i8 %19, 0
  br i1 %18, label %21, label %23

21:                                               ; preds = %11
  %22 = select i1 %20, i8 %13, i8 0
  br label %28

23:                                               ; preds = %11
  %24 = xor i8 %19, 1
  %25 = zext nneg i8 %24 to i32
  %26 = add nsw i32 %14, %25
  %27 = select i1 %20, i8 1, i8 %13
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %14, %21 ], [ %26, %23 ]
  %30 = phi i8 [ %22, %21 ], [ %27, %23 ]
  %31 = add nsw i64 %12, 1
  %32 = load i32, ptr %2, align 4, !tbaa !304
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %11, label %35, !llvm.loop !308

35:                                               ; preds = %28, %5, %1
  %36 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %29, %28 ]
  ret i32 %36
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !310
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !312
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !312
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !270 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !271, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !283

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !313 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 4, !tbaa !314
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !315
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !312
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !312
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !317
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !310
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XSFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSFacet", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !318
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_77XSFacet7isFixedEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSFacet", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !321, !range !204, !noundef !205
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition19getMultiValueFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !322
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !267
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !265
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XSMultiValueFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSMultiValueFacet", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !324
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717XSMultiValueFacet7isFixedEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSMultiValueFacet", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !326, !range !204, !noundef !205
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSSimpleTypeDefinition12setFacetInfoEiiPNS_11RefVectorOfINS_7XSFacetEEEPNS1_INS_17XSMultiValueFacetEEEPNS_16RefArrayVectorOfItEE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !327 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !328
  ret ptr %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !329 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !330
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !330
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !332

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !333
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !334
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !339
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !341
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !341
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !343
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !344
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !219 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !345
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !347 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !348

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !293
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !349

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !293
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !350, !llvm.loop !351

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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !352 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !345
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !353

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !354
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !355
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !356
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !356
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !358
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !359
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !360
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !362
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !364
  %8 = load ptr, ptr %0, align 8, !tbaa !365
  %9 = load ptr, ptr %5, align 8, !tbaa !80
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !209
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !366
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !362
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !367
  %23 = load ptr, ptr %20, align 8, !tbaa !80
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !368

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer11isDelimeterEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %4, i16 noundef zeroext %1) #13
  %6 = icmp ne i32 %5, -1
  ret i1 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !370
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !241
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !371
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !239
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !372
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !239
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !239
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !373
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !370, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !239
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(36) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !241
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !374

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !372
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !239
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !241
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !372
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !370, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !239
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(36) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !239
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !241
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !370, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !239
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(36) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !239
  %24 = load i32, ptr %2, align 4, !tbaa !241
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !375
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !372
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !370, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !239
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(36) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !241
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
  %43 = load ptr, ptr %42, align 8, !tbaa !239
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !239
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !239
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !376

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !241
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !370, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !239
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(36) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !370, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !239
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(36) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !241
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !377

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !372
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !239
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 99, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #11
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !82
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !88
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !80
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !87
  %21 = load i32, ptr %12, align 8, !tbaa !88
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !87
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !113
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !378
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = load ptr, ptr %2, align 8, !tbaa !80
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !87
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !80
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_8XSObjectEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !90
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !87
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !379
  %23 = load i8, ptr %9, align 8, !tbaa !86, !range !204, !noundef !205
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !206
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !80
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(36) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !82
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !380

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !87
  %40 = load i32, ptr %4, align 8, !tbaa !88
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !113
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !381

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_8XSObjectEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !90
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !382
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !383
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !110
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !384
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !110
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !110
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !385
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !382, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !112
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !110
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(56) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !112
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !386

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !384
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !110
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !112
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !384
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !382, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(56) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !112
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !112
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !382, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !110
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(56) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !110
  %24 = load i32, ptr %2, align 4, !tbaa !112
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !387
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !112
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !384
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !382, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(56) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !112
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
  %43 = load ptr, ptr %42, align 8, !tbaa !110
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !110
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !388

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !112
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !112
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !382, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(56) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !382, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !112
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !110
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(56) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !112
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !389

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !384
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !110
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !112
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !383
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !384
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !112
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !110
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !390

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !384
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !110
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !110
  store i32 %12, ptr %6, align 8, !tbaa !383
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !391
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !148
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !392
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !146
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !393
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !146
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !146
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !394
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !391, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !146
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(128) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !148
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !395

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !393
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !146
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !148
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !391, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(128) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !146
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !148
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !148
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !391, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !146
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(128) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !146
  %24 = load i32, ptr %2, align 4, !tbaa !148
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !396
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !148
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !393
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !391, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(128) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !148
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !146
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !146
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !146
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !397

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !148
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !148
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !391, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(128) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !391, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !146
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(128) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !148
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !398

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !393
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !146
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !148
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !392
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !393
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !148
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !146
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !399

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !393
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !146
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !146
  store i32 %12, ptr %6, align 8, !tbaa !392
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !400
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !402
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !403
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !404
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !405
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !406
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !400
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !406
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #14
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !407
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !409
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !410
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !411
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !412
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !411
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !411
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !413
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !407, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !409
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !411
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !409
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !414

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !412
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !411
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !409
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !412
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !407, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !411
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !411
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !409
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !409
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !407, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !411
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !411
  %24 = load i32, ptr %2, align 4, !tbaa !409
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !415
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !409
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !412
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !407, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !411
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !409
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !411
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !411
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !411
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !416

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !409
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !409
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !409
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !407, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !411
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !407, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !409
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !411
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !409
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !417

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !412
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !411
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !400
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #11
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !400
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !404
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !80
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !403
  %21 = load i32, ptr %12, align 8, !tbaa !404
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !403
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !113
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !418
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !409
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !113
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !409
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !404
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !405
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !402, !range !204, !noundef !205
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !419
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(72) %21) #14
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !419
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !421
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !422
  br label %48

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !400
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !403
  %38 = load i32, ptr %5, align 4, !tbaa !209
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %35, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %41) #13
  %42 = load ptr, ptr %36, align 8, !tbaa !403
  %43 = load i32, ptr %5, align 4, !tbaa !209
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %35, ptr %45, align 8, !tbaa !113
  %46 = load i32, ptr %9, align 4, !tbaa !405
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !405
  br label %48

48:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !409
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !410
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !412
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !409
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !411
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !423

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !412
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !411
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !411
  store i32 %12, ptr %6, align 8, !tbaa !410
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !404
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !400
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !400
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !404
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !403
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %23, ptr %21, align 8, !tbaa !403
  store i32 %6, ptr %3, align 8, !tbaa !404
  %24 = load ptr, ptr %0, align 8, !tbaa !400
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #13
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !403
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !424
  %39 = load ptr, ptr %19, align 8, !tbaa !406
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !421
  %42 = load ptr, ptr %0, align 8, !tbaa !400
  %43 = load ptr, ptr %39, align 8, !tbaa !80
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #13
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !113
  store ptr %49, ptr %37, align 8, !tbaa !424
  store ptr %36, ptr %48, align 8, !tbaa !113
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !425

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !404
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !426

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !406
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !404
  %9 = load ptr, ptr %0, align 8, !tbaa !400
  %10 = load ptr, ptr %6, align 8, !tbaa !80
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !209
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.27", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !403
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !422
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !406
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !421
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #13
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !113
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !427

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 !prof !71 {
  store ptr %3, ptr %0, align 8, !tbaa !419
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !424
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !421
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !422
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !428
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !428
  store ptr null, ptr %0, align 8, !tbaa !428
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = load ptr, ptr %0, align 8, !tbaa !428
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !430
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !428
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !430
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !431
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !214
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !432
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !212
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !433
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !212
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !212
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !434
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !431, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !212
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !214
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !435

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !433
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !212
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !214
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !433
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !431, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !212
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(64) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !212
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !214
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !214
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !431, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !212
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(64) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !212
  %24 = load i32, ptr %2, align 4, !tbaa !214
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !436
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !214
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !433
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !431, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !212
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !214
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !212
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !212
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !212
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !437

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !214
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !214
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !214
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !431, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !212
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !431, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !212
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !214
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !438

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !433
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !212
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.28", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !88
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !82
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !88
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !87
  store i32 %5, ptr %3, align 8, !tbaa !88
  %23 = load ptr, ptr %0, align 8, !tbaa !82
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !87
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !113
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !379
  %38 = load ptr, ptr %18, align 8, !tbaa !91
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !208
  %41 = load ptr, ptr %0, align 8, !tbaa !82
  %42 = load ptr, ptr %38, align 8, !tbaa !80
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !113
  store ptr %48, ptr %36, align 8, !tbaa !379
  store ptr %35, ptr %47, align 8, !tbaa !113
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !439

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !88
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !440

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = load ptr, ptr %0, align 8, !tbaa !82
  %9 = load ptr, ptr %5, align 8, !tbaa !80
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !209
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !91
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !208
  %23 = load ptr, ptr %20, align 8, !tbaa !80
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !441

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !71 {
  store ptr %2, ptr %0, align 8, !tbaa !206
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !379
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !442
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.28", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !444
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !442
  store ptr null, ptr %0, align 8, !tbaa !442
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = load ptr, ptr %0, align 8, !tbaa !442
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.28", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !444
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !442
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.28", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !444
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !214
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !432
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !433
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !214
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !212
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !445

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !433
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !212
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !212
  store i32 %12, ptr %6, align 8, !tbaa !432
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !223 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !446
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !235
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !447
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !233
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !448
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !233
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !449

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !233
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !450, !llvm.loop !451
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !446, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !452

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !235
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !453

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !448
  %15 = load ptr, ptr %11, align 8, !tbaa !233
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = load ptr, ptr %14, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
          to label %21 unwind label %35

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !235
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !454, !llvm.loop !455

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !448
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !233
  %31 = load ptr, ptr %28, align 8, !tbaa !80
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
          to label %34 unwind label %37

34:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
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
  tail call void @__clang_call_terminate(ptr %41) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !456 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !235
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !457

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !448
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 52, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !446, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !458

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !448
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !233
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = load ptr, ptr %22, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %27) #13
  br label %31

31:                                               ; preds = %18, %20
  %32 = phi i64 [ %19, %18 ], [ %25, %20 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !233
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !235
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %10

9:                                                ; preds = %24, %1
  store i32 0, ptr %2, align 4, !tbaa !235
  ret void

10:                                               ; preds = %5, %24
  %11 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %5 ], [ %28, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !446, !range !204, !noundef !205
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !448
  %17 = load ptr, ptr %8, align 8, !tbaa !233
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = load ptr, ptr %16, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %19) #13
  %23 = load i32, ptr %2, align 4, !tbaa !235
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %26 = load ptr, ptr %8, align 8, !tbaa !233
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !113
  %28 = add nuw nsw i64 %12, 1
  %29 = zext i32 %25 to i64
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %10, label %9, !llvm.loop !459
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !235
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !448
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 77, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !446, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !448
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !233
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = load ptr, ptr %19, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24) #13
  %28 = load i32, ptr %3, align 4, !tbaa !235
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !233
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !233
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !233
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !460

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !235
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !235
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !235
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !446, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !448
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !233
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = load ptr, ptr %12, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17) #13
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !446, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !235
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !448
  %15 = load ptr, ptr %11, align 8, !tbaa !233
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = load ptr, ptr %14, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !235
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !461

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !448
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !233
  %30 = load ptr, ptr %27, align 8, !tbaa !80
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !223 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !235
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !448
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !446, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !233
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef nonnull %25) #16
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !233
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !235
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !235
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !446, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !233
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef nonnull %17) #16
  %20 = load ptr, ptr %7, align 8, !tbaa !233
  %21 = load i32, ptr %2, align 4, !tbaa !235
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !113
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !462
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !235
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !448
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !446, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !233
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %22) #16
  %25 = load i32, ptr %3, align 4, !tbaa !235
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !233
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !233
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !233
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !113
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !113
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !463

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !113
  store i32 %28, ptr %3, align 4, !tbaa !235
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !235
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !235
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !446, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !233
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %15) #16
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !446, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !235
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !233
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef nonnull %16) #16
  %19 = load i32, ptr %6, align 4, !tbaa !235
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !464

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !448
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !233
  %30 = load ptr, ptr %27, align 8, !tbaa !80
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !232 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !235
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !447
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !465

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !448
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !235
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !466

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !467

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !233
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !468, !llvm.loop !469

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !448
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.8", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !233
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !233
  store i32 %12, ptr %6, align 8, !tbaa !447
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !371
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !372
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !241
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !239
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !470

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !372
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !239
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !239
  store i32 %12, ptr %6, align 8, !tbaa !371
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !471
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !312
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !472
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !310
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !317
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !310
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !310
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !473
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !471, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !312
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !310
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !312
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !474

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !317
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !310
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !312
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !317
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !471, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !310
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(64) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !310
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !312
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !312
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !471, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !310
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(64) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !310
  %24 = load i32, ptr %2, align 4, !tbaa !312
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !475
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !312
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !317
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !471, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !310
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !312
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !310
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !310
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !310
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !476

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !312
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !312
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !312
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !471, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !310
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !471, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !312
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !310
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !312
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !477

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !317
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !310
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !71 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !478
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !267
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !479
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !265
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !323
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !80
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !265
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !265
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !113
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !480
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !478, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !267
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !265
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !267
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !481

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !323
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !265
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !267
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !478, !range !204, !noundef !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !265
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(64) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !265
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !267
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !267
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !478, !range !204, !noundef !205
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !265
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !80
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(64) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !265
  %24 = load i32, ptr %2, align 4, !tbaa !267
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !482
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !478, !range !204, !noundef !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !265
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !267
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !265
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !265
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !265
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !113
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !483

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !113
  store i32 %31, ptr %3, align 4, !tbaa !267
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !267
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !267
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !478, !range !204, !noundef !205
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !265
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !80
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !478, !range !204, !noundef !205
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !267
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !265
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !267
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !484

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !323
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !265
  %33 = load ptr, ptr %30, align 8, !tbaa !80
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !267
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !479
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !323
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !267
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !265
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !485

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !323
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.14", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !265
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !265
  store i32 %12, ptr %6, align 8, !tbaa !479
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !270 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !486 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !487

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !488
  store ptr %7, ptr %2, align 8, !tbaa !274
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !489

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !275
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !275
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !276
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !281
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !490

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !491
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !492

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !275
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !493, !llvm.loop !494

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !274
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !275
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !274
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !270 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !270 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !495
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !491
  %5 = load ptr, ptr %2, align 8, !tbaa !80
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !491
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !496
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !80
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !270 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !497

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !281
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !498

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !499
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !491
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !500

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !488
  %23 = load i8, ptr %9, align 8, !tbaa !501, !range !204, !noundef !205
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !502

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !286
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !80
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !495
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !503, !llvm.loop !504

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !491
  %40 = load i32, ptr %4, align 8, !tbaa !281
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !113
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !505, !llvm.loop !506

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !499
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !312
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !472
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !317
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !312
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !113
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !310
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !113
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !507

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !317
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.12", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !310
  %49 = load ptr, ptr %46, align 8, !tbaa !80
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !310
  store i32 %12, ptr %6, align 8, !tbaa !472
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!70}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv, i64 3}
!36 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 31}
!37 = !{ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 496216}
!38 = !{ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv, i64 634411}
!39 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, i64 188746}
!40 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!41 = !{ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, i64 317185}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!43 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev, i64 34}
!44 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 34}
!45 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!46 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!47 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 33}
!48 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @__cxa_allocate_exception, i64 1}
!50 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 34}
!52 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, i64 1}
!53 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!54 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, i64 34}
!55 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!56 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!59 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_throw, i64 1}
!60 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!61 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 188746}
!62 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, i64 188746}
!63 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_allocate_exception, i64 1}
!64 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!65 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_throw, i64 1}
!66 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_free_exception, i64 1}
!67 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, i64 34}
!68 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!69 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv, i64 34}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSN11xercesc_2_715XSObjectFactoryE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!73, !74, i64 16}
!78 = !{!73, !74, i64 8}
!79 = !{!"function_entry_count", i64 5836268}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !76, i64 0}
!82 = !{!83, !74, i64 0}
!83 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_8XSObjectEEE", !74, i64 0, !84, i64 8, !74, i64 16, !85, i64 24, !85, i64 28, !85, i64 32, !74, i64 40}
!84 = !{!"bool", !75, i64 0}
!85 = !{!"int", !75, i64 0}
!86 = !{!83, !84, i64 8}
!87 = !{!83, !74, i64 16}
!88 = !{!83, !85, i64 24}
!89 = !{!83, !85, i64 28}
!90 = !{!83, !85, i64 32}
!91 = !{!83, !74, i64 40}
!92 = !{!"function_entry_count", i64 353}
!93 = !{!94, !96, i64 48}
!94 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !95, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !96, i64 48, !84, i64 52, !84, i64 53, !85, i64 56, !85, i64 60}
!95 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!96 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !75, i64 0}
!97 = !{!98, !74, i64 8}
!98 = !{!"_ZTSN11xercesc_2_715XSNamespaceItemE", !74, i64 0, !74, i64 8, !74, i64 16, !75, i64 24, !74, i64 136, !75, i64 144, !74, i64 256}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!102, !74, i64 288}
!102 = !{!"_ZTSN11xercesc_2_77XSModelE", !74, i64 0, !74, i64 8, !74, i64 16, !75, i64 24, !75, i64 136, !74, i64 248, !74, i64 256, !74, i64 264, !74, i64 272, !74, i64 280, !74, i64 288, !84, i64 296, !84, i64 297}
!103 = !{!"function_entry_count", i64 157}
!104 = !{!94, !74, i64 32}
!105 = !{!94, !74, i64 40}
!106 = !{!"function_entry_count", i64 251}
!107 = !{!94, !85, i64 56}
!108 = !{!"function_entry_count", i64 254}
!109 = !{!94, !85, i64 60}
!110 = !{!111, !74, i64 24}
!111 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!112 = !{!111, !85, i64 12}
!113 = !{!74, !74, i64 0}
!114 = !{!94, !74, i64 24}
!115 = distinct !{!115, !100}
!116 = !{!117, !120, i64 64}
!117 = !{!"_ZTSN11xercesc_2_722XSAttributeDeclarationE", !118, i64 0, !74, i64 40, !74, i64 48, !74, i64 56, !120, i64 64, !74, i64 72}
!118 = !{!"_ZTSN11xercesc_2_78XSObjectE", !119, i64 8, !74, i64 16, !74, i64 24, !85, i64 32}
!119 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !75, i64 0}
!120 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !75, i64 0}
!121 = !{!117, !74, i64 72}
!122 = !{!"function_entry_count", i64 550665}
!123 = !{!124, !74, i64 80}
!124 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !125, i64 0, !85, i64 56, !129, i64 60, !130, i64 64, !131, i64 68, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96, !74, i64 104, !74, i64 112}
!125 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !95, i64 0, !126, i64 8, !127, i64 12, !128, i64 16, !84, i64 20, !84, i64 21, !85, i64 24, !74, i64 32, !74, i64 40, !74, i64 48}
!126 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !75, i64 0}
!127 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !75, i64 0}
!128 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !75, i64 0}
!129 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !75, i64 0}
!130 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !75, i64 0}
!131 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !75, i64 0}
!132 = distinct !{!132, !100}
!133 = !{!124, !131, i64 68}
!134 = !{!"function_entry_count", i64 874884}
!135 = !{!136, !138, i64 28}
!136 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !95, i64 0, !84, i64 8, !84, i64 9, !84, i64 10, !84, i64 11, !137, i64 12, !85, i64 16, !85, i64 20, !85, i64 24, !138, i64 28, !139, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96}
!137 = !{!"short", !75, i64 0}
!138 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !75, i64 0}
!139 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !75, i64 0}
!140 = !{!"function_entry_count", i64 1580484}
!141 = !{!136, !74, i64 40}
!142 = !{!143, !74, i64 120}
!143 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !136, i64 0, !84, i64 104, !84, i64 105, !74, i64 112, !74, i64 120, !74, i64 128}
!144 = !{!145, !85, i64 12}
!145 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!146 = !{!147, !74, i64 24}
!147 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!148 = !{!147, !85, i64 12}
!149 = !{!145, !74, i64 32}
!150 = !{!145, !74, i64 24}
!151 = !{!152, !155, i64 64}
!152 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !153, i64 0, !85, i64 56, !85, i64 60, !155, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96, !74, i64 104, !74, i64 112, !74, i64 120}
!153 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !118, i64 0, !154, i64 36, !137, i64 40, !74, i64 48}
!154 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !75, i64 0}
!155 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !75, i64 0}
!156 = !{!152, !74, i64 104}
!157 = distinct !{!157, !100}
!158 = distinct !{!158, !100}
!159 = distinct !{!159, !100}
!160 = distinct !{!160, !100}
!161 = !{!162, !74, i64 64}
!162 = !{!"_ZTSN11xercesc_2_720XSElementDeclarationE", !118, i64 0, !137, i64 36, !137, i64 38, !120, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !74, i64 80, !74, i64 88}
!163 = !{!164, !74, i64 128}
!164 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !165, i64 0, !167, i64 36, !131, i64 40, !129, i64 44, !130, i64 48, !85, i64 52, !85, i64 56, !85, i64 60, !85, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96, !74, i64 104, !74, i64 112, !74, i64 120, !74, i64 128, !74, i64 136, !84, i64 144, !84, i64 145, !84, i64 146}
!165 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !95, i64 0, !74, i64 8, !74, i64 16, !166, i64 24, !85, i64 28, !84, i64 32}
!166 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !75, i64 0}
!167 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !75, i64 0}
!168 = !{!"function_entry_count", i64 832911}
!169 = !{!164, !74, i64 80}
!170 = !{!"function_entry_count", i64 495341}
!171 = !{!164, !74, i64 136}
!172 = !{!"function_entry_count", i64 1665822}
!173 = !{!164, !74, i64 112}
!174 = !{!"branch_weights", i32 1665821, i32 3}
!175 = !{!102, !74, i64 248}
!176 = !{!177, !74, i64 0}
!177 = !{!"_ZTSN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEE", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!178 = !{!177, !74, i64 8}
!179 = !{!177, !74, i64 16}
!180 = !{!177, !74, i64 24}
!181 = distinct !{!181, !100}
!182 = !{!"function_entry_count", i64 32}
!183 = !{!"branch_weights", i32 1, i32 33}
!184 = !{!164, !131, i64 40}
!185 = distinct !{!185, !100}
!186 = distinct !{!186, !100}
!187 = !{!162, !74, i64 56}
!188 = !{!"function_entry_count", i64 191162}
!189 = !{!190, !74, i64 104}
!190 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !95, i64 0, !84, i64 8, !84, i64 9, !84, i64 10, !84, i64 11, !84, i64 12, !85, i64 16, !85, i64 20, !85, i64 24, !85, i64 28, !85, i64 32, !85, i64 36, !85, i64 40, !85, i64 44, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96, !74, i64 104, !74, i64 112, !74, i64 120, !74, i64 128, !74, i64 136, !74, i64 144, !74, i64 152, !74, i64 160, !74, i64 168}
!191 = !{!"function_entry_count", i64 3338153}
!192 = !{!190, !85, i64 32}
!193 = !{!"function_entry_count", i64 496205}
!194 = !{!190, !74, i64 80}
!195 = !{!"function_entry_count", i64 496216}
!196 = !{!190, !74, i64 128}
!197 = !{!"function_entry_count", i64 41}
!198 = !{!190, !74, i64 88}
!199 = !{!190, !74, i64 72}
!200 = !{!"function_entry_count", i64 29}
!201 = !{!190, !74, i64 96}
!202 = !{!153, !74, i64 48}
!203 = !{!124, !74, i64 112}
!204 = !{i8 0, i8 2}
!205 = !{}
!206 = !{!207, !74, i64 0}
!207 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEE", !74, i64 0, !74, i64 8, !74, i64 16}
!208 = !{!207, !74, i64 16}
!209 = !{!85, !85, i64 0}
!210 = !{!"function_entry_count", i64 401820}
!211 = !{!125, !126, i64 8}
!212 = !{!213, !74, i64 24}
!213 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!214 = !{!213, !85, i64 12}
!215 = !{!190, !74, i64 120}
!216 = !{!164, !85, i64 52}
!217 = !{!"function_entry_count", i64 496241}
!218 = !{!190, !85, i64 28}
!219 = !{!"function_entry_count", i64 634412}
!220 = !{!221, !74, i64 32}
!221 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !95, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !85, i64 48}
!222 = !{!"branch_weights", i32 1, i32 634413}
!223 = !{!"function_entry_count", i64 188746}
!224 = !{!"function_entry_count", i64 558789}
!225 = !{!"branch_weights", i32 158605, i32 400186}
!226 = !{!"function_entry_count", i64 317186}
!227 = !{!"branch_weights", i32 1, i32 317187}
!228 = !{!229, !74, i64 8}
!229 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !95, i64 0, !74, i64 8, !74, i64 16}
!230 = !{!231, !74, i64 16}
!231 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !95, i64 0, !85, i64 8, !74, i64 16, !74, i64 24, !74, i64 32}
!232 = !{!"function_entry_count", i64 188992}
!233 = !{!234, !74, i64 24}
!234 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!235 = !{!234, !85, i64 12}
!236 = !{!"function_entry_count", i64 12}
!237 = !{!238, !74, i64 56}
!238 = !{!"_ZTSN11xercesc_2_79IC_KeyRefE", !221, i64 0, !74, i64 56}
!239 = !{!240, !74, i64 24}
!240 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!241 = !{!240, !85, i64 12}
!242 = distinct !{!242, !100}
!243 = !{!244, !74, i64 24}
!244 = !{!"_ZTSN11xercesc_2_715XercesGroupInfoE", !95, i64 0, !84, i64 8, !85, i64 12, !85, i64 16, !85, i64 20, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48}
!245 = !{!244, !74, i64 32}
!246 = !{!244, !85, i64 12}
!247 = distinct !{!247, !100}
!248 = !{!249, !74, i64 24}
!249 = !{!"_ZTSN11xercesc_2_718XercesAttGroupInfoE", !95, i64 0, !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48}
!250 = !{!249, !74, i64 40}
!251 = !{!102, !74, i64 16}
!252 = !{!253, !85, i64 12}
!253 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!254 = !{!253, !74, i64 32}
!255 = !{!253, !74, i64 24}
!256 = !{!257, !74, i64 120}
!257 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !258, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96, !74, i64 104, !74, i64 112, !74, i64 120, !84, i64 128, !259, i64 136}
!258 = !{!"_ZTSN11xercesc_2_77GrammarE", !95, i64 0}
!259 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !95, i64 0, !74, i64 8, !74, i64 16}
!260 = !{!"function_entry_count", i64 2082808}
!261 = !{!136, !85, i64 20}
!262 = !{!"function_entry_count", i64 114}
!263 = !{!136, !85, i64 24}
!264 = distinct !{!264, !100}
!265 = !{!266, !74, i64 24}
!266 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!267 = !{!266, !85, i64 12}
!268 = !{!"function_entry_count", i64 76}
!269 = !{!136, !74, i64 48}
!270 = !{!"function_entry_count", i64 34}
!271 = !{!272, !84, i64 8}
!272 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE", !273, i64 0, !84, i64 8, !74, i64 16, !85, i64 24, !74, i64 32, !74, i64 40}
!273 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE"}
!274 = !{!272, !74, i64 16}
!275 = !{!272, !85, i64 24}
!276 = !{!272, !74, i64 32}
!277 = !{!272, !74, i64 40}
!278 = !{!"branch_weights", i32 1, i32 35}
!279 = !{!"function_entry_count", i64 104}
!280 = !{!"branch_weights", i32 35, i32 71}
!281 = !{!282, !85, i64 24}
!282 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !74, i64 0, !84, i64 8, !74, i64 16, !85, i64 24, !85, i64 28, !85, i64 32, !74, i64 40}
!283 = !{!"branch_weights", i32 35, i32 1}
!284 = !{!"function_entry_count", i64 35}
!285 = !{!"branch_weights", i32 36, i32 1}
!286 = !{!287, !74, i64 0}
!287 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !74, i64 0, !74, i64 8, !74, i64 16}
!288 = !{!289, !74, i64 24}
!289 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !95, i64 0, !290, i64 8, !290, i64 16, !74, i64 24, !74, i64 32, !74, i64 40}
!290 = !{!"long", !75, i64 0}
!291 = !{!"function_entry_count", i64 1231717351}
!292 = !{!"branch_weights", i32 621, i32 -1469098093}
!293 = !{!137, !137, i64 0}
!294 = !{!"branch_weights", i32 408901017, i32 1}
!295 = !{!"branch_weights", i32 267, i32 4}
!296 = !{!"branch_weights", i32 1, i32 4}
!297 = !{!"branch_weights", i32 156, i32 112}
!298 = !{!"branch_weights", i32 1, i32 112}
!299 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!300 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!301 = distinct !{!301, !100}
!302 = !{!"function_entry_count", i64 23}
!303 = !{!136, !74, i64 56}
!304 = !{!305, !85, i64 4}
!305 = !{!"_ZTSN11xercesc_2_718XMLStringTokenizerE", !85, i64 0, !85, i64 4, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32}
!306 = !{!305, !85, i64 0}
!307 = !{!305, !74, i64 8}
!308 = distinct !{!308, !100}
!309 = !{!289, !74, i64 32}
!310 = !{!311, !74, i64 24}
!311 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!312 = !{!311, !85, i64 12}
!313 = !{!"function_entry_count", i64 1205039}
!314 = !{!136, !137, i64 12}
!315 = !{!153, !154, i64 36}
!316 = !{!152, !74, i64 80}
!317 = !{!311, !74, i64 32}
!318 = !{!319, !320, i64 36}
!319 = !{!"_ZTSN11xercesc_2_77XSFacetE", !118, i64 0, !320, i64 36, !84, i64 40, !74, i64 48, !74, i64 56}
!320 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition5FACETE", !75, i64 0}
!321 = !{!319, !84, i64 40}
!322 = !{!152, !74, i64 88}
!323 = !{!266, !74, i64 32}
!324 = !{!325, !320, i64 36}
!325 = !{!"_ZTSN11xercesc_2_717XSMultiValueFacetE", !118, i64 0, !320, i64 36, !84, i64 40, !74, i64 48, !74, i64 56}
!326 = !{!325, !84, i64 40}
!327 = !{!"function_entry_count", i64 19496}
!328 = !{!125, !74, i64 32}
!329 = !{!"function_entry_count", i64 2}
!330 = !{!331, !85, i64 12}
!331 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!332 = !{!"branch_weights", i32 33, i32 1}
!333 = !{!331, !74, i64 32}
!334 = !{!331, !74, i64 24}
!335 = !{!336, !74, i64 40}
!336 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !337, i64 8, !74, i64 16, !85, i64 24, !74, i64 32, !74, i64 40}
!337 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !75, i64 0}
!338 = !{!"function_entry_count", i64 496246}
!339 = !{!340, !85, i64 28}
!340 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !74, i64 0, !84, i64 8, !74, i64 16, !85, i64 24, !85, i64 28, !74, i64 32}
!341 = !{!342, !85, i64 12}
!342 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!343 = !{!342, !74, i64 32}
!344 = !{!342, !74, i64 24}
!345 = !{!346, !85, i64 12}
!346 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!347 = !{!"function_entry_count", i64 2453164456}
!348 = !{!"branch_weights", i32 1, i32 -1841802839}
!349 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!350 = !{!"branch_weights", i32 408669070, i32 -279908794}
!351 = distinct !{!351, !100}
!352 = !{!"function_entry_count", i64 475779}
!353 = !{!"branch_weights", i32 475780, i32 1}
!354 = !{!346, !74, i64 32}
!355 = !{!346, !74, i64 24}
!356 = !{!357, !85, i64 12}
!357 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!358 = !{!357, !74, i64 32}
!359 = !{!357, !74, i64 24}
!360 = !{!361, !74, i64 0}
!361 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !74, i64 0, !74, i64 8, !74, i64 16}
!362 = !{!363, !74, i64 40}
!363 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !74, i64 0, !84, i64 8, !74, i64 16, !85, i64 24, !85, i64 28, !85, i64 32, !74, i64 40}
!364 = !{!363, !85, i64 24}
!365 = !{!363, !74, i64 0}
!366 = !{!363, !74, i64 16}
!367 = !{!361, !74, i64 16}
!368 = distinct !{!368, !100}
!369 = !{!305, !74, i64 16}
!370 = !{!240, !84, i64 8}
!371 = !{!240, !85, i64 16}
!372 = !{!240, !74, i64 32}
!373 = distinct !{!373, !100}
!374 = distinct !{!374, !100}
!375 = distinct !{!375, !100}
!376 = distinct !{!376, !100}
!377 = distinct !{!377, !100}
!378 = distinct !{!378, !100}
!379 = !{!207, !74, i64 8}
!380 = distinct !{!380, !100}
!381 = distinct !{!381, !100}
!382 = !{!111, !84, i64 8}
!383 = !{!111, !85, i64 16}
!384 = !{!111, !74, i64 32}
!385 = distinct !{!385, !100}
!386 = distinct !{!386, !100}
!387 = distinct !{!387, !100}
!388 = distinct !{!388, !100}
!389 = distinct !{!389, !100}
!390 = distinct !{!390, !100}
!391 = !{!147, !84, i64 8}
!392 = !{!147, !85, i64 16}
!393 = !{!147, !74, i64 32}
!394 = distinct !{!394, !100}
!395 = distinct !{!395, !100}
!396 = distinct !{!396, !100}
!397 = distinct !{!397, !100}
!398 = distinct !{!398, !100}
!399 = distinct !{!399, !100}
!400 = !{!401, !74, i64 0}
!401 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEE", !74, i64 0, !84, i64 8, !74, i64 16, !85, i64 24, !85, i64 28, !74, i64 32}
!402 = !{!401, !84, i64 8}
!403 = !{!401, !74, i64 16}
!404 = !{!401, !85, i64 24}
!405 = !{!401, !85, i64 28}
!406 = !{!401, !74, i64 32}
!407 = !{!408, !84, i64 8}
!408 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE", !84, i64 8, !85, i64 12, !85, i64 16, !74, i64 24, !74, i64 32}
!409 = !{!408, !85, i64 12}
!410 = !{!408, !85, i64 16}
!411 = !{!408, !74, i64 24}
!412 = !{!408, !74, i64 32}
!413 = distinct !{!413, !100}
!414 = distinct !{!414, !100}
!415 = distinct !{!415, !100}
!416 = distinct !{!416, !100}
!417 = distinct !{!417, !100}
!418 = distinct !{!418, !100}
!419 = !{!420, !74, i64 0}
!420 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEE", !74, i64 0, !74, i64 8, !74, i64 16, !85, i64 24}
!421 = !{!420, !74, i64 16}
!422 = !{!420, !85, i64 24}
!423 = distinct !{!423, !100}
!424 = !{!420, !74, i64 8}
!425 = distinct !{!425, !100}
!426 = distinct !{!426, !100}
!427 = distinct !{!427, !100}
!428 = !{!429, !74, i64 0}
!429 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEE", !74, i64 0, !74, i64 8}
!430 = !{!429, !74, i64 8}
!431 = !{!213, !84, i64 8}
!432 = !{!213, !85, i64 16}
!433 = !{!213, !74, i64 32}
!434 = distinct !{!434, !100}
!435 = distinct !{!435, !100}
!436 = distinct !{!436, !100}
!437 = distinct !{!437, !100}
!438 = distinct !{!438, !100}
!439 = distinct !{!439, !100}
!440 = distinct !{!440, !100}
!441 = distinct !{!441, !100}
!442 = !{!443, !74, i64 0}
!443 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEE", !74, i64 0, !74, i64 8}
!444 = !{!443, !74, i64 8}
!445 = distinct !{!445, !100}
!446 = !{!234, !84, i64 8}
!447 = !{!234, !85, i64 16}
!448 = !{!234, !74, i64 32}
!449 = !{!"branch_weights", i32 1, i32 188746}
!450 = !{!"branch_weights", i32 188746, i32 566295}
!451 = distinct !{!451, !100}
!452 = !{!"branch_weights", i32 7, i32 188741}
!453 = !{!"branch_weights", i32 1, i32 188740}
!454 = !{!"branch_weights", i32 253, i32 188740}
!455 = distinct !{!455, !100}
!456 = !{!"function_entry_count", i64 317171}
!457 = !{!"branch_weights", i32 317172, i32 1}
!458 = !{!"branch_weights", i32 1, i32 317172}
!459 = distinct !{!459, !100}
!460 = distinct !{!460, !100}
!461 = distinct !{!461, !100}
!462 = distinct !{!462, !100}
!463 = distinct !{!463, !100}
!464 = distinct !{!464, !100}
!465 = !{!"branch_weights", i32 10, i32 188984}
!466 = !{!"branch_weights", i32 1, i32 159}
!467 = !{!"branch_weights", i32 159, i32 1}
!468 = !{!"branch_weights", i32 159, i32 9329}
!469 = distinct !{!469, !100}
!470 = distinct !{!470, !100}
!471 = !{!311, !84, i64 8}
!472 = !{!311, !85, i64 16}
!473 = distinct !{!473, !100}
!474 = distinct !{!474, !100}
!475 = distinct !{!475, !100}
!476 = distinct !{!476, !100}
!477 = distinct !{!477, !100}
!478 = !{!266, !84, i64 8}
!479 = !{!266, !85, i64 16}
!480 = distinct !{!480, !100}
!481 = distinct !{!481, !100}
!482 = distinct !{!482, !100}
!483 = distinct !{!483, !100}
!484 = distinct !{!484, !100}
!485 = distinct !{!485, !100}
!486 = !{!"function_entry_count", i64 69}
!487 = !{!"branch_weights", i32 35, i32 36}
!488 = !{!287, !74, i64 8}
!489 = !{!"branch_weights", i32 2087831324, i32 59652324}
!490 = !{!"branch_weights", i32 16, i32 55}
!491 = !{!282, !74, i64 16}
!492 = !{!"branch_weights", i32 506, i32 36}
!493 = !{!"branch_weights", i32 20, i32 487}
!494 = distinct !{!494, !100}
!495 = !{!282, !74, i64 0}
!496 = !{!282, !74, i64 40}
!497 = !{!"branch_weights", i32 6, i32 30}
!498 = !{!"branch_weights", i32 1, i32 239}
!499 = !{!282, !85, i64 32}
!500 = !{!"branch_weights", i32 360, i32 36}
!501 = !{!282, !84, i64 8}
!502 = !{!"branch_weights", i32 1, i32 36}
!503 = !{!"branch_weights", i32 36, i32 0}
!504 = distinct !{!504, !100}
!505 = !{!"branch_weights", i32 2929, i32 239}
!506 = distinct !{!506, !100}
!507 = distinct !{!507, !100}
