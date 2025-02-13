; ModuleID = 'XSObjectFactory.cpp'
source_filename = "XSObjectFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSObjectFactory" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
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
%"class.xercesc_2_7::BaseRefVectorOf.7" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.9" = type { ptr, i8, i32, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.11" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf.12" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::ArrayJanitor.13" = type { ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.15" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::IC_Field" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XercesXPath" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.16" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IC_KeyRef" = type { %"class.xercesc_2_7::IdentityConstraint.base", ptr }
%"class.xercesc_2_7::IdentityConstraint.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32 }>
%"class.xercesc_2_7::BaseRefVectorOf.18" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XercesGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XercesAttGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.20" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.22" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.23" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.24" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.28" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.30" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.26" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XSFacet" = type { %"class.xercesc_2_7::XSObject.base", i32, i8, ptr, ptr }
%"class.xercesc_2_7::XSMultiValueFacet" = type { %"class.xercesc_2_7::XSObject.base", i32, i8, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.29" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_8XSObjectEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj = comdat any

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

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

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

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv = comdat any

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

$_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj = comdat any

$_ZNK11xercesc_2_78IC_Field8getXPathEv = comdat any

$_ZN11xercesc_2_711XercesXPath13getExpressionEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt = comdat any

$_ZNK11xercesc_2_79IC_KeyRef6getKeyEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv = comdat any

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

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv = comdat any

$_ZN11xercesc_2_715XercesGroupInfo9elementAtEj = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv = comdat any

$_ZNK11xercesc_2_718XercesAttGroupInfo14attributeCountEv = comdat any

$_ZN11xercesc_2_718XercesAttGroupInfo11attributeAtEj = comdat any

$_ZNK11xercesc_2_718XercesAttGroupInfo19getCompleteWildCardEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj = comdat any

$_ZN11xercesc_2_77XSModel17getNamespaceItemsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj = comdat any

$_ZN11xercesc_2_713SchemaGrammar13getAnnotationEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj = comdat any

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

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_718XMLStringTokenizer11isDelimeterEt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

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

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant [44 x i8] c"N11xercesc_2_711RefVectorOfINS_8XSObjectEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
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
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
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

declare void @__cxa_pure_virtual() unnamed_addr

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactoryC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #13
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 20, i1 noundef zeroext true, ptr noundef %1) #13
          to label %5 unwind label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  store ptr %4, ptr %6, align 8, !tbaa !78
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
  store ptr %7, ptr %3, align 8, !tbaa !79
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
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !80 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 !prof !72 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !83
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !87
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !88
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !89
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !90
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !91
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !92
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  store ptr %3, ptr %12, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !95
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !96
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !98
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !97
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !97
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !100
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8XSObjectEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !93, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !95
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !97
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(36) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !95
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !104

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !97
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !95
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !98
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
  %16 = load i8, ptr %15, align 8, !tbaa !93, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(36) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !95
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !93, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !97
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(36) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !97
  %24 = load i32, ptr %2, align 4, !tbaa !95
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !105
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !95
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !98
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
  %15 = load i8, ptr %14, align 8, !tbaa !93, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(36) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !95
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
  %43 = load ptr, ptr %42, align 8, !tbaa !97
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !97
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !97
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !106

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !95
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !93, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(36) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !93, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !95
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !97
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(36) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !95
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !107

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !97
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
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
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !108
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !83
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
  %11 = load ptr, ptr %0, align 8, !tbaa !83
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !81
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !88
  %21 = load i32, ptr %12, align 8, !tbaa !89
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !88
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !99
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !111
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !108
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactoryD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !81
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(40) %8) #14
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = load ptr, ptr %2, align 8, !tbaa !81
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !88
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !81
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_8XSObjectEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !91
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !88
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = load i8, ptr %9, align 8, !tbaa !87, !range !102, !noundef !103
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !114
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !81
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(36) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !83
  %34 = load ptr, ptr %33, align 8, !tbaa !81
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !115

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !88
  %40 = load i32, ptr %4, align 8, !tbaa !89
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !99
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !116

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_8XSObjectEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 4, i1 noundef zeroext true, ptr noundef %10) #13
          to label %11 unwind label %18

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %13) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !73
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
  %32 = load ptr, ptr %0, align 8, !tbaa !73
  %33 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %32) #13
  %34 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %35 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %36 = load ptr, ptr %0, align 8, !tbaa !73
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !118
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !72 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !122
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
  br i1 %21, label %9, label %22, !llvm.loop !124

22:                                               ; preds = %18, %4
  %23 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %5, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %4

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %16, %15 ], [ null, %22 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSModelGroupC1ENS0_15COMPOSITOR_TYPEEPNS_11RefVectorOfINS_10XSParticleEEEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory17buildAllParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !72 {
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
define dso_local void @_ZN11xercesc_2_715XSObjectFactory28buildChoiceSequenceParticlesEPKNS_15ContentSpecNodeEPNS_11RefVectorOfINS_10XSParticleEEEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 !prof !72 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !131
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !133
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSParticleC1ENS0_9TERM_TYPEEPNS_7XSModelEPNS_8XSObjectEiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !134
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !136
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !137
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !138
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !139
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !138
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !138
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !140
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10XSParticleEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !134, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !136
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !138
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(56) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !136
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !141

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !139
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !138
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !136
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !139
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
  %16 = load i8, ptr %15, align 8, !tbaa !134, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(56) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !138
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !136
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !136
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !134, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !138
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(56) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !138
  %24 = load i32, ptr %2, align 4, !tbaa !136
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !142
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !136
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !139
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
  %15 = load i8, ptr %14, align 8, !tbaa !134, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(56) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !136
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
  %43 = load ptr, ptr %42, align 8, !tbaa !138
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !138
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !138
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !143

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !136
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !136
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !136
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !134, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(56) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !134, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !136
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !138
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(56) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !136
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !144

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !139
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !138
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory21createElementParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %8 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, ptr noundef %2, ptr noundef null) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !73
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %11) #13
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !73
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
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !136
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !136
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !136
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !136
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !138
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !145

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !139
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !138
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !138
  store i32 %12, ptr %6, align 8, !tbaa !137
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory22createWildcardParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7) #13
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %10 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !73
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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode14getElementDeclEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17SchemaElementDeclEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  %34 = load ptr, ptr %0, align 8, !tbaa !73
  %35 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %34) #13
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %2) #13
  %37 = load ptr, ptr %0, align 8, !tbaa !73
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
  %46 = load ptr, ptr %43, align 8, !tbaa !81
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  %50 = load ptr, ptr %43, align 8, !tbaa !81
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(72) %43) #13
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull %43, ptr noundef %49, ptr noundef %53) #13
  br label %54

54:                                               ; preds = %45, %40
  %55 = add nuw i32 %41, 1
  %56 = icmp eq i32 %55, %31
  br i1 %56, label %57, label %40, !llvm.loop !147

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
  %67 = load ptr, ptr %0, align 8, !tbaa !73
  %68 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %67) #13
  %69 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %70 unwind label %78

70:                                               ; preds = %65
  %71 = load ptr, ptr %0, align 8, !tbaa !73
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
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #13
  %6 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %1) #13
          to label %7 unwind label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %2, ptr noundef %8) #13
          to label %9 unwind label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %5) #13
  ret ptr %5

12:                                               ; preds = %7, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #14
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  %34 = load ptr, ptr %0, align 8, !tbaa !73
  %35 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %34) #13
  %36 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %37 unwind label %40

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !73
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
declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_722XSAttributeDeclaration8getScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !148
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration24getEnclosingCTDefinitionEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722XSAttributeDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #6 comdat align 2 !prof !154 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_17DatatypeValidatorEPNS_7XSModelEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  %15 = load ptr, ptr %0, align 8, !tbaa !73
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %15) #13
  %17 = load ptr, ptr %0, align 8, !tbaa !73
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
  br i1 %25, label %26, label %20, !llvm.loop !164

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
  %58 = load ptr, ptr %0, align 8, !tbaa !73
  %59 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %58) #13
  %60 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %61 unwind label %65

61:                                               ; preds = %52
  %62 = load ptr, ptr %0, align 8, !tbaa !73
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
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SchemaAttDef12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !165
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory14putObjectInMapEPvPNS_8XSObjectE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !167
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !172 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !180
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !181
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
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel17getTypeDefinitionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition11getItemTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !183
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr %6, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition16getPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !183
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr %6, ptr null
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSSimpleTypeDefinitionC1EPNS_17DatatypeValidatorENS0_7VARIETYEPNS_16XSTypeDefinitionEPS0_PNS_11RefVectorOfIS0_EEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722XSSimpleTypeDefinition16setPrimitiveTypeEPS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory13processFacetsEPNS_17DatatypeValidatorEPNS_7XSModelEPNS_22XSSimpleTypeDefinitionE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %5 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  %7 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !73
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %9) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 4, i1 noundef zeroext false, ptr noundef %11) #13
          to label %12 unwind label %18

12:                                               ; preds = %4
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_715XSObjectFactory24isMultiValueFacetDefinedEPNS_17DatatypeValidatorE(ptr nonnull align 8 poison, ptr noundef nonnull %1) #13
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !73
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %15) #13
  %17 = load ptr, ptr %0, align 8, !tbaa !73
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
  %27 = load ptr, ptr %1, align 8, !tbaa !81
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %31 = and i32 %8, 16
  %32 = shl nuw nsw i32 %31, 7
  %33 = lshr exact i32 %31, 4
  %34 = trunc i32 %33 to i8
  %35 = load ptr, ptr %0, align 8, !tbaa !73
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %35) #13
  %37 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %30) #13
          to label %38 unwind label %44

38:                                               ; preds = %26
  %39 = icmp ne i32 %31, 0
  %40 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %36, i32 noundef 2048, ptr noundef %30, i1 noundef zeroext %39, ptr noundef %37, ptr noundef nonnull %2, ptr noundef %40) #13
          to label %41 unwind label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !78
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
  %54 = load ptr, ptr %0, align 8, !tbaa !73
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
  br i1 %117, label %118, label %189, !llvm.loop !189

118:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  %119 = call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %120 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %119, ptr noundef nonnull @_ZN11xercesc_2_7L14regexSeparatorE, ptr noundef %120) #13
          to label %121 unwind label %137

121:                                              ; preds = %118
  %122 = load ptr, ptr %0, align 8, !tbaa !73
  %123 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %122) #13
          to label %124 unwind label %141

124:                                              ; preds = %121
  %125 = invoke noundef i32 @_ZN11xercesc_2_718XMLStringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
          to label %126 unwind label %143

126:                                              ; preds = %124
  %127 = load ptr, ptr %0, align 8, !tbaa !73
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
  %134 = load ptr, ptr %0, align 8, !tbaa !73
  %135 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %132, ptr noundef %134) #13
          to label %136 unwind label %139

136:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %123, ptr noundef %135) #13
          to label %128 unwind label %139, !llvm.loop !190

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
  %150 = load ptr, ptr %0, align 8, !tbaa !73
  %151 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %150) #13
          to label %152 unwind label %161

152:                                              ; preds = %145
  %153 = and i8 %149, 1
  %154 = icmp ne i8 %153, 0
  %155 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %151, i32 noundef 8, ptr noundef nonnull %123, i1 noundef zeroext %154, ptr noundef %78, ptr noundef nonnull %2, ptr noundef %155) #13
          to label %156 unwind label %163

156:                                              ; preds = %152
  %157 = load ptr, ptr %57, align 8, !tbaa !78
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
  %172 = load ptr, ptr %0, align 8, !tbaa !73
  %173 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %172) #13
          to label %174 unwind label %185

174:                                              ; preds = %169
  %175 = call noundef ptr @_ZN11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %75) #13
  %176 = icmp ne i8 %171, 0
  %177 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %173, i32 noundef %170, ptr noundef %175, i1 noundef zeroext %176, ptr noundef %78, ptr noundef nonnull %2, ptr noundef %177) #13
          to label %178 unwind label %187

178:                                              ; preds = %174
  %179 = load ptr, ptr %57, align 8, !tbaa !78
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
  %208 = load ptr, ptr %0, align 8, !tbaa !73
  %209 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %208) #13
  %210 = call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %211 = invoke noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef signext %210) #13
          to label %212 unwind label %218

212:                                              ; preds = %207
  %213 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %209, i32 noundef 16, ptr noundef %211, i1 noundef zeroext false, ptr noundef null, ptr noundef %2, ptr noundef %213) #13
          to label %214 unwind label %218

214:                                              ; preds = %212
  %215 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !78
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
  %222 = load ptr, ptr %3, align 8, !tbaa !81
  %223 = getelementptr inbounds ptr, ptr %222, i64 6
  %224 = load ptr, ptr %223, align 8
  %225 = call noundef ptr %224(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  %226 = icmp eq ptr %225, null
  br i1 %226, label %293, label %227

227:                                              ; preds = %220
  %228 = load ptr, ptr %3, align 8, !tbaa !81
  %229 = getelementptr inbounds ptr, ptr %228, i64 6
  %230 = load ptr, ptr %229, align 8
  %231 = call noundef ptr %230(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  %232 = call noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %231) #13
  %233 = icmp eq i32 %232, 16
  br i1 %233, label %234, label %293

234:                                              ; preds = %227
  %235 = load ptr, ptr %3, align 8, !tbaa !81
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
  br i1 %267, label %247, label %242, !llvm.loop !191

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
  br i1 %292, label %272, label %293, !llvm.loop !192

293:                                              ; preds = %287, %268, %242, %227, %220
  %294 = phi i32 [ %203, %227 ], [ %203, %220 ], [ %243, %242 ], [ %243, %268 ], [ %288, %287 ]
  %295 = phi i32 [ %221, %227 ], [ %221, %220 ], [ %244, %242 ], [ %244, %268 ], [ %289, %287 ]
  call void @_ZN11xercesc_2_722XSSimpleTypeDefinition12setFacetInfoEiiPNS_11RefVectorOfINS_7XSFacetEEEPNS1_INS_17XSMultiValueFacetEEEPNS_16RefArrayVectorOfItEE(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %295, i32 noundef %294, ptr noundef nonnull %10, ptr noundef %23, ptr noundef %202) #13
  ret void

296:                                              ; preds = %218, %195, %44, %20, %18
  %297 = phi { ptr, i32 } [ %196, %195 ], [ %219, %218 ], [ %45, %44 ], [ %21, %20 ], [ %19, %18 ]
  resume { ptr, i32 } %297
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !193
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !180
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !194
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !178
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !195
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !178
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !178
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !196
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !193, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !180
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !178
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(128) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !180
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !197

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !180
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !195
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
  %16 = load i8, ptr %15, align 8, !tbaa !193, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(128) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !180
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !180
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !193, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !178
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(128) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !178
  %24 = load i32, ptr %2, align 4, !tbaa !180
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !198
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !180
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !195
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
  %15 = load i8, ptr %14, align 8, !tbaa !193, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(128) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !180
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
  %43 = load ptr, ptr %42, align 8, !tbaa !178
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !178
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !199

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !180
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !180
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !193, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(128) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !193, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !180
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !178
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(128) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !180
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !200

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !180
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !194
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !180
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !178
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !201

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !195
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !178
  store i32 %12, ptr %6, align 8, !tbaa !194
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720XSElementDeclaration24getEnclosingCTDefinitionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XSElementDeclaration24setEnclosingCTDefinitionEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getSubstitutionGroupElemEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #6 comdat align 2 !prof !209 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #6 comdat align 2 !prof !211 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #5 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !214
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !215

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEC2EjjPNS_13XMLStringPoolEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %5, ptr %0, align 8, !tbaa !217
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !219
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1, i1 noundef zeroext false, ptr noundef %5) #13
          to label %9 unwind label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  store ptr %8, ptr %10, align 8, !tbaa !220
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %2, i1 noundef zeroext %4, ptr noundef %5) #13
          to label %12 unwind label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !221
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
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_18IdentityConstraintEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !73
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !73
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
  %20 = load ptr, ptr %0, align 8, !tbaa !73
  %21 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %20) #13
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %21) #13
  %22 = add nuw i32 %16, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %24, label %15, !llvm.loop !222

24:                                               ; preds = %15, %6
  %25 = phi ptr [ null, %6 ], [ %11, %15 ]
  %26 = load ptr, ptr %1, align 8, !tbaa !81
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
  %36 = load ptr, ptr %0, align 8, !tbaa !73
  %37 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %36) #13
  %38 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %39 unwind label %42

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !73
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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !223 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !224

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEE10addElementEPS1_PKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %1) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !219
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %3) #13
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2, i32 noundef %14, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getPSVIScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !225
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15ComplexTypeInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  %27 = load ptr, ptr %26, align 8, !tbaa !81
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(48) %26) #13
  %31 = load ptr, ptr %0, align 8, !tbaa !73
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %31) #13
  %33 = load ptr, ptr %0, align 8, !tbaa !73
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
  %63 = load ptr, ptr %0, align 8, !tbaa !73
  %64 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 112, ptr noundef %63) #13
  %65 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1) #13
          to label %66 unwind label %70

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 8, !tbaa !73
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
  %81 = load ptr, ptr %75, align 8, !tbaa !81
  %82 = getelementptr inbounds ptr, ptr %81, i64 14
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef nonnull align 8 dereferenceable(56) ptr %83(ptr noundef nonnull align 8 dereferenceable(48) %75, i32 noundef %80) #13
  %85 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %84) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = tail call noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %84) #13
  %89 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_12SchemaAttDefEPNS_7XSModelEPNS_23XSComplexTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %88, ptr noundef nonnull %2, ptr noundef null) #13
  %90 = load ptr, ptr %78, align 8, !tbaa !79
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
  br i1 %101, label %102, label %79, !llvm.loop !226

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
  br i1 %118, label %121, label %105, !llvm.loop !227

119:                                              ; preds = %70, %34
  %120 = phi { ptr, i32 } [ %71, %70 ], [ %35, %34 ]
  resume { ptr, i32 } %120

121:                                              ; preds = %116, %102, %3
  %122 = phi ptr [ %4, %3 ], [ %64, %102 ], [ %64, %116 ]
  ret ptr %122
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720XSElementDeclaration17setTypeDefinitionEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !230
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !232
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !234
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !235
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !236
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !237
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !238
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !232
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !238
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #14
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !239
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !241
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !242
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !243
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !244
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !243
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !243
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !245
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !239, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !243
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !241
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !246

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !244
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !243
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !241
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !244
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !239, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !243
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !243
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !241
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !239, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !243
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !243
  %24 = load i32, ptr %2, align 4, !tbaa !241
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !247
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !244
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !239, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !243
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #14
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !243
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !243
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !243
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !248

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !241
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !241
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !239, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !243
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !239, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !243
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !241
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !249

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !244
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !243
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !232
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
  %11 = load ptr, ptr %0, align 8, !tbaa !232
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !236
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !81
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !235
  %21 = load i32, ptr %12, align 8, !tbaa !236
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !235
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !99
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !250
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !230
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !251

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !252
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.7", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !253
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !241
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !236
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !237
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
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !234, !range !102, !noundef !103
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !254
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !81
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(72) %21) #14
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !254
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !256
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !257
  br label %48

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !232
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !235
  %38 = load i32, ptr %5, align 4, !tbaa !258
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %35, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %41) #13
  %42 = load ptr, ptr %36, align 8, !tbaa !235
  %43 = load i32, ptr %5, align 4, !tbaa !258
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %35, ptr %45, align 8, !tbaa !99
  %46 = load i32, ptr %9, align 4, !tbaa !237
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !237
  br label %48

48:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !242
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !241
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !243
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !259

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !244
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.9", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !243
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !243
  store i32 %12, ptr %6, align 8, !tbaa !242
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !236
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !232
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !81
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !232
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !236
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !235
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %23, ptr %21, align 8, !tbaa !235
  store i32 %6, ptr %3, align 8, !tbaa !236
  %24 = load ptr, ptr %0, align 8, !tbaa !232
  %25 = load ptr, ptr %24, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #13
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !235
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !260
  %39 = load ptr, ptr %19, align 8, !tbaa !238
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !256
  %42 = load ptr, ptr %0, align 8, !tbaa !232
  %43 = load ptr, ptr %39, align 8, !tbaa !81
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #13
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  store ptr %49, ptr %37, align 8, !tbaa !260
  store ptr %36, ptr %48, align 8, !tbaa !99
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !261

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !236
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !262

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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !238
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !236
  %9 = load ptr, ptr %0, align 8, !tbaa !232
  %10 = load ptr, ptr %6, align 8, !tbaa !81
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #13
  store i32 %12, ptr %3, align 4, !tbaa !258
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !257
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !238
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !256
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #13
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !263

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !72 {
  store ptr %3, ptr %0, align 8, !tbaa !254
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !260
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !256
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !266
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  store ptr null, ptr %0, align 8, !tbaa !264
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !264
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !81
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !264
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !266
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo14getAttWildCardEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !267 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory16createXSWildcardEPNS_12SchemaAttDefEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %13) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %1, ptr noundef %12, ptr noundef %2, ptr noundef %15) #13
          to label %16 unwind label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull %14) #13
  ret ptr %14

19:                                               ; preds = %11
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #14
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !271
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !273
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !275
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !276 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !277
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getBaseDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !279 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723XSComplexTypeDefinitionC1EPNS_15ComplexTypeInfoEPNS_10XSWildcardEPNS_22XSSimpleTypeDefinitionEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_16XSTypeDefinitionEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(106), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSComplexTypeDefinition11setBaseTypeEPNS_16XSTypeDefinitionE(ptr noundef nonnull align 8 dereferenceable(106) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712SchemaAttDef14getBaseAttDeclEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !91
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
  %18 = load i8, ptr %17, align 8, !tbaa !87, !range !102, !noundef !103
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !114
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !81
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(36) %21) #14
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !114
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !283
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !83
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = load i32, ptr %4, align 4, !tbaa !258
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #13
  %41 = load ptr, ptr %35, align 8, !tbaa !88
  %42 = load i32, ptr %4, align 4, !tbaa !258
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !99
  %45 = load i32, ptr %9, align 8, !tbaa !91
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !91
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !285
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory20createXSAttributeUseEPNS_22XSAttributeDeclarationEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_714XSAttributeUseC1EPNS_22XSAttributeDeclarationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef %2, ptr noundef %6) #13
          to label %7 unwind label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %5) #13
  ret ptr %5

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #14
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !288
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XSObjectFactory13processAttUseEPNS_12SchemaAttDefEPNS_14XSAttributeUseE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !72 {
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
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !289
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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !289
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
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #6 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !290
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !291 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !292
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf.12", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !294
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !296
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !288
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !297
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !286
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !298
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !286
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !286
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !299
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !296, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !286
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !288
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !300

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !298
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !286
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !288
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !298
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !296, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !286
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(64) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !286
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !288
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !288
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !296, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !286
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(64) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !286
  %24 = load i32, ptr %2, align 4, !tbaa !288
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !301
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !288
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !298
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !296, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !286
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !288
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !286
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !286
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !286
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !302

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !288
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !288
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !296, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !286
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !296, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !286
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !288
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !303

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !298
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !286
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.13", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !81
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !83
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !89
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !88
  store i32 %5, ptr %3, align 8, !tbaa !89
  %23 = load ptr, ptr %0, align 8, !tbaa !83
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !88
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !99
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  %38 = load ptr, ptr %18, align 8, !tbaa !92
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !283
  %41 = load ptr, ptr %0, align 8, !tbaa !83
  %42 = load ptr, ptr %38, align 8, !tbaa !81
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !99
  store ptr %48, ptr %36, align 8, !tbaa !112
  store ptr %35, ptr %47, align 8, !tbaa !99
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !304

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !89
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !305

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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8XSObjectEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = load ptr, ptr %0, align 8, !tbaa !83
  %9 = load ptr, ptr %5, align 8, !tbaa !81
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !258
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !92
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !283
  %23 = load ptr, ptr %20, align 8, !tbaa !81
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !306

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !72 {
  store ptr %2, ptr %0, align 8, !tbaa !114
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !112
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !307
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.13", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = load ptr, ptr %0, align 8, !tbaa !307
  store ptr null, ptr %0, align 8, !tbaa !307
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !307
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.13", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !309
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !81
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !307
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.13", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !288
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !297
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !298
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !286
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !310

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !298
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.11", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !286
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !286
  store i32 %12, ptr %6, align 8, !tbaa !297
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !311
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !311
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !313
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.15", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !314
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #5 comdat align 2 !prof !315 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !318

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !319 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !320 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !321

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !81
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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !322 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !316
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !323

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_78IC_Field8getXPathEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !324
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_711XercesXPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesXPath", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !328 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !331
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79IC_KeyRef6getKeyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !332 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !333
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XSIDCDefinitionC1EPNS_18IdentityConstraintEPS0_PNS_12XSAnnotationEPNS_16RefArrayVectorOfItEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !315 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !335
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !319 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !337
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !331
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !338
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !329
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !339
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !329
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !340

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !329
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !341, !llvm.loop !342
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !337, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !343

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !331
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !344

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !339
  %15 = load ptr, ptr %11, align 8, !tbaa !329
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = load ptr, ptr %14, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
          to label %21 unwind label %35

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !331
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !345, !llvm.loop !346

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !339
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !329
  %31 = load ptr, ptr %28, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !347 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !331
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !348

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !339
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !337, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !349

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !339
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !329
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = load ptr, ptr %22, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %27) #13
  br label %31

31:                                               ; preds = %18, %20
  %32 = phi i64 [ %19, %18 ], [ %25, %20 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !329
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !331
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  br label %10

9:                                                ; preds = %24, %1
  store i32 0, ptr %2, align 4, !tbaa !331
  ret void

10:                                               ; preds = %5, %24
  %11 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %5 ], [ %28, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !337, !range !102, !noundef !103
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !339
  %17 = load ptr, ptr %8, align 8, !tbaa !329
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = load ptr, ptr %16, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %19) #13
  %23 = load i32, ptr %2, align 4, !tbaa !331
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %26 = load ptr, ptr %8, align 8, !tbaa !329
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !99
  %28 = add nuw nsw i64 %12, 1
  %29 = zext i32 %25 to i64
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %10, label %9, !llvm.loop !350
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !331
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !339
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !337, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !339
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !329
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = load ptr, ptr %19, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24) #13
  %28 = load i32, ptr %3, align 4, !tbaa !331
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !329
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !329
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !329
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !351

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !331
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !331
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !337, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !339
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !329
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = load ptr, ptr %12, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17) #13
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !337, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !331
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !339
  %15 = load ptr, ptr %11, align 8, !tbaa !329
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = load ptr, ptr %14, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !331
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !352

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !339
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !329
  %30 = load ptr, ptr %27, align 8, !tbaa !81
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !319 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !331
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !339
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !337, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !329
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef nonnull %25) #16
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !329
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !331
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !331
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !337, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !329
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef nonnull %17) #16
  %20 = load ptr, ptr %7, align 8, !tbaa !329
  %21 = load i32, ptr %2, align 4, !tbaa !331
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !99
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !353
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !331
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !339
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !337, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !329
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %22) #16
  %25 = load i32, ptr %3, align 4, !tbaa !331
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !329
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !329
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !329
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !99
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !99
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !354

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !99
  store i32 %28, ptr %3, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !331
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !331
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !337, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %15) #16
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !337, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !331
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !329
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef nonnull %16) #16
  %19 = load i32, ptr %6, align 4, !tbaa !331
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !355

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !339
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !329
  %30 = load ptr, ptr %27, align 8, !tbaa !81
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !356 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !357

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !358
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !359

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !358
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !360, !llvm.loop !361

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !362 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !335
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !363

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.18", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !364
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
  %15 = load ptr, ptr %14, align 8, !tbaa !365
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !328 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !331
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !338
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !366

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !339
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !331
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !367

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !368

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !329
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !369, !llvm.loop !370

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !339
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.16", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !329
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !329
  store i32 %12, ptr %6, align 8, !tbaa !338
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory9addOrFindEPNS_15XMLNotationDeclEPNS_7XSModelE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %2, ptr noundef %1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7) #13
  %9 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef %1) #13
          to label %10 unwind label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !73
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
declare void @_ZN11xercesc_2_721XSNotationDeclarationC1EPNS_15XMLNotationDeclEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XSAttributeUseC1EPNS_22XSAttributeDeclarationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !95
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !95
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !97
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !371

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !98
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !97
  store i32 %12, ptr %6, align 8, !tbaa !96
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSWildcardC1EPNS_12SchemaAttDefEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XSWildcardC1EPKNS_15ContentSpecNodeEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory28createXSModelGroupDefinitionEPNS_15XercesGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = tail call noundef ptr @_ZN11xercesc_2_715XSObjectFactory24createModelGroupParticleEPKNS_15ContentSpecNodeEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4, ptr noundef %2) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !73
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %6) #13
  %8 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
          to label %9 unwind label %17

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %1, ptr noundef %5, ptr noundef %8, ptr noundef nonnull %2, ptr noundef %10) #13
          to label %11 unwind label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !78
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
  br i1 %29, label %16, label %19, !llvm.loop !372
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !373
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !375
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715XercesGroupInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !375
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !376
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XSObjectFactory26createXSAttGroupDefinitionEPNS_18XercesAttGroupInfoEPNS_7XSModelE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_718XercesAttGroupInfo14attributeCountEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %7) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !73
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
  br i1 %32, label %33, label %12, !llvm.loop !377

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
  %42 = load ptr, ptr %0, align 8, !tbaa !73
  %43 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %42) #13
  %44 = invoke noundef ptr @_ZN11xercesc_2_715XSObjectFactory22getAnnotationFromModelEPNS_7XSModelEPKv(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %1) #13
          to label %45 unwind label %50

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_726XSAttributeGroupDefinitionC1EPNS_18XercesAttGroupInfoEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_10XSWildcardEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %43, ptr noundef nonnull %1, ptr noundef %34, ptr noundef %41, ptr noundef %44, ptr noundef nonnull %2, ptr noundef %46) #13
          to label %47 unwind label %50

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XSObjectFactory", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !78
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
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718XercesAttGroupInfo14attributeCountEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !378
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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718XercesAttGroupInfo11attributeAtEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !378
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
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo19getCompleteWildCardEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !380
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_726XSAttributeGroupDefinitionC1EPNS_18XercesAttGroupInfoEPNS_11RefVectorOfINS_14XSAttributeUseEEEPNS_10XSWildcardEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !381
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !381
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.20", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !383
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
  %15 = load ptr, ptr %14, align 8, !tbaa !384
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel17getNamespaceItemsEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !386
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !386
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.22", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !388
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
  %15 = load ptr, ptr %14, align 8, !tbaa !389
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar13getAnnotationEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !394
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !396
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !398
  %8 = load ptr, ptr %0, align 8, !tbaa !399
  %9 = load ptr, ptr %5, align 8, !tbaa !81
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !258
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.23", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !400
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !396
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !401
  %23 = load ptr, ptr %20, align 8, !tbaa !81
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.24", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !99
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !402

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !403 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !404
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !405 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !406
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715XSObjectFactory24isMultiValueFacetDefinedEPNS_17DatatypeValidatorE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !72 {
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
  br i1 %15, label %16, label %4, !llvm.loop !407

16:                                               ; preds = %9, %4, %13, %2
  %17 = phi i1 [ false, %2 ], [ false, %13 ], [ true, %4 ], [ true, %9 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XSMultiValueFacetC1ENS_22XSSimpleTypeDefinition5FACETEPNS_16RefArrayVectorOfItEEbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !408
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !410
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !410
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !411 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !412
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !413 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !414
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !417
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !418
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !419
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !420
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20, !prof !421

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !420
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !422 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !423

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !418
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !419
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !424
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !426

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !427 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %5, label %13, label %6, !prof !428

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !420
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
  %15 = load ptr, ptr %14, align 8, !tbaa !417
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !429
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !427 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !434 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !435

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !358
  %8 = load i16, ptr %1, align 2, !tbaa !358
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !436

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !437

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !358
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !438

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !439

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !358
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !440

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !441

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !358
  %28 = load i16, ptr %26, align 2, !tbaa !358
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !442, !llvm.loop !443

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !444 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !445
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718XMLStringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !446
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !448
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
  %15 = load ptr, ptr %9, align 8, !tbaa !449
  %16 = getelementptr inbounds i16, ptr %15, i64 %12
  %17 = load i16, ptr %16, align 2, !tbaa !358
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
  %32 = load i32, ptr %2, align 4, !tbaa !446
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %11, label %35, !llvm.loop !450

35:                                               ; preds = %28, %5, %1
  %36 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %29, %28 ]
  ret i32 %36
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !427 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XSFacetC1ENS_22XSSimpleTypeDefinition5FACETEPKtbPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !452
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !454
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !99
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !454
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !413 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !414, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !426

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !419
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
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 !prof !455 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 4, !tbaa !456
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_716XSTypeDefinition15getTypeCategoryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSTypeDefinition", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !457
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition9getFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !458
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !454
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !454
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !459
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !452
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XSFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSFacet", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !460
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_77XSFacet7isFixedEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSFacet", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !463, !range !102, !noundef !103
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722XSSimpleTypeDefinition19getMultiValueFacetsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSSimpleTypeDefinition", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !464
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !410
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !410
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !465
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !408
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XSMultiValueFacet12getFacetKindEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSMultiValueFacet", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !466
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717XSMultiValueFacet7isFixedEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSMultiValueFacet", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !468, !range !102, !noundef !103
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_722XSSimpleTypeDefinition12setFacetInfoEiiPNS_11RefVectorOfINS_7XSFacetEEEPNS1_INS_17XSMultiValueFacetEEEPNS_16RefArrayVectorOfItEE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !469
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !454
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !470
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !452
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !459
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !452
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !452
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !471
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XSFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !469, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !454
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !452
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !454
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !472

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !459
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !452
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !454
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !459
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
  %16 = load i8, ptr %15, align 8, !tbaa !469, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !452
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(64) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !452
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !454
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !454
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !469, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !452
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(64) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !452
  %24 = load i32, ptr %2, align 4, !tbaa !454
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !473
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !454
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !459
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
  %15 = load i8, ptr %14, align 8, !tbaa !469, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !452
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !454
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
  %43 = load ptr, ptr %42, align 8, !tbaa !452
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !452
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !452
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !474

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !454
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !454
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !454
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !469, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !452
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !469, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !454
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !452
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !454
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !475

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !459
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !452
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 !prof !72 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !476
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !410
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !477
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !408
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !465
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !81
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !408
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !408
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !99
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !478
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !476, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !410
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !408
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !410
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !479

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !465
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !408
  %33 = load ptr, ptr %30, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !410
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !465
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !476, !range !102, !noundef !103
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !408
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(64) %25) #14
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !408
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !410
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !410
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !476, !range !102, !noundef !103
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !408
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(64) %17) #14
  %23 = load ptr, ptr %7, align 8, !tbaa !408
  %24 = load i32, ptr %2, align 4, !tbaa !410
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !99
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !480
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !410
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !465
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !476, !range !102, !noundef !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !408
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !81
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(64) %22) #14
  %28 = load i32, ptr %3, align 4, !tbaa !410
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !408
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !408
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !408
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !99
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !481

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !99
  store i32 %31, ptr %3, align 4, !tbaa !410
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !410
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !410
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !476, !range !102, !noundef !103
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !408
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !476, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !410
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !408
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !81
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(64) %16) #14
  %22 = load i32, ptr %6, align 4, !tbaa !410
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !482

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !465
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !408
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !410
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !477
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !465
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !410
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !408
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !483

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !465
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.28", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !408
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !408
  store i32 %12, ptr %6, align 8, !tbaa !477
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !413 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !484 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !485

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !486
  store ptr %7, ptr %2, align 8, !tbaa !417
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !487

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !418
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !418
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !419
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !424
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !488

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !489
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !490

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !418
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !491, !llvm.loop !492

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !417
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !418
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !417
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !413 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !108
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !108
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer11isDelimeterEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringTokenizer", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !493
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %4, i16 noundef zeroext %1) #13
  %6 = icmp ne i32 %5, -1
  ret i1 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !454
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !470
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !459
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !454
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !99
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !452
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !99
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !494

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !459
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.26", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !452
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !452
  store i32 %12, ptr %6, align 8, !tbaa !470
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !413 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !413 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !495
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !489
  %5 = load ptr, ptr %2, align 8, !tbaa !81
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !489
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !496
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !81
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !413 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !497

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !424
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
  %15 = load ptr, ptr %8, align 8, !tbaa !489
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !500

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.29", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !486
  %23 = load i8, ptr %9, align 8, !tbaa !501, !range !102, !noundef !103
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !502

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !429
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !81
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !495
  %34 = load ptr, ptr %33, align 8, !tbaa !81
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !503, !llvm.loop !504

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !489
  %40 = load i32, ptr %4, align 8, !tbaa !424
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !99
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !505, !llvm.loop !506

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !413 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.30", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !499
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XSAttributeUse3setEbNS_11XSConstants16VALUE_CONSTRAINTEPKt(ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 !prof !507 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !508
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!71}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!36 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv, i64 3}
!37 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 31}
!38 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!39 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 496216}
!41 = !{ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv, i64 634411}
!42 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, i64 188746}
!43 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!44 = !{ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, i64 317185}
!45 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!46 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 188746}
!47 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, i64 188746}
!48 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_throw, i64 1}
!51 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_free_exception, i64 1}
!52 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!53 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!54 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_throw, i64 1}
!55 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!56 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev, i64 34}
!57 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 34}
!58 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!59 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!60 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 33}
!61 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, i64 1}
!62 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @__cxa_allocate_exception, i64 1}
!63 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 34}
!65 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, i64 1}
!66 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!67 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, i64 34}
!68 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, i64 34}
!69 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!70 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv, i64 34}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSN11xercesc_2_715XSObjectFactoryE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"any pointer", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C++ TBAA"}
!78 = !{!74, !75, i64 16}
!79 = !{!74, !75, i64 8}
!80 = !{!"function_entry_count", i64 5836268}
!81 = !{!82, !82, i64 0}
!82 = !{!"vtable pointer", !77, i64 0}
!83 = !{!84, !75, i64 0}
!84 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_8XSObjectEEE", !75, i64 0, !85, i64 8, !75, i64 16, !86, i64 24, !86, i64 28, !86, i64 32, !75, i64 40}
!85 = !{!"bool", !76, i64 0}
!86 = !{!"int", !76, i64 0}
!87 = !{!84, !85, i64 8}
!88 = !{!84, !75, i64 16}
!89 = !{!84, !86, i64 24}
!90 = !{!84, !86, i64 28}
!91 = !{!84, !86, i64 32}
!92 = !{!84, !75, i64 40}
!93 = !{!94, !85, i64 8}
!94 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8XSObjectEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!95 = !{!94, !86, i64 12}
!96 = !{!94, !86, i64 16}
!97 = !{!94, !75, i64 24}
!98 = !{!94, !75, i64 32}
!99 = !{!75, !75, i64 0}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !101}
!106 = distinct !{!106, !101}
!107 = distinct !{!107, !101}
!108 = !{!109, !75, i64 40}
!109 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !110, i64 8, !75, i64 16, !86, i64 24, !75, i64 32, !75, i64 40}
!110 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !76, i64 0}
!111 = distinct !{!111, !101}
!112 = !{!113, !75, i64 8}
!113 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_8XSObjectEEE", !75, i64 0, !75, i64 8, !75, i64 16}
!114 = !{!113, !75, i64 0}
!115 = distinct !{!115, !101}
!116 = distinct !{!116, !101}
!117 = !{!"function_entry_count", i64 353}
!118 = !{!119, !121, i64 48}
!119 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !120, i64 0, !75, i64 8, !75, i64 16, !75, i64 24, !75, i64 32, !75, i64 40, !121, i64 48, !85, i64 52, !85, i64 53, !86, i64 56, !86, i64 60}
!120 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!121 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !76, i64 0}
!122 = !{!123, !75, i64 8}
!123 = !{!"_ZTSN11xercesc_2_715XSNamespaceItemE", !75, i64 0, !75, i64 8, !75, i64 16, !76, i64 24, !75, i64 136, !76, i64 144, !75, i64 256}
!124 = distinct !{!124, !101}
!125 = !{!126, !75, i64 288}
!126 = !{!"_ZTSN11xercesc_2_77XSModelE", !75, i64 0, !75, i64 8, !75, i64 16, !76, i64 24, !76, i64 136, !75, i64 248, !75, i64 256, !75, i64 264, !75, i64 272, !75, i64 280, !75, i64 288, !85, i64 296, !85, i64 297}
!127 = !{!"function_entry_count", i64 157}
!128 = !{!119, !75, i64 32}
!129 = !{!119, !75, i64 40}
!130 = !{!"function_entry_count", i64 251}
!131 = !{!119, !86, i64 56}
!132 = !{!"function_entry_count", i64 254}
!133 = !{!119, !86, i64 60}
!134 = !{!135, !85, i64 8}
!135 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10XSParticleEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!136 = !{!135, !86, i64 12}
!137 = !{!135, !86, i64 16}
!138 = !{!135, !75, i64 24}
!139 = !{!135, !75, i64 32}
!140 = distinct !{!140, !101}
!141 = distinct !{!141, !101}
!142 = distinct !{!142, !101}
!143 = distinct !{!143, !101}
!144 = distinct !{!144, !101}
!145 = distinct !{!145, !101}
!146 = !{!119, !75, i64 24}
!147 = distinct !{!147, !101}
!148 = !{!149, !152, i64 64}
!149 = !{!"_ZTSN11xercesc_2_722XSAttributeDeclarationE", !150, i64 0, !75, i64 40, !75, i64 48, !75, i64 56, !152, i64 64, !75, i64 72}
!150 = !{!"_ZTSN11xercesc_2_78XSObjectE", !151, i64 8, !75, i64 16, !75, i64 24, !86, i64 32}
!151 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !76, i64 0}
!152 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !76, i64 0}
!153 = !{!149, !75, i64 72}
!154 = !{!"function_entry_count", i64 550665}
!155 = !{!156, !75, i64 80}
!156 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !157, i64 0, !86, i64 56, !161, i64 60, !162, i64 64, !163, i64 68, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112}
!157 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !120, i64 0, !158, i64 8, !159, i64 12, !160, i64 16, !85, i64 20, !85, i64 21, !86, i64 24, !75, i64 32, !75, i64 40, !75, i64 48}
!158 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !76, i64 0}
!159 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !76, i64 0}
!160 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !76, i64 0}
!161 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !76, i64 0}
!162 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !76, i64 0}
!163 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !76, i64 0}
!164 = distinct !{!164, !101}
!165 = !{!156, !163, i64 68}
!166 = !{!"function_entry_count", i64 874884}
!167 = !{!168, !170, i64 28}
!168 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !120, i64 0, !85, i64 8, !85, i64 9, !85, i64 10, !85, i64 11, !169, i64 12, !86, i64 16, !86, i64 20, !86, i64 24, !170, i64 28, !171, i64 32, !75, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96}
!169 = !{!"short", !76, i64 0}
!170 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !76, i64 0}
!171 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !76, i64 0}
!172 = !{!"function_entry_count", i64 1580484}
!173 = !{!168, !75, i64 40}
!174 = !{!175, !75, i64 120}
!175 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !168, i64 0, !85, i64 104, !85, i64 105, !75, i64 112, !75, i64 120, !75, i64 128}
!176 = !{!177, !86, i64 12}
!177 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!178 = !{!179, !75, i64 24}
!179 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_22XSSimpleTypeDefinitionEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!180 = !{!179, !86, i64 12}
!181 = !{!177, !75, i64 32}
!182 = !{!177, !75, i64 24}
!183 = !{!184, !187, i64 64}
!184 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinitionE", !185, i64 0, !86, i64 56, !86, i64 60, !187, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112, !75, i64 120}
!185 = !{!"_ZTSN11xercesc_2_716XSTypeDefinitionE", !150, i64 0, !186, i64 36, !169, i64 40, !75, i64 48}
!186 = !{!"_ZTSN11xercesc_2_716XSTypeDefinition13TYPE_CATEGORYE", !76, i64 0}
!187 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition7VARIETYE", !76, i64 0}
!188 = !{!184, !75, i64 104}
!189 = distinct !{!189, !101}
!190 = distinct !{!190, !101}
!191 = distinct !{!191, !101}
!192 = distinct !{!192, !101}
!193 = !{!179, !85, i64 8}
!194 = !{!179, !86, i64 16}
!195 = !{!179, !75, i64 32}
!196 = distinct !{!196, !101}
!197 = distinct !{!197, !101}
!198 = distinct !{!198, !101}
!199 = distinct !{!199, !101}
!200 = distinct !{!200, !101}
!201 = distinct !{!201, !101}
!202 = !{!203, !75, i64 64}
!203 = !{!"_ZTSN11xercesc_2_720XSElementDeclarationE", !150, i64 0, !169, i64 36, !169, i64 38, !152, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !75, i64 72, !75, i64 80, !75, i64 88}
!204 = !{!205, !75, i64 128}
!205 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !206, i64 0, !208, i64 36, !163, i64 40, !161, i64 44, !162, i64 48, !86, i64 52, !86, i64 56, !86, i64 60, !86, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112, !75, i64 120, !75, i64 128, !75, i64 136, !85, i64 144, !85, i64 145, !85, i64 146}
!206 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !120, i64 0, !75, i64 8, !75, i64 16, !207, i64 24, !86, i64 28, !85, i64 32}
!207 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !76, i64 0}
!208 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !76, i64 0}
!209 = !{!"function_entry_count", i64 832911}
!210 = !{!205, !75, i64 80}
!211 = !{!"function_entry_count", i64 495341}
!212 = !{!205, !75, i64 136}
!213 = !{!"function_entry_count", i64 1665822}
!214 = !{!205, !75, i64 112}
!215 = !{!"branch_weights", i32 1665821, i32 3}
!216 = !{!126, !75, i64 248}
!217 = !{!218, !75, i64 0}
!218 = !{!"_ZTSN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEE", !75, i64 0, !75, i64 8, !75, i64 16, !75, i64 24}
!219 = !{!218, !75, i64 8}
!220 = !{!218, !75, i64 16}
!221 = !{!218, !75, i64 24}
!222 = distinct !{!222, !101}
!223 = !{!"function_entry_count", i64 32}
!224 = !{!"branch_weights", i32 1, i32 33}
!225 = !{!205, !163, i64 40}
!226 = distinct !{!226, !101}
!227 = distinct !{!227, !101}
!228 = !{!203, !75, i64 56}
!229 = !{!"function_entry_count", i64 2}
!230 = !{!231, !86, i64 12}
!231 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!232 = !{!233, !75, i64 0}
!233 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEE", !75, i64 0, !85, i64 8, !75, i64 16, !86, i64 24, !86, i64 28, !75, i64 32}
!234 = !{!233, !85, i64 8}
!235 = !{!233, !75, i64 16}
!236 = !{!233, !86, i64 24}
!237 = !{!233, !86, i64 28}
!238 = !{!233, !75, i64 32}
!239 = !{!240, !85, i64 8}
!240 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSIDCDefinitionEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!241 = !{!240, !86, i64 12}
!242 = !{!240, !86, i64 16}
!243 = !{!240, !75, i64 24}
!244 = !{!240, !75, i64 32}
!245 = distinct !{!245, !101}
!246 = distinct !{!246, !101}
!247 = distinct !{!247, !101}
!248 = distinct !{!248, !101}
!249 = distinct !{!249, !101}
!250 = distinct !{!250, !101}
!251 = !{!"branch_weights", i32 33, i32 1}
!252 = !{!231, !75, i64 32}
!253 = !{!231, !75, i64 24}
!254 = !{!255, !75, i64 0}
!255 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEE", !75, i64 0, !75, i64 8, !75, i64 16, !86, i64 24}
!256 = !{!255, !75, i64 16}
!257 = !{!255, !86, i64 24}
!258 = !{!86, !86, i64 0}
!259 = distinct !{!259, !101}
!260 = !{!255, !75, i64 8}
!261 = distinct !{!261, !101}
!262 = distinct !{!262, !101}
!263 = distinct !{!263, !101}
!264 = !{!265, !75, i64 0}
!265 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEEEE", !75, i64 0, !75, i64 8}
!266 = !{!265, !75, i64 8}
!267 = !{!"function_entry_count", i64 191162}
!268 = !{!269, !75, i64 104}
!269 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !120, i64 0, !85, i64 8, !85, i64 9, !85, i64 10, !85, i64 11, !85, i64 12, !86, i64 16, !86, i64 20, !86, i64 24, !86, i64 28, !86, i64 32, !86, i64 36, !86, i64 40, !86, i64 44, !75, i64 48, !75, i64 56, !75, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112, !75, i64 120, !75, i64 128, !75, i64 136, !75, i64 144, !75, i64 152, !75, i64 160, !75, i64 168}
!270 = !{!"function_entry_count", i64 3338153}
!271 = !{!269, !86, i64 32}
!272 = !{!"function_entry_count", i64 496205}
!273 = !{!269, !75, i64 80}
!274 = !{!"function_entry_count", i64 496216}
!275 = !{!269, !75, i64 128}
!276 = !{!"function_entry_count", i64 41}
!277 = !{!269, !75, i64 88}
!278 = !{!269, !75, i64 72}
!279 = !{!"function_entry_count", i64 29}
!280 = !{!269, !75, i64 96}
!281 = !{!185, !75, i64 48}
!282 = !{!156, !75, i64 112}
!283 = !{!113, !75, i64 16}
!284 = !{!"function_entry_count", i64 401820}
!285 = !{!157, !158, i64 8}
!286 = !{!287, !75, i64 24}
!287 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XSAttributeUseEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!288 = !{!287, !86, i64 12}
!289 = !{!269, !75, i64 120}
!290 = !{!205, !86, i64 52}
!291 = !{!"function_entry_count", i64 496241}
!292 = !{!269, !86, i64 28}
!293 = !{!"function_entry_count", i64 496246}
!294 = !{!295, !86, i64 28}
!295 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !75, i64 0, !85, i64 8, !75, i64 16, !86, i64 24, !86, i64 28, !75, i64 32}
!296 = !{!287, !85, i64 8}
!297 = !{!287, !86, i64 16}
!298 = !{!287, !75, i64 32}
!299 = distinct !{!299, !101}
!300 = distinct !{!300, !101}
!301 = distinct !{!301, !101}
!302 = distinct !{!302, !101}
!303 = distinct !{!303, !101}
!304 = distinct !{!304, !101}
!305 = distinct !{!305, !101}
!306 = distinct !{!306, !101}
!307 = !{!308, !75, i64 0}
!308 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8XSObjectEEEEE", !75, i64 0, !75, i64 8}
!309 = !{!308, !75, i64 8}
!310 = distinct !{!310, !101}
!311 = !{!312, !86, i64 12}
!312 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!313 = !{!312, !75, i64 32}
!314 = !{!312, !75, i64 24}
!315 = !{!"function_entry_count", i64 634412}
!316 = !{!317, !75, i64 32}
!317 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !120, i64 0, !75, i64 8, !75, i64 16, !75, i64 24, !75, i64 32, !75, i64 40, !86, i64 48}
!318 = !{!"branch_weights", i32 1, i32 634413}
!319 = !{!"function_entry_count", i64 188746}
!320 = !{!"function_entry_count", i64 558789}
!321 = !{!"branch_weights", i32 158605, i32 400186}
!322 = !{!"function_entry_count", i64 317186}
!323 = !{!"branch_weights", i32 1, i32 317187}
!324 = !{!325, !75, i64 8}
!325 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !120, i64 0, !75, i64 8, !75, i64 16}
!326 = !{!327, !75, i64 16}
!327 = !{!"_ZTSN11xercesc_2_711XercesXPathE", !120, i64 0, !86, i64 8, !75, i64 16, !75, i64 24, !75, i64 32}
!328 = !{!"function_entry_count", i64 188992}
!329 = !{!330, !75, i64 24}
!330 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!331 = !{!330, !86, i64 12}
!332 = !{!"function_entry_count", i64 12}
!333 = !{!334, !75, i64 56}
!334 = !{!"_ZTSN11xercesc_2_79IC_KeyRefE", !317, i64 0, !75, i64 56}
!335 = !{!336, !86, i64 12}
!336 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!337 = !{!330, !85, i64 8}
!338 = !{!330, !86, i64 16}
!339 = !{!330, !75, i64 32}
!340 = !{!"branch_weights", i32 1, i32 188746}
!341 = !{!"branch_weights", i32 188746, i32 566295}
!342 = distinct !{!342, !101}
!343 = !{!"branch_weights", i32 7, i32 188741}
!344 = !{!"branch_weights", i32 1, i32 188740}
!345 = !{!"branch_weights", i32 253, i32 188740}
!346 = distinct !{!346, !101}
!347 = !{!"function_entry_count", i64 317171}
!348 = !{!"branch_weights", i32 317172, i32 1}
!349 = !{!"branch_weights", i32 1, i32 317172}
!350 = distinct !{!350, !101}
!351 = distinct !{!351, !101}
!352 = distinct !{!352, !101}
!353 = distinct !{!353, !101}
!354 = distinct !{!354, !101}
!355 = distinct !{!355, !101}
!356 = !{!"function_entry_count", i64 2453164456}
!357 = !{!"branch_weights", i32 1, i32 -1841802839}
!358 = !{!169, !169, i64 0}
!359 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!360 = !{!"branch_weights", i32 408669070, i32 -279908792}
!361 = distinct !{!361, !101}
!362 = !{!"function_entry_count", i64 475779}
!363 = !{!"branch_weights", i32 475780, i32 1}
!364 = !{!336, !75, i64 32}
!365 = !{!336, !75, i64 24}
!366 = !{!"branch_weights", i32 10, i32 188984}
!367 = !{!"branch_weights", i32 1, i32 159}
!368 = !{!"branch_weights", i32 159, i32 1}
!369 = !{!"branch_weights", i32 159, i32 9329}
!370 = distinct !{!370, !101}
!371 = distinct !{!371, !101}
!372 = distinct !{!372, !101}
!373 = !{!374, !75, i64 24}
!374 = !{!"_ZTSN11xercesc_2_715XercesGroupInfoE", !120, i64 0, !85, i64 8, !86, i64 12, !86, i64 16, !86, i64 20, !75, i64 24, !75, i64 32, !75, i64 40, !75, i64 48}
!375 = !{!374, !75, i64 32}
!376 = !{!374, !86, i64 12}
!377 = distinct !{!377, !101}
!378 = !{!379, !75, i64 24}
!379 = !{!"_ZTSN11xercesc_2_718XercesAttGroupInfoE", !120, i64 0, !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32, !75, i64 40, !75, i64 48}
!380 = !{!379, !75, i64 40}
!381 = !{!382, !86, i64 12}
!382 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!383 = !{!382, !75, i64 32}
!384 = !{!382, !75, i64 24}
!385 = !{!126, !75, i64 16}
!386 = !{!387, !86, i64 12}
!387 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_15XSNamespaceItemEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!388 = !{!387, !75, i64 32}
!389 = !{!387, !75, i64 24}
!390 = !{!391, !75, i64 120}
!391 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !392, i64 0, !75, i64 8, !75, i64 16, !75, i64 24, !75, i64 32, !75, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112, !75, i64 120, !85, i64 128, !393, i64 136}
!392 = !{!"_ZTSN11xercesc_2_77GrammarE", !120, i64 0}
!393 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !120, i64 0, !75, i64 8, !75, i64 16}
!394 = !{!395, !75, i64 0}
!395 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !75, i64 0, !75, i64 8, !75, i64 16}
!396 = !{!397, !75, i64 40}
!397 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !75, i64 0, !85, i64 8, !75, i64 16, !86, i64 24, !86, i64 28, !86, i64 32, !75, i64 40}
!398 = !{!397, !86, i64 24}
!399 = !{!397, !75, i64 0}
!400 = !{!397, !75, i64 16}
!401 = !{!395, !75, i64 16}
!402 = distinct !{!402, !101}
!403 = !{!"function_entry_count", i64 2082808}
!404 = !{!168, !86, i64 20}
!405 = !{!"function_entry_count", i64 114}
!406 = !{!168, !86, i64 24}
!407 = distinct !{!407, !101}
!408 = !{!409, !75, i64 24}
!409 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17XSMultiValueFacetEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!410 = !{!409, !86, i64 12}
!411 = !{!"function_entry_count", i64 76}
!412 = !{!168, !75, i64 48}
!413 = !{!"function_entry_count", i64 34}
!414 = !{!415, !85, i64 8}
!415 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE", !416, i64 0, !85, i64 8, !75, i64 16, !86, i64 24, !75, i64 32, !75, i64 40}
!416 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE"}
!417 = !{!415, !75, i64 16}
!418 = !{!415, !86, i64 24}
!419 = !{!415, !75, i64 32}
!420 = !{!415, !75, i64 40}
!421 = !{!"branch_weights", i32 1, i32 35}
!422 = !{!"function_entry_count", i64 104}
!423 = !{!"branch_weights", i32 35, i32 71}
!424 = !{!425, !86, i64 24}
!425 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !75, i64 0, !85, i64 8, !75, i64 16, !86, i64 24, !86, i64 28, !86, i64 32, !75, i64 40}
!426 = !{!"branch_weights", i32 35, i32 1}
!427 = !{!"function_entry_count", i64 35}
!428 = !{!"branch_weights", i32 36, i32 1}
!429 = !{!430, !75, i64 0}
!430 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !75, i64 0, !75, i64 8, !75, i64 16}
!431 = !{!432, !75, i64 24}
!432 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !120, i64 0, !433, i64 8, !433, i64 16, !75, i64 24, !75, i64 32, !75, i64 40}
!433 = !{!"long", !76, i64 0}
!434 = !{!"function_entry_count", i64 1231717351}
!435 = !{!"branch_weights", i32 621, i32 -1469098093}
!436 = !{!"branch_weights", i32 408901017, i32 1}
!437 = !{!"branch_weights", i32 267, i32 4}
!438 = !{!"branch_weights", i32 1, i32 4}
!439 = !{!"branch_weights", i32 156, i32 112}
!440 = !{!"branch_weights", i32 1, i32 112}
!441 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!442 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!443 = distinct !{!443, !101}
!444 = !{!"function_entry_count", i64 23}
!445 = !{!168, !75, i64 56}
!446 = !{!447, !86, i64 4}
!447 = !{!"_ZTSN11xercesc_2_718XMLStringTokenizerE", !86, i64 0, !86, i64 4, !75, i64 8, !75, i64 16, !75, i64 24, !75, i64 32}
!448 = !{!447, !86, i64 0}
!449 = !{!447, !75, i64 8}
!450 = distinct !{!450, !101}
!451 = !{!432, !75, i64 32}
!452 = !{!453, !75, i64 24}
!453 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XSFacetEEE", !85, i64 8, !86, i64 12, !86, i64 16, !75, i64 24, !75, i64 32}
!454 = !{!453, !86, i64 12}
!455 = !{!"function_entry_count", i64 1205039}
!456 = !{!168, !169, i64 12}
!457 = !{!185, !186, i64 36}
!458 = !{!184, !75, i64 80}
!459 = !{!453, !75, i64 32}
!460 = !{!461, !462, i64 36}
!461 = !{!"_ZTSN11xercesc_2_77XSFacetE", !150, i64 0, !462, i64 36, !85, i64 40, !75, i64 48, !75, i64 56}
!462 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition5FACETE", !76, i64 0}
!463 = !{!461, !85, i64 40}
!464 = !{!184, !75, i64 88}
!465 = !{!409, !75, i64 32}
!466 = !{!467, !462, i64 36}
!467 = !{!"_ZTSN11xercesc_2_717XSMultiValueFacetE", !150, i64 0, !462, i64 36, !85, i64 40, !75, i64 48, !75, i64 56}
!468 = !{!467, !85, i64 40}
!469 = !{!453, !85, i64 8}
!470 = !{!453, !86, i64 16}
!471 = distinct !{!471, !101}
!472 = distinct !{!472, !101}
!473 = distinct !{!473, !101}
!474 = distinct !{!474, !101}
!475 = distinct !{!475, !101}
!476 = !{!409, !85, i64 8}
!477 = !{!409, !86, i64 16}
!478 = distinct !{!478, !101}
!479 = distinct !{!479, !101}
!480 = distinct !{!480, !101}
!481 = distinct !{!481, !101}
!482 = distinct !{!482, !101}
!483 = distinct !{!483, !101}
!484 = !{!"function_entry_count", i64 69}
!485 = !{!"branch_weights", i32 35, i32 36}
!486 = !{!430, !75, i64 8}
!487 = !{!"branch_weights", i32 2087831324, i32 59652324}
!488 = !{!"branch_weights", i32 16, i32 55}
!489 = !{!425, !75, i64 16}
!490 = !{!"branch_weights", i32 506, i32 36}
!491 = !{!"branch_weights", i32 20, i32 487}
!492 = distinct !{!492, !101}
!493 = !{!447, !75, i64 16}
!494 = distinct !{!494, !101}
!495 = !{!425, !75, i64 0}
!496 = !{!425, !75, i64 40}
!497 = !{!"branch_weights", i32 6, i32 30}
!498 = !{!"branch_weights", i32 1, i32 239}
!499 = !{!425, !86, i64 32}
!500 = !{!"branch_weights", i32 360, i32 36}
!501 = !{!425, !85, i64 8}
!502 = !{!"branch_weights", i32 1, i32 36}
!503 = !{!"branch_weights", i32 36, i32 0}
!504 = distinct !{!504, !101}
!505 = !{!"branch_weights", i32 2929, i32 239}
!506 = distinct !{!506, !101}
!507 = !{!"function_entry_count", i64 19496}
!508 = !{!157, !75, i64 32}
