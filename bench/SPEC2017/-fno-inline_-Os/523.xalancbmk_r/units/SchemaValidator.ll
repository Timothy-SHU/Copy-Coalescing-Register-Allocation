; ModuleID = 'SchemaValidator.cpp'
source_filename = "SchemaValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator.1", i8, i32, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::XMLEnumerator.1" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.2" = type { %"class.xercesc_2_7::XMLEnumerator.3", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.3" = type { ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator.4" = type { %"class.xercesc_2_7::XMLEnumerator.5", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator.5" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf.12" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::RefHashTableOf.0" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf.15" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XercesGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.7" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::ValueVectorOf.6" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.8" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.10" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.11" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.13" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.14" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD0Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_716XSDErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_712XMLValidatorD2Ev = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb = comdat any

$_ZN11xercesc_2_712XMLValidator10getScannerEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner13getDocHandlerEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv = comdat any

$_ZN11xercesc_2_710XMLScanner20getValidationContextEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4pushERKS2_ = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo11getAbstractEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv = comdat any

$_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar20getGroupInfoRegistryEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo12getBaseGroupEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo10getLocatorEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo26getCheckElementConsistencyEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv = comdat any

$_ZN11xercesc_2_712XMLValidator12getReaderMgrEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo10getLocatorEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo9elementAtEj = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo9elementAtEj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl6getURIEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar26getValidSubstitutionGroupsEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE3getEPKvi = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZN11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii = comdat any

$_ZNK11xercesc_2_715ContentSpecNode10getElementEv = comdat any

$_ZNK11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIbEC2EPbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIbED2Ev = comdat any

$_ZNK11xercesc_2_715SchemaValidator10getGrammarEv = comdat any

$_ZN11xercesc_2_715SchemaValidator10setGrammarEPNS_7GrammarE = comdat any

$_ZNK11xercesc_2_715SchemaValidator10handlesDTDEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator13handlesSchemaEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE10addElementERKS2_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

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

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIbE5resetEPb = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_712XMLValidatorE = comdat any

$_ZTIN11xercesc_2_712XMLValidatorE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = comdat any

@_ZTVN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv, ptr @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv] }, comdat, align 8
@_ZTVN11xercesc_2_715SchemaValidatorE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715SchemaValidatorE, ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_715SchemaValidatorD0Ev, ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715SchemaValidator19postParseValidationEv, ptr @_ZN11xercesc_2_715SchemaValidator5resetEv, ptr @_ZNK11xercesc_2_715SchemaValidator18requiresNamespacesEv, ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_715SchemaValidator10getGrammarEv, ptr @_ZN11xercesc_2_715SchemaValidator10setGrammarEPNS_7GrammarE, ptr @_ZNK11xercesc_2_715SchemaValidator10handlesDTDEv, ptr @_ZNK11xercesc_2_715SchemaValidator13handlesSchemaEv] }, align 8
@.str = private unnamed_addr constant [20 x i8] c"SchemaValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715ContentSpecNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ContentSpecNodeE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_715SchemaValidatorE = dso_local constant [33 x i8] c"N11xercesc_2_715SchemaValidatorE\00", align 1
@_ZTSN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XMLValidatorE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLValidatorE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715SchemaValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715SchemaValidatorE, ptr @_ZTIN11xercesc_2_712XMLValidatorE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev, ptr @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant [71 x i8] c"N11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE }, comdat, align 8
@_ZTIN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_713XMLEnumeratorINS_7GrammarEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant [65 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant [65 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE
@_ZN11xercesc_2_715SchemaValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 !prof !211 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !215, !range !223, !noundef !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !225

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !226
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !212
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #15
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !227, !range !223, !noundef !224
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !228

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !212
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #15
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !230
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !212
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #15
  br label %33

33:                                               ; preds = %29, %25
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  tail call void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #16
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_715SchemaValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !232
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1023, ptr noundef %2) #16
          to label %8 unwind label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %9, align 8, !tbaa !237
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  store i8 0, ptr %10, align 1, !tbaa !238
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  invoke void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef null) #16
          to label %12 unwind label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %13, i8 0, i64 18, i1 false)
  %14 = load ptr, ptr %4, align 8, !tbaa !232
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14) #16
          to label %16 unwind label %23

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 8, ptr noundef %17, i1 noundef zeroext false) #16
          to label %18 unwind label %25

18:                                               ; preds = %16
  store ptr %15, ptr %13, align 8, !tbaa !239
  ret void

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %31

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %29

23:                                               ; preds = %12
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #15
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #15
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #15
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %20, %19 ]
  tail call void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  resume { ptr, i32 } %32
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !240 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i32 0, ptr %0, align 8, !tbaa !241
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !242
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !243
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !244
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !245
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !212
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #16
  store ptr %16, ptr %9, align 8, !tbaa !246
  store i16 0, ptr %16, align 2, !tbaa !247
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 !prof !231 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #16
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !249 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !240 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !246
  %6 = load ptr, ptr %3, align 8, !tbaa !212
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !250 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 align 2 !prof !231 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_715SchemaValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !212
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !239
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !252
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !253

18:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #15
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #15
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %21) #15
  tail call void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_715SchemaValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %5 = alloca i32, align 4
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %7, align 8, !tbaa !255
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 17
  store i8 0, ptr %8, align 1, !tbaa !256
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %17, !prof !257

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 358, i32 noundef 117, ptr noundef %13) #16
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #13
  br label %273

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !239
  %20 = tail call noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %19) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !258

22:                                               ; preds = %17
  %23 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %20) #16
  br label %26

24:                                               ; preds = %17
  %25 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  switch i32 %27, label %62 [
    i32 0, label %28
    i32 4, label %31
    i32 3, label %31
    i32 2, label %31
  ], !prof !259

28:                                               ; preds = %26
  %29 = icmp eq i32 %3, 0
  br i1 %29, label %267, label %30, !prof !260

30:                                               ; preds = %28
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %271

31:                                               ; preds = %26, %26, %26
  %32 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  %33 = load i8, ptr %32, align 8, !tbaa !261, !range !223, !noundef !224
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35, !prof !262

35:                                               ; preds = %31
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  %39 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #16
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %39, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
  br i1 %40, label %267, label %41

41:                                               ; preds = %37, %35
  %42 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 75, ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %267

43:                                               ; preds = %31
  %44 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %20, i1 noundef zeroext false) #16
  %45 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %46 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #16
  %47 = load ptr, ptr %44, align 8, !tbaa !212
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef i32 %49(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %2, i32 noundef %3, i32 noundef %46) #16
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %271, label %52, !prof !262

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !263
  %55 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %54) #16
  %56 = load ptr, ptr %44, align 8, !tbaa !212
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %2, i32 noundef %3, i32 noundef %46, ptr noundef nonnull %54, ptr noundef %55) #16
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %271, label %61, !prof !264

61:                                               ; preds = %52
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %271

62:                                               ; preds = %26
  %63 = icmp eq i32 %27, 5
  br i1 %63, label %66, label %64, !prof !265

64:                                               ; preds = %62
  %65 = icmp eq i32 %27, 1
  br i1 %65, label %70, label %260

66:                                               ; preds = %62
  %67 = icmp eq i32 %3, 0
  br i1 %67, label %70, label %68, !prof !266

68:                                               ; preds = %66
  %69 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 70, ptr noundef %69, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %267

70:                                               ; preds = %64, %66
  %71 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  %72 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %71) #16
  %73 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %74 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !267
  %76 = icmp eq ptr %75, null
  br i1 %76, label %242, label %77, !prof !268

77:                                               ; preds = %70
  %78 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  %79 = load i8, ptr %78, align 8, !tbaa !261, !range !223, !noundef !224
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %87, label %81, !prof !265

81:                                               ; preds = %77
  %82 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
  %83 = icmp eq ptr %73, null
  %84 = and i1 %83, %82
  br i1 %84, label %267, label %85

85:                                               ; preds = %81
  %86 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 75, ptr noundef %86, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %267

87:                                               ; preds = %77
  %88 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %75) #16
  %89 = icmp eq i32 %88, 23
  br i1 %89, label %90, label %120, !prof !268

90:                                               ; preds = %87
  %91 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !252
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !232
  %97 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %96) #16
  %98 = load ptr, ptr %95, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef 1023, ptr noundef %98) #16
          to label %99 unwind label %100

99:                                               ; preds = %94
  store ptr %97, ptr %91, align 8, !tbaa !252
  br label %102

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %97, ptr noundef %96) #15
  br label %273

102:                                              ; preds = %99, %90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 -1, ptr %5, align 4, !tbaa !269
  %103 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %104 = load ptr, ptr %91, align 8, !tbaa !252
  %105 = load ptr, ptr %103, align 8, !tbaa !212
  %106 = getelementptr inbounds ptr, ptr %105, i64 7
  %107 = load ptr, ptr %106, align 8
  %108 = call noundef i32 %107(ptr noundef nonnull align 8 dereferenceable(776) %103, ptr noundef %72, ptr noundef nonnull align 8 dereferenceable(40) %104, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %5) #16
  %109 = load ptr, ptr %91, align 8, !tbaa !252
  %110 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %111 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %110, i32 noundef %108) #16
  call void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %109, ptr noundef %111) #16
  %112 = load ptr, ptr %91, align 8, !tbaa !252
  call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %112, i16 noundef zeroext 58) #16
  %113 = load ptr, ptr %91, align 8, !tbaa !252
  %114 = load i32, ptr %5, align 4, !tbaa !269
  %115 = sext i32 %114 to i64
  %116 = getelementptr i16, ptr %72, i64 %115
  %117 = getelementptr i16, ptr %116, i64 1
  call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %113, ptr noundef %117) #16
  %118 = load ptr, ptr %91, align 8, !tbaa !252
  %119 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %118) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %120

120:                                              ; preds = %102, %87
  %121 = phi ptr [ %119, %102 ], [ %72, %87 ]
  %122 = icmp eq ptr %73, null
  %123 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %121, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
  br i1 %122, label %167, label %124, !prof !265

124:                                              ; preds = %120
  br i1 %123, label %125, label %152

125:                                              ; preds = %124
  store i8 1, ptr %8, align 1, !tbaa !256
  %126 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %127 = call noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %126) #16
  %128 = icmp eq ptr %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %125
  %130 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %131 = call noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %130) #16
  %132 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %73) #16
  %133 = load ptr, ptr %131, align 8, !tbaa !212
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8
  call void %135(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull %73, i32 noundef %132, i1 noundef zeroext false) #16
  br label %136

136:                                              ; preds = %129, %125
  %137 = load ptr, ptr %74, align 8, !tbaa !267
  %138 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %139 = icmp eq ptr %137, %138
  br i1 %139, label %267, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %18, align 8, !tbaa !239
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %141) #16
  %143 = load ptr, ptr %142, align 8, !tbaa !270
  %144 = icmp eq ptr %143, null
  br i1 %144, label %172, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %74, align 8, !tbaa !267
  %147 = load ptr, ptr %18, align 8, !tbaa !239
  %148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %147) #16
  %149 = load ptr, ptr %148, align 8, !tbaa !270
  %150 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %149) #16
  %151 = icmp eq ptr %146, %150
  br i1 %151, label %267, label %172

152:                                              ; preds = %124
  %153 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %154 = and i32 %153, 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %74, align 8, !tbaa !267
  %158 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !232
  %160 = load ptr, ptr %157, align 8, !tbaa !212
  %161 = getelementptr inbounds ptr, ptr %160, i64 10
  %162 = load ptr, ptr %161, align 8
  %163 = call noundef i32 %162(ptr noundef nonnull align 8 dereferenceable(104) %157, ptr noundef %121, ptr noundef nonnull %73, ptr noundef %159) #16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %156
  %166 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 76, ptr noundef %166, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %172

167:                                              ; preds = %120
  br i1 %123, label %168, label %172, !prof !271

168:                                              ; preds = %167
  %169 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %267, !prof !272

172:                                              ; preds = %140, %145, %167, %168, %156, %165, %152
  %173 = phi ptr [ %121, %165 ], [ %121, %156 ], [ %121, %152 ], [ %121, %168 ], [ %121, %167 ], [ %73, %145 ], [ %73, %140 ]
  %174 = phi i1 [ false, %165 ], [ false, %156 ], [ false, %152 ], [ false, %168 ], [ false, %167 ], [ true, %145 ], [ true, %140 ]
  %175 = load i8, ptr %7, align 8, !tbaa !255, !range !223, !noundef !224
  %176 = icmp eq i8 %175, 0
  %177 = icmp ne ptr %173, null
  %178 = and i1 %177, %176
  br i1 %178, label %179, label %267, !prof !273

179:                                              ; preds = %172
  %180 = load ptr, ptr %74, align 8, !tbaa !267
  %181 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %182 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %181) #16
          to label %183 unwind label %208

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !232
  %186 = load ptr, ptr %180, align 8, !tbaa !212
  %187 = getelementptr inbounds ptr, ptr %186, i64 8
  %188 = load ptr, ptr %187, align 8
  invoke void %188(ptr noundef nonnull align 8 dereferenceable(104) %180, ptr noundef nonnull %173, ptr noundef %182, ptr noundef %185) #16
          to label %189 unwind label %208

189:                                              ; preds = %183
  br i1 %174, label %190, label %267, !prof !268

190:                                              ; preds = %189
  %191 = load ptr, ptr %74, align 8, !tbaa !267
  %192 = load ptr, ptr %184, align 8, !tbaa !232
  %193 = load ptr, ptr %191, align 8, !tbaa !212
  %194 = getelementptr inbounds ptr, ptr %193, i64 7
  %195 = load ptr, ptr %194, align 8
  %196 = invoke noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(104) %191, ptr noundef nonnull %173, ptr noundef %192, i1 noundef zeroext false) #16
          to label %197 unwind label %210

197:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %198 = load ptr, ptr %184, align 8, !tbaa !232
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %196, ptr noundef %198) #16
  %199 = load ptr, ptr %74, align 8, !tbaa !267
  %200 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %201 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %200) #16
          to label %202 unwind label %212

202:                                              ; preds = %197
  %203 = load ptr, ptr %184, align 8, !tbaa !232
  %204 = load ptr, ptr %199, align 8, !tbaa !212
  %205 = getelementptr inbounds ptr, ptr %204, i64 8
  %206 = load ptr, ptr %205, align 8
  invoke void %206(ptr noundef nonnull align 8 dereferenceable(104) %199, ptr noundef %196, ptr noundef %201, ptr noundef %203) #16
          to label %207 unwind label %212

207:                                              ; preds = %202
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %267

208:                                              ; preds = %183, %179
  %209 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %214

210:                                              ; preds = %190
  %211 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %214

212:                                              ; preds = %202, %197
  %213 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %214

214:                                              ; preds = %210, %212, %208
  %215 = phi { ptr, i32 } [ %209, %208 ], [ %213, %212 ], [ %211, %210 ]
  %216 = extractvalue { ptr, i32 } %215, 0
  %217 = extractvalue { ptr, i32 } %215, 1
  %218 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %214
  %221 = call ptr @__cxa_begin_catch(ptr %216) #13
  %222 = load ptr, ptr %221, align 8, !tbaa !212
  %223 = getelementptr inbounds ptr, ptr %222, i64 2
  %224 = load ptr, ptr %223, align 8
  %225 = invoke noundef ptr %224(ptr noundef nonnull align 8 dereferenceable(48) %221) #16
          to label %226 unwind label %240

226:                                              ; preds = %220
  %227 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %221) #16
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 46, ptr noundef %225, ptr noundef %227, ptr noundef null, ptr noundef null) #16
          to label %228 unwind label %240

228:                                              ; preds = %226
  store i8 1, ptr %7, align 8, !tbaa !255
  call void @__cxa_end_catch()
  br label %267

229:                                              ; preds = %214
  %230 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %231 = icmp eq i32 %217, %230
  %232 = call ptr @__cxa_begin_catch(ptr %216) #13
  br i1 %231, label %233, label %234

233:                                              ; preds = %229
  invoke void @__cxa_rethrow() #17
          to label %278 unwind label %238

234:                                              ; preds = %229
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 78) #16
          to label %235 unwind label %236

235:                                              ; preds = %234
  invoke void @__cxa_rethrow() #17
          to label %278 unwind label %236

236:                                              ; preds = %235, %234
  %237 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %273 unwind label %275

238:                                              ; preds = %233
  %239 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %273 unwind label %275

240:                                              ; preds = %226, %220
  %241 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %273 unwind label %275

242:                                              ; preds = %70
  br i1 %63, label %243, label %245

243:                                              ; preds = %242
  %244 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 71, ptr noundef %244, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %7, align 8, !tbaa !255
  br label %267

245:                                              ; preds = %242
  %246 = icmp eq ptr %73, null
  br i1 %246, label %267, label %247

247:                                              ; preds = %245
  %248 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
  br i1 %248, label %249, label %267

249:                                              ; preds = %247
  store i8 1, ptr %8, align 1, !tbaa !256
  %250 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %251 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %250) #16
  %252 = icmp eq ptr %251, null
  br i1 %252, label %267, label %253

253:                                              ; preds = %249
  %254 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %255 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %254) #16
  %256 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %73) #16
  %257 = load ptr, ptr %255, align 8, !tbaa !212
  %258 = getelementptr inbounds ptr, ptr %257, i64 2
  %259 = load ptr, ptr %258, align 8
  tail call void %259(ptr noundef nonnull align 8 dereferenceable(8) %255, ptr noundef nonnull %73, i32 noundef %256, i1 noundef zeroext false) #16
  br label %267

260:                                              ; preds = %64
  %261 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %262 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %261, ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 21, ptr noundef %263) #16
          to label %264 unwind label %265

264:                                              ; preds = %260
  tail call void @__cxa_throw(ptr nonnull %261, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

265:                                              ; preds = %260
  %266 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %261) #13
  br label %273

267:                                              ; preds = %168, %136, %145, %85, %81, %245, %249, %253, %247, %243, %189, %207, %228, %172, %37, %41, %68, %28
  %268 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %268, align 8, !tbaa !261
  %269 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %269, align 8, !tbaa !237
  %270 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  store ptr null, ptr %270, align 8, !tbaa !267
  br label %271

271:                                              ; preds = %43, %52, %61, %267, %30
  %272 = phi i32 [ 0, %30 ], [ -1, %267 ], [ %59, %61 ], [ -1, %52 ], [ -1, %43 ]
  ret i32 %272

273:                                              ; preds = %265, %240, %238, %236, %100, %15
  %274 = phi { ptr, i32 } [ %16, %15 ], [ %266, %265 ], [ %237, %236 ], [ %101, %100 ], [ %239, %238 ], [ %241, %240 ]
  resume { ptr, i32 } %274

275:                                              ; preds = %240, %238, %236
  %276 = landingpad { ptr, i32 }
          catch ptr null
  %277 = extractvalue { ptr, i32 } %276, 0
  call void @__clang_call_terminate(ptr %277) #14
  unreachable

278:                                              ; preds = %233, %235
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !257

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.3, i32 noundef 70, i32 noundef 80, ptr noundef %7) #16
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #13
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #16
  %14 = load ptr, ptr %13, align 8, !tbaa !270
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #16
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !275 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !276
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !287

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #16
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !288
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !289 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !290

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !247
  %8 = load i16, ptr %1, align 2, !tbaa !247
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !291

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !292

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !247
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !293

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !294

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !247
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !295

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !296

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !247
  %28 = load i16, ptr %26, align 2, !tbaa !247
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !297, !llvm.loop !298

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = load i32, ptr %0, align 8, !tbaa !241
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !247
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !301 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !303 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !304
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !305

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !306
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !307

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) #16
  store ptr %11, ptr %3, align 8, !tbaa !304
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !308 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !309
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !311
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !322 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !325 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !327 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !328
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !332 {
  store i32 0, ptr %0, align 8, !tbaa !241
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !333 {
  %3 = load i32, ptr %0, align 8, !tbaa !241
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !242
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !334

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #16
  %8 = load i32, ptr %0, align 8, !tbaa !241
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !246
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !241
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !247
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !335 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !336

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !247
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !337

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !247
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !338, !llvm.loop !339

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !241
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !242
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !340

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #16
  %21 = load i32, ptr %0, align 8, !tbaa !241
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !246
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !241
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !241
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner13getDocHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !342 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !343

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !247
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !344

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !247
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !345, !llvm.loop !346

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !347 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !348
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !350

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.3, i32 noundef 61, i32 noundef 80, ptr noundef %7) #16
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #13
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #16
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !351 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !353 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !354
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !355 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  %3 = load i8, ptr %2, align 8, !tbaa !356, !range !223, !noundef !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16, !prof !357

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !358
  %8 = load ptr, ptr %0, align 8, !tbaa !212
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  %12 = load ptr, ptr %7, align 8, !tbaa !212
  %13 = getelementptr inbounds ptr, ptr %12, i64 9
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %11) #16
  store i8 1, ptr %2, align 8, !tbaa !356
  br label %16

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %18 = load ptr, ptr %17, align 8, !tbaa !358
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !359 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !360
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !362
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !363 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #4 align 2 !prof !367 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %2) #16
  %5 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #16
  %6 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #16
  %7 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #16
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
  tail call void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %1, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef null, i1 noundef zeroext false) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 comdat align 2 !prof !368 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #4 comdat align 2 !prof !375 {
  %9 = zext i1 %7 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !376
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %3, ptr noundef %2, i32 noundef %1) #16
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #16
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %12, align 4, !tbaa !378
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %9, ptr %13, align 8, !tbaa !379
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %6, ptr %14, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !381 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !382
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !384 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !386 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !387
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !388 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !390 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !391
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator5resetEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #4 align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %2, align 8, !tbaa !237
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  store i8 0, ptr %3, align 1, !tbaa !238
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !239
  tail call void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #16
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !251
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 8, !tbaa !212
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  br label %13

13:                                               ; preds = %9, %1
  store ptr null, ptr %6, align 8, !tbaa !251
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  store ptr null, ptr %14, align 8, !tbaa !267
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %15, align 8, !tbaa !261
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %16) #16
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %17, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !392 {
  store i32 0, ptr %0, align 8, !tbaa !241
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  store i16 0, ptr %3, align 2, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator18requiresNamespacesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !274 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !393 {
  %6 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %8, align 8, !tbaa !255
  %9 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %10 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %9) #16
  %11 = load ptr, ptr %10, align 8, !tbaa !212
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true) #16
  %14 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  %15 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  %16 = and i32 %15, -3
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %27, !prof !394

18:                                               ; preds = %5
  br i1 %3, label %27, label %19

19:                                               ; preds = %18
  %20 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %20) #16
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %1, align 8, !tbaa !212
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 26, ptr noundef %26, ptr noundef %2, ptr noundef %20, ptr noundef null) #16
  store i8 1, ptr %8, align 8, !tbaa !255
  br label %27

27:                                               ; preds = %19, %22, %5, %18
  %28 = load i16, ptr %2, align 2, !tbaa !247
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %40, !prof !395

30:                                               ; preds = %27
  %31 = icmp eq i32 %14, 10
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %1, align 8, !tbaa !212
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 9, ptr noundef %36, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %37 = tail call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #16
  %38 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #16
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %38, ptr %39, align 8, !tbaa !396
  store i8 1, ptr %8, align 8, !tbaa !255
  br label %184

40:                                               ; preds = %30, %27
  %41 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48, !prof !395

43:                                               ; preds = %40
  %44 = load ptr, ptr %1, align 8, !tbaa !212
  %45 = getelementptr inbounds ptr, ptr %44, i64 5
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 77, ptr noundef %47, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %177

48:                                               ; preds = %40
  %49 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %41) #16
  %50 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %51 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %50) #16
  %52 = icmp eq i32 %49, 23
  br i1 %52, label %53, label %86, !prof !395

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  %54 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 1023, ptr noundef %55) #16
          to label %56 unwind label %80

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 -1, ptr %7, align 4, !tbaa !269
  %57 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %58 = load ptr, ptr %57, align 8, !tbaa !212
  %59 = getelementptr inbounds ptr, ptr %58, i64 7
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(776) %57, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(40) %6, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %7) #16
          to label %62 unwind label %82

62:                                               ; preds = %56
  %63 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %64 = invoke noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %63, i32 noundef %61) #16
          to label %65 unwind label %82

65:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %64) #16
          to label %66 unwind label %82

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %6, i16 noundef zeroext 58) #16
          to label %67 unwind label %82

67:                                               ; preds = %66
  %68 = load i32, ptr %7, align 4, !tbaa !269
  %69 = sext i32 %68 to i64
  %70 = getelementptr i16, ptr %2, i64 %69
  %71 = getelementptr i16, ptr %70, i64 1
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %71) #16
          to label %72 unwind label %82

72:                                               ; preds = %67
  %73 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #16
  %74 = load ptr, ptr %54, align 8, !tbaa !232
  %75 = load ptr, ptr %41, align 8, !tbaa !212
  %76 = getelementptr inbounds ptr, ptr %75, i64 8
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(104) %41, ptr noundef %73, ptr noundef %51, ptr noundef %74) #16
          to label %78 unwind label %82

78:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  %79 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %41, ptr %79, align 8, !tbaa !396
  br label %174

80:                                               ; preds = %53
  %81 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %84

82:                                               ; preds = %72, %67, %66, %65, %62, %56
  %83 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #15
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  br label %94

86:                                               ; preds = %48
  %87 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !232
  %89 = load ptr, ptr %41, align 8, !tbaa !212
  %90 = getelementptr inbounds ptr, ptr %89, i64 8
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(104) %41, ptr noundef nonnull %2, ptr noundef %51, ptr noundef %88) #16
          to label %109 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %94

94:                                               ; preds = %92, %84
  %95 = phi { ptr, i32 } [ %85, %84 ], [ %93, %92 ]
  %96 = extractvalue { ptr, i32 } %95, 0
  %97 = extractvalue { ptr, i32 } %95, 1
  %98 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = call ptr @__cxa_begin_catch(ptr %96) #13
  store i8 1, ptr %8, align 8, !tbaa !255
  %102 = load ptr, ptr %101, align 8, !tbaa !212
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(48) %101) #16
          to label %106 unwind label %131

106:                                              ; preds = %100
  %107 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %101) #16
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 46, ptr noundef %105, ptr noundef %107, ptr noundef null, ptr noundef null) #16
          to label %108 unwind label %131

108:                                              ; preds = %106
  call void @__cxa_end_catch()
  br label %109

109:                                              ; preds = %86, %108
  %110 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %41, ptr %110, align 8, !tbaa !396
  switch i32 %49, label %174 [
    i32 24, label %111
    i32 25, label %139
    i32 20, label %165
    i32 21, label %155
  ], !prof !397

111:                                              ; preds = %109
  %112 = call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136) %41) #16
  %113 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %112) #16
  %114 = icmp eq i32 %113, 21
  %115 = and i1 %114, %3
  br i1 %115, label %133, label %162

116:                                              ; preds = %94
  %117 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %118 = icmp eq i32 %97, %117
  %119 = call ptr @__cxa_begin_catch(ptr %96) #13
  br i1 %118, label %120, label %121

120:                                              ; preds = %116
  invoke void @__cxa_rethrow() #17
          to label %188 unwind label %129

121:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 78) #16
          to label %122 unwind label %127

122:                                              ; preds = %121
  %123 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #16
  %124 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %123, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #16
          to label %125 unwind label %127

125:                                              ; preds = %122
  %126 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %124, ptr %126, align 8, !tbaa !396
  store i8 1, ptr %8, align 8, !tbaa !255
  invoke void @__cxa_rethrow() #17
          to label %188 unwind label %127

127:                                              ; preds = %125, %122, %121
  %128 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %172 unwind label %185

129:                                              ; preds = %120
  %130 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %172 unwind label %185

131:                                              ; preds = %106, %100
  %132 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %172 unwind label %185

133:                                              ; preds = %111
  %134 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %135 = call noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %134) #16
  %136 = load ptr, ptr %135, align 8, !tbaa !212
  %137 = getelementptr inbounds ptr, ptr %136, i64 7
  %138 = load ptr, ptr %137, align 8
  call void %138(ptr noundef nonnull align 8 dereferenceable(16) %135, i1 noundef zeroext false) #16
  br label %174

139:                                              ; preds = %109
  %140 = load ptr, ptr %51, align 8, !tbaa !212
  %141 = getelementptr inbounds ptr, ptr %140, i64 11
  %142 = load ptr, ptr %141, align 8
  %143 = call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(16) %51) #16
  store ptr %143, ptr %110, align 8, !tbaa !396
  %144 = icmp eq ptr %143, null
  br i1 %144, label %174, label %145

145:                                              ; preds = %139
  %146 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %143) #16
  %147 = icmp eq i32 %146, 21
  %148 = and i1 %147, %3
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %151 = call noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %150) #16
  %152 = load ptr, ptr %151, align 8, !tbaa !212
  %153 = getelementptr inbounds ptr, ptr %152, i64 7
  %154 = load ptr, ptr %153, align 8
  call void %154(ptr noundef nonnull align 8 dereferenceable(16) %151, i1 noundef zeroext false) #16
  br label %174

155:                                              ; preds = %109
  br i1 %3, label %156, label %174

156:                                              ; preds = %155
  %157 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %158 = call noundef ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %157) #16
  %159 = load ptr, ptr %158, align 8, !tbaa !212
  %160 = getelementptr inbounds ptr, ptr %159, i64 7
  %161 = load ptr, ptr %160, align 8
  call void %161(ptr noundef nonnull align 8 dereferenceable(16) %158, i1 noundef zeroext false) #16
  br label %174

162:                                              ; preds = %145, %111
  %163 = phi i32 [ %113, %111 ], [ %146, %145 ]
  %164 = icmp eq i32 %163, 20
  br i1 %164, label %165, label %174, !prof !395

165:                                              ; preds = %109, %162
  %166 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  %167 = load i8, ptr %166, align 1, !tbaa !238, !range !223, !noundef !224
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %4) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 11, ptr noundef %170, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %177

171:                                              ; preds = %165
  store i8 1, ptr %166, align 1, !tbaa !238
  br label %174

172:                                              ; preds = %131, %129, %127
  %173 = phi { ptr, i32 } [ %128, %127 ], [ %130, %129 ], [ %132, %131 ]
  resume { ptr, i32 } %173

174:                                              ; preds = %149, %133, %78, %109, %162, %171, %139, %155, %156
  %175 = load i8, ptr %8, align 8, !tbaa !255
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %182, label %178, !prof !398

177:                                              ; preds = %169, %43
  store i8 1, ptr %8, align 8, !tbaa !255
  br label %178

178:                                              ; preds = %177, %174
  %179 = call noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() #16
  %180 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %179, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE) #16
  %181 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 15
  store ptr %180, ptr %181, align 8, !tbaa !396
  br label %182

182:                                              ; preds = %178, %174
  %183 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %183, align 8, !tbaa !237
  br label %184

184:                                              ; preds = %182, %32
  ret void

185:                                              ; preds = %131, %129, %127
  %186 = landingpad { ptr, i32 }
          catch ptr null
  %187 = extractvalue { ptr, i32 } %186, 0
  call void @__clang_call_terminate(ptr %187) #14
  unreachable

188:                                              ; preds = %120, %125
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !399 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !400
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv() local_unnamed_addr #3 comdat align 2 !prof !401 {
  %1 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !270
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !402 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !403

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !404
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 comdat align 2 !prof !406 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !407
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca ptr, align 8
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  store ptr %6, ptr %3, align 8, !tbaa !270
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !239
  call void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %9 = load ptr, ptr %3, align 8, !tbaa !270
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !258

11:                                               ; preds = %2
  %12 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #16
  br label %15

13:                                               ; preds = %2
  %14 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 7
  store ptr %16, ptr %17, align 8, !tbaa !267
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 16
  store i8 0, ptr %18, align 8, !tbaa !255
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !251
  %21 = icmp eq ptr %20, null
  br i1 %21, label %241, label %22, !prof !408

22:                                               ; preds = %15
  %23 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %20) #16
  %24 = load ptr, ptr %19, align 8, !tbaa !251
  %25 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %24) #16
  %26 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !269
  %27 = icmp eq i32 %23, %26
  %28 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %29 = icmp eq i32 %23, %28
  %30 = select i1 %27, i1 true, i1 %29
  %31 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %32 = icmp eq i32 %23, %31
  %33 = select i1 %30, i1 true, i1 %32
  %34 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4
  %35 = icmp eq i32 %23, %34
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %233, label %37

37:                                               ; preds = %22
  %38 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %39 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %38, i32 noundef %23) #16
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !263
  %42 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %41, ptr noundef %39) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %37
  %45 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %39, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #16
  br i1 %45, label %46, label %81

46:                                               ; preds = %44
  %47 = load ptr, ptr %40, align 8, !tbaa !263
  %48 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr noundef nonnull align 8 dereferenceable(80) %47, ptr noundef %39, ptr noundef %25) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr %19, align 8, !tbaa !251
  %52 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %51) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 92, ptr noundef %52, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %233

53:                                               ; preds = %46
  %54 = load ptr, ptr %3, align 8, !tbaa !270
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load ptr, ptr %17, align 8, !tbaa !267
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %57, align 8, !tbaa !212
  %61 = getelementptr inbounds ptr, ptr %60, i64 9
  %62 = load ptr, ptr %61, align 8
  %63 = call noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(104) %57, ptr noundef nonnull %48) #16
  br i1 %63, label %64, label %76

64:                                               ; preds = %59, %56
  %65 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load ptr, ptr %19, align 8, !tbaa !251
  %69 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %68) #16
  %70 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 94, ptr noundef %69, ptr noundef %70, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %71

71:                                               ; preds = %67, %64
  %72 = load ptr, ptr %1, align 8, !tbaa !212
  %73 = getelementptr inbounds ptr, ptr %72, i64 8
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef zeroext i1 %74(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  br i1 %75, label %76, label %80

76:                                               ; preds = %71, %53, %59
  %77 = load ptr, ptr %19, align 8, !tbaa !251
  %78 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %77) #16
  %79 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %78, ptr noundef %79, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %80

80:                                               ; preds = %76, %71
  store ptr %48, ptr %17, align 8, !tbaa !267
  br label %233

81:                                               ; preds = %44
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 72, ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %233

82:                                               ; preds = %37
  %83 = load ptr, ptr %42, align 8, !tbaa !212
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(160) %42) #16
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 72, ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %233

89:                                               ; preds = %82
  %90 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %42) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load ptr, ptr %19, align 8, !tbaa !251
  %94 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %93) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 92, ptr noundef %94, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %233

95:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  %96 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !232
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1023, ptr noundef %97) #16
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %39) #16
          to label %98 unwind label %110

98:                                               ; preds = %95
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 44) #16
          to label %99 unwind label %110

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %25) #16
          to label %100 unwind label %110

100:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %101 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #16
  %102 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef %101) #16
          to label %103 unwind label %112

103:                                              ; preds = %100
  store ptr %102, ptr %5, align 8, !tbaa !270
  %104 = icmp eq ptr %102, null
  br i1 %104, label %178, label %105

105:                                              ; preds = %103
  %106 = call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo11getAbstractEv(ptr noundef nonnull align 8 dereferenceable(176) %102) #16
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #16
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 89, ptr noundef %108, ptr noundef null, ptr noundef null, ptr noundef null) #16
          to label %109 unwind label %112

109:                                              ; preds = %107
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %228

110:                                              ; preds = %99, %98, %95
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %231

112:                                              ; preds = %223, %221, %218, %212, %210, %208, %205, %200, %197, %191, %186, %183, %178, %173, %170, %165, %163, %160, %153, %107, %100
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %229

114:                                              ; preds = %105
  %115 = load ptr, ptr %3, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %150, label %117

117:                                              ; preds = %114
  %118 = icmp eq ptr %102, %115
  br i1 %118, label %136, label %119

119:                                              ; preds = %117, %119
  %120 = phi ptr [ %121, %119 ], [ %102, %117 ]
  %121 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %120) #16
  %122 = icmp eq ptr %121, null
  %123 = load ptr, ptr %3, align 8
  %124 = icmp eq ptr %121, %123
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %128, label %119, !llvm.loop !409

126:                                              ; preds = %134, %132, %129
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %229

128:                                              ; preds = %119
  br i1 %122, label %129, label %136

129:                                              ; preds = %128
  %130 = load ptr, ptr %19, align 8, !tbaa !251
  %131 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %130) #16
          to label %132 unwind label %126

132:                                              ; preds = %129
  %133 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %134 unwind label %126

134:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %131, ptr noundef %133, ptr noundef null, ptr noundef null) #16
          to label %135 unwind label %126

135:                                              ; preds = %134
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %228

136:                                              ; preds = %117, %128
  %137 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv(ptr noundef nonnull align 8 dereferenceable(176) %102) #16
  %138 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %139 = and i32 %138, %137
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %167, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %19, align 8, !tbaa !251
  %143 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %142) #16
          to label %144 unwind label %148

144:                                              ; preds = %141
  %145 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %146 unwind label %148

146:                                              ; preds = %144
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 94, ptr noundef %143, ptr noundef %145, ptr noundef null, ptr noundef null) #16
          to label %147 unwind label %148

147:                                              ; preds = %146
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %228

148:                                              ; preds = %146, %144, %141
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %229

150:                                              ; preds = %114
  %151 = load ptr, ptr %17, align 8, !tbaa !267
  %152 = icmp eq ptr %151, null
  br i1 %152, label %167, label %153

153:                                              ; preds = %150
  %154 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %102) #16
  %155 = load ptr, ptr %151, align 8, !tbaa !212
  %156 = getelementptr inbounds ptr, ptr %155, i64 9
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef zeroext i1 %157(ptr noundef nonnull align 8 dereferenceable(104) %151, ptr noundef %154) #16
          to label %159 unwind label %112

159:                                              ; preds = %153
  br i1 %158, label %167, label %160

160:                                              ; preds = %159
  %161 = load ptr, ptr %19, align 8, !tbaa !251
  %162 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %161) #16
          to label %163 unwind label %112

163:                                              ; preds = %160
  %164 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %165 unwind label %112

165:                                              ; preds = %163
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %162, ptr noundef %164, ptr noundef null, ptr noundef null) #16
          to label %166 unwind label %112

166:                                              ; preds = %165
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %228

167:                                              ; preds = %136, %150, %159
  %168 = load i8, ptr %18, align 8, !tbaa !255
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %228

170:                                              ; preds = %167
  %171 = load ptr, ptr %7, align 8, !tbaa !239
  %172 = invoke noundef ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %171) #16
          to label %173 unwind label %112

173:                                              ; preds = %170
  %174 = load ptr, ptr %7, align 8, !tbaa !239
  invoke void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %174, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
          to label %175 unwind label %112

175:                                              ; preds = %173
  %176 = load ptr, ptr %5, align 8, !tbaa !270
  %177 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(176) %176) #16
  store ptr %177, ptr %17, align 8, !tbaa !267
  br label %228

178:                                              ; preds = %103
  %179 = load ptr, ptr %40, align 8, !tbaa !263
  %180 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr noundef nonnull align 8 dereferenceable(80) %179, ptr noundef %39, ptr noundef %25) #16
          to label %181 unwind label %112

181:                                              ; preds = %178
  %182 = icmp eq ptr %180, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %181
  %184 = load ptr, ptr %19, align 8, !tbaa !251
  %185 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %184) #16
          to label %186 unwind label %112

186:                                              ; preds = %183
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 92, ptr noundef %185, ptr noundef null, ptr noundef null, ptr noundef null) #16
          to label %187 unwind label %112

187:                                              ; preds = %186
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %228

188:                                              ; preds = %181
  %189 = load ptr, ptr %17, align 8, !tbaa !267
  %190 = icmp eq ptr %189, null
  br i1 %190, label %202, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %189, align 8, !tbaa !212
  %193 = getelementptr inbounds ptr, ptr %192, i64 9
  %194 = load ptr, ptr %193, align 8
  %195 = invoke noundef zeroext i1 %194(ptr noundef nonnull align 8 dereferenceable(104) %189, ptr noundef nonnull %180) #16
          to label %196 unwind label %112

196:                                              ; preds = %191
  br i1 %195, label %202, label %197

197:                                              ; preds = %196
  %198 = load ptr, ptr %19, align 8, !tbaa !251
  %199 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %198) #16
          to label %200 unwind label %112

200:                                              ; preds = %197
  %201 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %223 unwind label %112

202:                                              ; preds = %196, %188
  %203 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %204 = icmp eq i32 %203, 4
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load ptr, ptr %19, align 8, !tbaa !251
  %207 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %206) #16
          to label %208 unwind label %112

208:                                              ; preds = %205
  %209 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %210 unwind label %112

210:                                              ; preds = %208
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 94, ptr noundef %207, ptr noundef %209, ptr noundef null, ptr noundef null) #16
          to label %211 unwind label %112

211:                                              ; preds = %210
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %212

212:                                              ; preds = %211, %202
  %213 = load ptr, ptr %1, align 8, !tbaa !212
  %214 = getelementptr inbounds ptr, ptr %213, i64 8
  %215 = load ptr, ptr %214, align 8
  %216 = invoke noundef zeroext i1 %215(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %217 unwind label %112

217:                                              ; preds = %212
  br i1 %216, label %218, label %227

218:                                              ; preds = %217
  %219 = load ptr, ptr %19, align 8, !tbaa !251
  %220 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %219) #16
          to label %221 unwind label %112

221:                                              ; preds = %218
  %222 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
          to label %223 unwind label %112

223:                                              ; preds = %221, %200
  %224 = phi ptr [ %199, %200 ], [ %220, %221 ]
  %225 = phi ptr [ %201, %200 ], [ %222, %221 ]
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 93, ptr noundef %224, ptr noundef %225, ptr noundef null, ptr noundef null) #16
          to label %226 unwind label %112

226:                                              ; preds = %223
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %227

227:                                              ; preds = %226, %217
  store ptr %180, ptr %17, align 8, !tbaa !267
  br label %228

228:                                              ; preds = %166, %147, %135, %187, %227, %109, %175, %167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  br label %233

229:                                              ; preds = %126, %148, %112
  %230 = phi { ptr, i32 } [ %113, %112 ], [ %149, %148 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %231

231:                                              ; preds = %229, %110
  %232 = phi { ptr, i32 } [ %230, %229 ], [ %111, %110 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  resume { ptr, i32 } %232

233:                                              ; preds = %50, %80, %81, %88, %228, %92, %22
  %234 = load ptr, ptr %19, align 8, !tbaa !251
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %234, align 8, !tbaa !212
  %238 = getelementptr inbounds ptr, ptr %237, i64 1
  %239 = load ptr, ptr %238, align 8
  call void %239(ptr noundef nonnull align 8 dereferenceable(56) %234) #15
  br label %240

240:                                              ; preds = %236, %233
  store ptr null, ptr %19, align 8, !tbaa !251
  br label %248

241:                                              ; preds = %15
  %242 = load ptr, ptr %3, align 8, !tbaa !270
  %243 = icmp eq ptr %242, null
  br i1 %243, label %248, label %244, !prof !258

244:                                              ; preds = %241
  %245 = call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo11getAbstractEv(ptr noundef nonnull align 8 dereferenceable(176) %242) #16
  br i1 %245, label %246, label %248, !prof !410

246:                                              ; preds = %244
  %247 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 91, ptr noundef %247, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %248

248:                                              ; preds = %241, %244, %246, %240
  %249 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %250 = and i32 %249, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252, !prof !408

252:                                              ; preds = %248
  %253 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 90, ptr noundef %253, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %254

254:                                              ; preds = %252, %248
  %255 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  %256 = load i8, ptr %255, align 8, !tbaa !261, !range !223, !noundef !224
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %263, label %258, !prof !408

258:                                              ; preds = %254
  %259 = and i32 %249, 1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  store i8 0, ptr %255, align 8, !tbaa !261
  %262 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #16
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 74, ptr noundef %262, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store i8 1, ptr %18, align 8, !tbaa !255
  br label %263

263:                                              ; preds = %261, %258, %254
  %264 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %264) #16
  %265 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  store i8 0, ptr %265, align 8, !tbaa !237
  %266 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 11
  store i8 0, ptr %266, align 1, !tbaa !238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !254 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver20getDatatypeValidatorEPKtS2_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !411
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !413
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !417 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !418

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !419
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo11getAbstractEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !421 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !422, !range !223, !noundef !224
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !423 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !424
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !423 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !425
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 zeroext %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  %4 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %5 = alloca %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.2", align 8
  %8 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator.4", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !263
  call void @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %10) #16
  %11 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #16
  br i1 %11, label %12, label %276, !prof !426

12:                                               ; preds = %3, %263
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #16
          to label %14 unwind label %27

14:                                               ; preds = %12
  %15 = load ptr, ptr %13, align 8, !tbaa !212
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
          to label %19 unwind label %27

19:                                               ; preds = %14
  %20 = icmp eq i32 %18, 1
  br i1 %20, label %21, label %263, !prof !427, !llvm.loop !428

21:                                               ; preds = %19
  %22 = load ptr, ptr %13, align 8, !tbaa !212
  %23 = getelementptr inbounds ptr, ptr %22, i64 7
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
          to label %26 unwind label %27

26:                                               ; preds = %21
  br i1 %25, label %263, label %31, !prof !429, !llvm.loop !428

27:                                               ; preds = %21, %14, %12
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
  br label %271

31:                                               ; preds = %26
  %32 = load ptr, ptr %13, align 8, !tbaa !212
  %33 = getelementptr inbounds ptr, ptr %32, i64 19
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(160) %13, i1 noundef zeroext true) #16
          to label %35 unwind label %45

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  invoke void @_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(160) %13) #16
          to label %36 unwind label %49

36:                                               ; preds = %35
  %37 = call noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #16
  br i1 %37, label %38, label %172, !prof !426

38:                                               ; preds = %36, %166
  %39 = invoke noundef nonnull align 8 dereferenceable(147) ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #16
          to label %40 unwind label %53

40:                                               ; preds = %38
  %41 = call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %39) #16
  switch i32 %41, label %67 [
    i32 3, label %60
    i32 2, label %42
    i32 4, label %57
  ], !prof !430

42:                                               ; preds = %40
  %43 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %44 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %39) #16
          to label %63 unwind label %55

45:                                               ; preds = %31
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = extractvalue { ptr, i32 } %46, 1
  br label %271

49:                                               ; preds = %35
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  br label %268

53:                                               ; preds = %38
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %168

55:                                               ; preds = %63, %67, %60, %59, %57, %42
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %168

57:                                               ; preds = %40
  %58 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %39) #16
          to label %59 unwind label %55

59:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 15, ptr noundef %58, ptr noundef null, ptr noundef null, ptr noundef null) #16
          to label %67 unwind label %55

60:                                               ; preds = %40
  %61 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %62 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %39) #16
          to label %63 unwind label %55

63:                                               ; preds = %42, %60
  %64 = phi ptr [ %61, %60 ], [ %43, %42 ]
  %65 = phi i32 [ 5, %60 ], [ 6, %42 ]
  %66 = phi ptr [ %62, %60 ], [ %44, %42 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %64, i32 noundef %65, ptr noundef %66, ptr noundef null, ptr noundef null, ptr noundef null) #16
          to label %67 unwind label %55

67:                                               ; preds = %63, %40, %59
  %68 = load ptr, ptr %39, align 8, !tbaa !212
  %69 = getelementptr inbounds ptr, ptr %68, i64 8
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef zeroext i1 %70(ptr noundef nonnull align 8 dereferenceable(147) %39) #16
          to label %72 unwind label %55

72:                                               ; preds = %67
  br i1 %71, label %73, label %166, !prof !431

73:                                               ; preds = %72
  %74 = load ptr, ptr %39, align 8, !tbaa !212
  %75 = getelementptr inbounds ptr, ptr %74, i64 6
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef nonnull align 8 dereferenceable(16) ptr %76(ptr noundef nonnull align 8 dereferenceable(147) %39) #16
          to label %78 unwind label %87

78:                                               ; preds = %73, %164
  %79 = phi i32 [ %165, %164 ], [ 0, %73 ]
  %80 = phi i8 [ %155, %164 ], [ 0, %73 ]
  %81 = load ptr, ptr %77, align 8, !tbaa !212
  %82 = getelementptr inbounds ptr, ptr %81, i64 13
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef i32 %83(ptr noundef nonnull align 8 dereferenceable(16) %77) #16
          to label %85 unwind label %89

85:                                               ; preds = %78
  %86 = icmp ult i32 %79, %84
  br i1 %86, label %91, label %166, !prof !432

87:                                               ; preds = %73
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %168

89:                                               ; preds = %78
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %168

91:                                               ; preds = %85
  %92 = load ptr, ptr %77, align 8, !tbaa !212
  %93 = getelementptr inbounds ptr, ptr %92, i64 14
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef nonnull align 8 dereferenceable(56) ptr %94(ptr noundef nonnull align 8 dereferenceable(16) %77, i32 noundef %79) #16
          to label %96 unwind label %105

96:                                               ; preds = %91
  %97 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %109, !prof !433

99:                                               ; preds = %96
  %100 = and i8 %80, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %154, label %102

102:                                              ; preds = %99
  %103 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %39) #16
          to label %104 unwind label %107

104:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 11, ptr noundef %103, ptr noundef null, ptr noundef null, ptr noundef null) #16
          to label %166 unwind label %107

105:                                              ; preds = %91, %159
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %168

107:                                              ; preds = %102, %104
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %168

109:                                              ; preds = %96
  %110 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
  %111 = icmp eq i32 %110, 8
  br i1 %111, label %112, label %154, !prof !433

112:                                              ; preds = %109
  %113 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
  %114 = icmp eq ptr %113, null
  br i1 %114, label %154, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %117 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
  %118 = load ptr, ptr %116, align 8, !tbaa !232
  %119 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %117, ptr noundef %118) #16
          to label %120 unwind label %130

120:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %121 = load ptr, ptr %116, align 8, !tbaa !232
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %119, ptr noundef %121) #16
  br label %122

122:                                              ; preds = %149, %120
  %123 = phi ptr [ %119, %120 ], [ %152, %149 ]
  %124 = phi i8 [ 0, %120 ], [ %134, %149 ]
  br label %125

125:                                              ; preds = %128, %122
  %126 = phi ptr [ %123, %122 ], [ %129, %128 ]
  %127 = load i16, ptr %126, align 2, !tbaa !247
  switch i16 %127, label %128 [
    i16 0, label %133
    i16 32, label %132
  ]

128:                                              ; preds = %125
  %129 = getelementptr inbounds i16, ptr %126, i64 1
  br label %125, !llvm.loop !434

130:                                              ; preds = %115
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %168

132:                                              ; preds = %125
  store i16 0, ptr %126, align 2, !tbaa !247
  br label %133

133:                                              ; preds = %125, %132
  %134 = phi i8 [ %124, %132 ], [ 1, %125 ]
  %135 = load ptr, ptr %13, align 8, !tbaa !212
  %136 = getelementptr inbounds ptr, ptr %135, i64 15
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(160) %13, ptr noundef %123) #16
          to label %139 unwind label %147

139:                                              ; preds = %133
  %140 = icmp eq ptr %138, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %139
  %142 = load ptr, ptr %95, align 8, !tbaa !212
  %143 = getelementptr inbounds ptr, ptr %142, i64 5
  %144 = load ptr, ptr %143, align 8
  %145 = invoke noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
          to label %146 unwind label %147

146:                                              ; preds = %141
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 14, ptr noundef %145, ptr noundef %123, ptr noundef null, ptr noundef null) #16
          to label %149 unwind label %147

147:                                              ; preds = %146, %141, %133
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %168

149:                                              ; preds = %146, %139
  %150 = and i8 %134, 1
  %151 = icmp eq i8 %150, 0
  %152 = getelementptr inbounds i16, ptr %126, i64 1
  br i1 %151, label %122, label %153, !llvm.loop !435

153:                                              ; preds = %149
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %154

154:                                              ; preds = %99, %109, %112, %153
  %155 = phi i8 [ %80, %153 ], [ %80, %112 ], [ %80, %109 ], [ 1, %99 ]
  br i1 %2, label %156, label %164, !prof !433

156:                                              ; preds = %154
  %157 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #16
  %161 = load ptr, ptr %0, align 8, !tbaa !212
  %162 = getelementptr inbounds ptr, ptr %161, i64 8
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %95, ptr noundef %160, i1 noundef zeroext true, ptr noundef nonnull %39) #16
          to label %164 unwind label %105

164:                                              ; preds = %159, %156, %154
  %165 = add i32 %79, 1
  br label %78, !llvm.loop !436

166:                                              ; preds = %85, %104, %72
  %167 = call noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #16
  br i1 %167, label %38, label %172, !prof !437, !llvm.loop !438

168:                                              ; preds = %105, %107, %55, %89, %130, %147, %87, %53
  %169 = phi { ptr, i32 } [ %54, %53 ], [ %56, %55 ], [ %88, %87 ], [ %90, %89 ], [ %148, %147 ], [ %131, %130 ], [ %106, %105 ], [ %108, %107 ]
  %170 = extractvalue { ptr, i32 } %169, 0
  %171 = extractvalue { ptr, i32 } %169, 1
  br label %265

172:                                              ; preds = %166, %36
  %173 = call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %174 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %173) #16
  br i1 %174, label %175, label %262, !prof !429

175:                                              ; preds = %172
  %176 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %177 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar22getComplexTypeRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %13) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #13
  %178 = load ptr, ptr %176, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %177, i1 noundef zeroext false, ptr noundef %178) #16
          to label %179 unwind label %188

179:                                              ; preds = %175, %187
  %180 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #16
  br i1 %180, label %181, label %196

181:                                              ; preds = %179
  %182 = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #16
          to label %183 unwind label %192

183:                                              ; preds = %181
  %184 = load ptr, ptr %9, align 8, !tbaa !263
  %185 = call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %184) #16
  invoke void @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(176) %182, ptr noundef nonnull %13, ptr noundef nonnull %184, ptr noundef %185, ptr noundef nonnull %0) #16
          to label %186 unwind label %192

186:                                              ; preds = %183
  invoke void @_ZN11xercesc_2_715SchemaValidator23checkParticleDerivationEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %13, ptr noundef nonnull %182) #16
          to label %187 unwind label %192

187:                                              ; preds = %186
  invoke void @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %13, ptr noundef nonnull %182, ptr noundef null) #16
          to label %179 unwind label %192, !llvm.loop !439

188:                                              ; preds = %175
  %189 = landingpad { ptr, i32 }
          cleanup
  %190 = extractvalue { ptr, i32 } %189, 0
  %191 = extractvalue { ptr, i32 } %189, 1
  br label %259

192:                                              ; preds = %187, %186, %183, %181
  %193 = landingpad { ptr, i32 }
          cleanup
  %194 = extractvalue { ptr, i32 } %193, 0
  %195 = extractvalue { ptr, i32 } %193, 1
  br label %256

196:                                              ; preds = %179
  %197 = call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar20getGroupInfoRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %13) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #13
  %198 = load ptr, ptr %176, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %197, i1 noundef zeroext false, ptr noundef %198) #16
          to label %199 unwind label %211

199:                                              ; preds = %196
  %200 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #16
  br i1 %200, label %201, label %252

201:                                              ; preds = %199, %247
  %202 = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #16
          to label %203 unwind label %215

203:                                              ; preds = %201
  %204 = call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo12getBaseGroupEv(ptr noundef nonnull align 8 dereferenceable(56) %202) #16
  %205 = icmp eq ptr %204, null
  br i1 %205, label %244, label %206

206:                                              ; preds = %203
  %207 = call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %202) #16
  %208 = call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %202) #16
  %209 = call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %204) #16
  %210 = call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %204) #16
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %13, ptr noundef %207, i32 noundef %208, ptr noundef %209, i32 noundef %210, ptr noundef null, i1 noundef zeroext true) #16
          to label %244 unwind label %223

211:                                              ; preds = %196
  %212 = landingpad { ptr, i32 }
          cleanup
  %213 = extractvalue { ptr, i32 } %212, 0
  %214 = extractvalue { ptr, i32 } %212, 1
  br label %253

215:                                              ; preds = %201
  %216 = landingpad { ptr, i32 }
          cleanup
  %217 = extractvalue { ptr, i32 } %216, 0
  %218 = extractvalue { ptr, i32 } %216, 1
  br label %249

219:                                              ; preds = %246
  %220 = landingpad { ptr, i32 }
          cleanup
  %221 = extractvalue { ptr, i32 } %220, 0
  %222 = extractvalue { ptr, i32 } %220, 1
  br label %249

223:                                              ; preds = %206
  %224 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %225 = extractvalue { ptr, i32 } %224, 0
  %226 = extractvalue { ptr, i32 } %224, 1
  %227 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %223
  %230 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %231 = call ptr @__cxa_begin_catch(ptr %225) #13
  %232 = call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(56) %202) #16
  %233 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %231) #16
  %234 = load ptr, ptr %176, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %230, i32 noundef 156, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %232, ptr noundef %233, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %234) #16
          to label %235 unwind label %236

235:                                              ; preds = %229
  invoke void @__cxa_end_catch()
          to label %244 unwind label %238

236:                                              ; preds = %229
  %237 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %240 unwind label %277

238:                                              ; preds = %235
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %240

240:                                              ; preds = %236, %238
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %237, %236 ]
  %242 = extractvalue { ptr, i32 } %241, 0
  %243 = extractvalue { ptr, i32 } %241, 1
  br label %249

244:                                              ; preds = %235, %206, %203
  %245 = call noundef zeroext i1 @_ZNK11xercesc_2_715XercesGroupInfo26getCheckElementConsistencyEv(ptr noundef nonnull align 8 dereferenceable(56) %202) #16
  br i1 %245, label %246, label %247

246:                                              ; preds = %244
  invoke void @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %202) #16
          to label %247 unwind label %219

247:                                              ; preds = %246, %244
  %248 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #16
  br i1 %248, label %201, label %252, !llvm.loop !440

249:                                              ; preds = %223, %219, %240, %215
  %250 = phi i32 [ %218, %215 ], [ %222, %219 ], [ %243, %240 ], [ %226, %223 ]
  %251 = phi ptr [ %217, %215 ], [ %221, %219 ], [ %242, %240 ], [ %225, %223 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #15
  br label %253

252:                                              ; preds = %247, %199
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #13
  br label %262

253:                                              ; preds = %249, %211
  %254 = phi i32 [ %250, %249 ], [ %214, %211 ]
  %255 = phi ptr [ %251, %249 ], [ %213, %211 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  br label %256

256:                                              ; preds = %253, %192
  %257 = phi i32 [ %195, %192 ], [ %254, %253 ]
  %258 = phi ptr [ %194, %192 ], [ %255, %253 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #15
  br label %259

259:                                              ; preds = %256, %188
  %260 = phi i32 [ %257, %256 ], [ %191, %188 ]
  %261 = phi ptr [ %258, %256 ], [ %190, %188 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #13
  br label %265

262:                                              ; preds = %252, %172
  call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %263

263:                                              ; preds = %19, %26, %262
  %264 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #16
  br i1 %264, label %12, label %276, !prof !441

265:                                              ; preds = %259, %168
  %266 = phi i32 [ %171, %168 ], [ %260, %259 ]
  %267 = phi ptr [ %170, %168 ], [ %261, %259 ]
  call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  br label %268

268:                                              ; preds = %265, %49
  %269 = phi i32 [ %266, %265 ], [ %52, %49 ]
  %270 = phi ptr [ %267, %265 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %271

271:                                              ; preds = %45, %268, %27
  %272 = phi i32 [ %30, %27 ], [ %269, %268 ], [ %48, %45 ]
  %273 = phi ptr [ %29, %27 ], [ %270, %268 ], [ %47, %45 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  %274 = insertvalue { ptr, i32 } poison, ptr %273, 0
  %275 = insertvalue { ptr, i32 } %274, i32 %272, 1
  resume { ptr, i32 } %275

276:                                              ; preds = %263, %3
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret void

277:                                              ; preds = %236
  %278 = landingpad { ptr, i32 }
          catch ptr null
  %279 = extractvalue { ptr, i32 } %278, 0
  call void @__clang_call_terminate(ptr %279) #14
  unreachable
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::RefHashTableOfEnumerator") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !249 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !442
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !445

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !446
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !447
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !448
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !450

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  br i1 %5, label %13, label %6, !prof !451

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !452
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 30, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !442
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !453
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #4 comdat align 2 !prof !412 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !455
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %1, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !456
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !457 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !458
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !461

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !463
  %10 = icmp ule i32 %3, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(147) ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !465 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !458
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !466

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !463
  %10 = icmp ugt i32 %3, %9
  br i1 %10, label %11, label %18, !prof !466

11:                                               ; preds = %5, %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !467
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 435, i32 noundef 30, ptr noundef %14) #16
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #13
  resume { ptr, i32 } %17

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %7, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !468
  %21 = add i32 %3, 1
  store i32 %21, ptr %2, align 4, !tbaa !458
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !270
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !469 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !470
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !471
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !472 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !473

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !212
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !401 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !474, !range !223, !noundef !224
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !475
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !478
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !479
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !480
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !481
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %14 = load ptr, ptr %10, align 8, !tbaa !481
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.5, i32 noundef 527, i32 noundef 15, ptr noundef %14) #16
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #13
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !478
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !479
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !482
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 30, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !478
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !419
  ret ptr %16
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator23checkParticleDerivationEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %14 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %7) #16
  %15 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %7) #16
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef nonnull %7, i1 noundef zeroext true) #16
          to label %32 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %18 = extractvalue { ptr, i32 } %17, 1
  %19 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = extractvalue { ptr, i32 } %17, 0
  %23 = tail call ptr @__cxa_begin_catch(ptr %22) #13
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %26 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %23) #16
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 156, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %25, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %28) #16
          to label %29 unwind label %30

29:                                               ; preds = %21
  tail call void @__cxa_end_catch()
  br label %32

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

32:                                               ; preds = %29, %12, %9, %6, %3
  ret void

33:                                               ; preds = %30, %16
  %34 = phi { ptr, i32 } [ %17, %16 ], [ %31, %30 ]
  resume { ptr, i32 } %34

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !274 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #16
  br label %14

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %8, %6 ], [ %12, %10 ]
  %16 = phi i32 [ %7, %6 ], [ %11, %10 ]
  %17 = phi ptr [ %9, %6 ], [ %13, %10 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  br label %23

22:                                               ; preds = %84, %14
  ret void

23:                                               ; preds = %19, %84
  %24 = phi i32 [ 0, %19 ], [ %85, %84 ]
  br i1 %5, label %27, label %25

25:                                               ; preds = %23
  %26 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef %24) #16
  br label %29

27:                                               ; preds = %23
  %28 = tail call noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %24) #16
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !212
  %32 = getelementptr inbounds ptr, ptr %31, i64 19
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(147) %30) #16
  br i1 %34, label %35, label %84

35:                                               ; preds = %29
  %36 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %30) #16
  %37 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %30) #16
  %38 = load ptr, ptr %1, align 8, !tbaa !212
  %39 = getelementptr inbounds ptr, ptr %38, i64 11
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %36, ptr noundef %37, ptr noundef null, i32 noundef %15) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %35
  %44 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %30) #16
  %45 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %41) #16
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %30) #16
  %49 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %41) #16
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %43
  %52 = load ptr, ptr %21, align 8, !tbaa !232
  tail call void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 79, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %17, ptr noundef %37, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %52) #16
  br label %84

53:                                               ; preds = %47, %35
  %54 = tail call noundef ptr @_ZNK11xercesc_2_713SchemaGrammar26getValidSubstitutionGroupsEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #16
  %55 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef %37, i32 noundef %36) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %84, label %57

57:                                               ; preds = %53
  %58 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %55) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %57, %81
  %61 = phi i32 [ %82, %81 ], [ 0, %57 ]
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef %61) #16
  %63 = load ptr, ptr %62, align 8, !tbaa !270
  %64 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %63) #16
  %65 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %63) #16
  %66 = load ptr, ptr %1, align 8, !tbaa !212
  %67 = getelementptr inbounds ptr, ptr %66, i64 11
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %65, ptr noundef %64, ptr noundef null, i32 noundef %15) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %60
  %72 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %63) #16
  %73 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %69) #16
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %63) #16
  %77 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %69) #16
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %75, %71
  %80 = load ptr, ptr %21, align 8, !tbaa !232
  tail call void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 79, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, ptr noundef %17, ptr noundef %37, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %80) #16
  br label %81

81:                                               ; preds = %79, %75, %60
  %82 = add nuw i32 %61, 1
  %83 = icmp eq i32 %82, %58
  br i1 %83, label %84, label %60, !llvm.loop !484

84:                                               ; preds = %81, %57, %29, %53, %51
  %85 = add nuw i32 %24, 1
  %86 = icmp eq i32 %85, %16
  br i1 %86, label %22, label %23, !llvm.loop !485
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar20getGroupInfoRegistryEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !486
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !487
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !490
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !491
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !493
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %14 = load ptr, ptr %10, align 8, !tbaa !493
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.5, i32 noundef 527, i32 noundef 15, ptr noundef %14) #16
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #13
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !490
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !491
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !494
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 575, i32 noundef 30, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !490
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !496
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo12getBaseGroupEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !498
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %9 = alloca %"class.xercesc_2_7::ValueVectorOf.7", align 8
  %10 = alloca %"class.xercesc_2_7::ValueVectorOf.7", align 8
  %11 = icmp eq ptr %2, null
  %12 = icmp ne ptr %4, null
  %13 = or i1 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 1403, i32 noundef 353, ptr noundef %17) #16
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #13
  br label %131

21:                                               ; preds = %8
  br i1 %11, label %126, label %22

22:                                               ; preds = %21
  %23 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator16getNonUnaryGroupEPNS_15ContentSpecNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %2) #16
  %24 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator16getNonUnaryGroupEPNS_15ContentSpecNodeE(ptr nonnull align 8 poison, ptr noundef %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !232
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 8, ptr noundef %26, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #13
  %27 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 8, ptr noundef %27, i1 noundef zeroext false) #16
          to label %28 unwind label %39

28:                                               ; preds = %22
  %29 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %23) #16
  %30 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %24) #16
  %31 = and i32 %29, 15
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = icmp eq i32 %31, 4
  %35 = icmp eq i32 %29, 9
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %28
  %38 = invoke noundef ptr @_ZN11xercesc_2_715SchemaValidator28checkForPointlessOccurrencesEPNS_15ContentSpecNodeENS1_9NodeTypesEPNS_13ValueVectorOfIS2_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %23, i32 noundef %29, ptr noundef nonnull %9) #16
          to label %43 unwind label %41

39:                                               ; preds = %22
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %129

41:                                               ; preds = %107, %109, %120, %111, %108, %70, %62, %61, %60, %51, %37
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %127

43:                                               ; preds = %37, %33
  %44 = phi ptr [ %23, %33 ], [ %38, %37 ]
  %45 = and i32 %30, 15
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = icmp eq i32 %45, 4
  %49 = icmp eq i32 %30, 9
  %50 = or i1 %49, %48
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = invoke noundef ptr @_ZN11xercesc_2_715SchemaValidator28checkForPointlessOccurrencesEPNS_15ContentSpecNodeENS1_9NodeTypesEPNS_13ValueVectorOfIS2_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %24, i32 noundef %30, ptr noundef nonnull %10) #16
          to label %53 unwind label %41

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %24, %47 ], [ %52, %51 ]
  %55 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %44) #16
  %56 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %54) #16
  %57 = and i32 %55, 15
  switch i32 %57, label %125 [
    i32 0, label %58
    i32 6, label %68
    i32 7, label %68
    i32 8, label %68
    i32 9, label %81
    i32 4, label %93
    i32 5, label %105
  ]

58:                                               ; preds = %53
  %59 = and i32 %56, 15
  switch i32 %59, label %63 [
    i32 0, label %60
    i32 6, label %61
    i32 7, label %61
    i32 8, label %61
    i32 4, label %62
    i32 5, label %62
    i32 9, label %62
  ]

60:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_715SchemaValidator18checkNameAndTypeOKEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiS5_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %44, i32 noundef %3, ptr noundef nonnull %54, i32 noundef %5, ptr noundef %6) #16
          to label %125 unwind label %41

61:                                               ; preds = %58, %58, %58
  invoke void @_ZN11xercesc_2_715SchemaValidator13checkNSCompatEPKNS_15ContentSpecNodeES3_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %44, ptr noundef nonnull %54, i1 noundef zeroext %7) #16
          to label %125 unwind label %41

62:                                               ; preds = %58, %58, %58
  invoke void @_ZN11xercesc_2_715SchemaValidator21checkRecurseAsIfGroupEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiPKS3_iPNS_13ValueVectorOfIS4_EEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %44, i32 noundef %3, ptr noundef nonnull %54, i32 noundef %5, ptr noundef nonnull %10, ptr noundef %6) #16
          to label %125 unwind label %41

63:                                               ; preds = %58
  %64 = call ptr @__cxa_allocate_exception(i64 48) #13
  %65 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str, i32 noundef 1456, i32 noundef 375, ptr noundef %65) #16
          to label %120 unwind label %66

66:                                               ; preds = %63
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %64) #13
  br label %127

68:                                               ; preds = %53, %53, %53
  %69 = and i32 %56, 15
  switch i32 %69, label %76 [
    i32 6, label %70
    i32 7, label %70
    i32 8, label %70
    i32 4, label %71
    i32 5, label %71
    i32 9, label %71
    i32 0, label %71
  ]

70:                                               ; preds = %68, %68, %68
  invoke void @_ZN11xercesc_2_715SchemaValidator13checkNSSubsetEPKNS_15ContentSpecNodeES3_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %44, ptr noundef nonnull %54) #16
          to label %125 unwind label %41

71:                                               ; preds = %68, %68, %68, %68
  %72 = call ptr @__cxa_allocate_exception(i64 48) #13
  %73 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef nonnull @.str, i32 noundef 1477, i32 noundef 366, ptr noundef %73) #16
          to label %120 unwind label %74

74:                                               ; preds = %71
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %72) #13
  br label %127

76:                                               ; preds = %68
  %77 = call ptr @__cxa_allocate_exception(i64 48) #13
  %78 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull @.str, i32 noundef 1481, i32 noundef 375, ptr noundef %78) #16
          to label %120 unwind label %79

79:                                               ; preds = %76
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %77) #13
  br label %127

81:                                               ; preds = %53
  %82 = and i32 %56, 15
  switch i32 %82, label %88 [
    i32 6, label %107
    i32 7, label %107
    i32 8, label %107
    i32 9, label %109
    i32 4, label %83
    i32 5, label %83
    i32 0, label %83
  ]

83:                                               ; preds = %81, %81, %81
  %84 = call ptr @__cxa_allocate_exception(i64 48) #13
  %85 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull @.str, i32 noundef 1505, i32 noundef 367, ptr noundef %85) #16
          to label %120 unwind label %86

86:                                               ; preds = %83
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %84) #13
  br label %127

88:                                               ; preds = %81
  %89 = call ptr @__cxa_allocate_exception(i64 48) #13
  %90 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %89, ptr noundef nonnull @.str, i32 noundef 1509, i32 noundef 375, ptr noundef %90) #16
          to label %120 unwind label %91

91:                                               ; preds = %88
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %89) #13
  br label %127

93:                                               ; preds = %53
  %94 = and i32 %56, 15
  switch i32 %94, label %100 [
    i32 6, label %107
    i32 7, label %107
    i32 8, label %107
    i32 4, label %109
    i32 9, label %95
    i32 5, label %95
    i32 0, label %95
  ]

95:                                               ; preds = %93, %93, %93
  %96 = call ptr @__cxa_allocate_exception(i64 48) #13
  %97 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef nonnull @.str, i32 noundef 1533, i32 noundef 368, ptr noundef %97) #16
          to label %120 unwind label %98

98:                                               ; preds = %95
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %96) #13
  br label %127

100:                                              ; preds = %93
  %101 = call ptr @__cxa_allocate_exception(i64 48) #13
  %102 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %101, ptr noundef nonnull @.str, i32 noundef 1537, i32 noundef 375, ptr noundef %102) #16
          to label %120 unwind label %103

103:                                              ; preds = %100
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %101) #13
  br label %127

105:                                              ; preds = %53
  %106 = and i32 %56, 15
  switch i32 %106, label %117 [
    i32 6, label %107
    i32 7, label %107
    i32 8, label %107
    i32 9, label %108
    i32 5, label %109
    i32 4, label %111
    i32 0, label %112
  ]

107:                                              ; preds = %105, %105, %105, %93, %93, %93, %81, %81, %81
  invoke void @_ZN11xercesc_2_715SchemaValidator30checkNSRecurseCheckCardinalityEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %44, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %54, i1 noundef zeroext %7) #16
          to label %125 unwind label %41

108:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_715SchemaValidator21checkRecurseUnorderedEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %44, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %54, ptr noundef nonnull %10, i32 noundef %5, ptr noundef %6) #16
          to label %125 unwind label %41

109:                                              ; preds = %105, %93, %81
  %110 = phi i1 [ false, %81 ], [ true, %93 ], [ false, %105 ]
  invoke void @_ZN11xercesc_2_715SchemaValidator12checkRecurseEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiPNS_13ValueVectorOfIPS3_EES5_iS9_PKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %44, i32 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %54, i32 noundef %5, ptr noundef nonnull %10, ptr noundef %6, i1 noundef zeroext %110) #16
          to label %125 unwind label %41

111:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_715SchemaValidator14checkMapAndSumEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %44, ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull %54, ptr noundef nonnull %10, i32 noundef %5, ptr noundef %6) #16
          to label %125 unwind label %41

112:                                              ; preds = %105
  %113 = call ptr @__cxa_allocate_exception(i64 48) #13
  %114 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %113, ptr noundef nonnull @.str, i32 noundef 1571, i32 noundef 369, ptr noundef %114) #16
          to label %120 unwind label %115

115:                                              ; preds = %112
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %113) #13
  br label %127

117:                                              ; preds = %105
  %118 = call ptr @__cxa_allocate_exception(i64 48) #13
  %119 = load ptr, ptr %25, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %118, ptr noundef nonnull @.str, i32 noundef 1575, i32 noundef 375, ptr noundef %119) #16
          to label %120 unwind label %123

120:                                              ; preds = %117, %112, %100, %95, %88, %83, %76, %71, %63
  %121 = phi ptr [ %64, %63 ], [ %72, %71 ], [ %77, %76 ], [ %84, %83 ], [ %89, %88 ], [ %96, %95 ], [ %101, %100 ], [ %113, %112 ], [ %118, %117 ]
  invoke void @__cxa_throw(ptr nonnull %121, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %122 unwind label %41

122:                                              ; preds = %120
  unreachable

123:                                              ; preds = %117
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %118) #13
  br label %127

125:                                              ; preds = %107, %109, %53, %111, %108, %70, %62, %61, %60
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  br label %126

126:                                              ; preds = %21, %125
  ret void

127:                                              ; preds = %123, %115, %103, %98, %91, %86, %79, %74, %66, %41
  %128 = phi { ptr, i32 } [ %42, %41 ], [ %124, %123 ], [ %116, %115 ], [ %104, %103 ], [ %99, %98 ], [ %92, %91 ], [ %87, %86 ], [ %80, %79 ], [ %75, %74 ], [ %67, %66 ]
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  br label %129

129:                                              ; preds = %127, %39
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  br label %131

131:                                              ; preds = %129, %19
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %20, %19 ]
  resume { ptr, i32 } %132
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !500
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !501
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !502
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesGroupInfo26getCheckElementConsistencyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !503, !range !223, !noundef !224
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !487, !range !223, !noundef !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !492
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !475, !range !223, !noundef !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !480
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
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !412 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !504, !range !223, !noundef !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !450

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !462
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !412 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !505, !range !223, !noundef !224
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !450

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !447
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator19postParseValidationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !274 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 align 2 !prof !506 {
  %5 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #16
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  %6 = load i16, ptr %2, align 2, !tbaa !247
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %58, label %8, !prof !507

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %10 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %9) #16
  %11 = icmp ne i16 %5, 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 10
  %13 = load i8, ptr %12, align 8, !range !223
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %17, label %16, !prof !508

16:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext 32) #16
  br label %17

17:                                               ; preds = %16, %8
  %18 = load i16, ptr %2, align 2, !tbaa !247
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %52, label %20, !prof !509

20:                                               ; preds = %17
  %21 = icmp eq i16 %5, 1
  br label %22

22:                                               ; preds = %20, %45
  %23 = phi i16 [ %18, %20 ], [ %50, %45 ]
  %24 = phi ptr [ %2, %20 ], [ %49, %45 ]
  %25 = phi i8 [ 0, %20 ], [ %47, %45 ]
  br label %26

26:                                               ; preds = %22, %40
  %27 = phi i16 [ %23, %22 ], [ %42, %40 ]
  %28 = phi ptr [ %24, %22 ], [ %41, %40 ]
  %29 = phi i1 [ false, %22 ], [ true, %40 ]
  br i1 %21, label %30, label %33, !prof !510

30:                                               ; preds = %26
  %31 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %10, i16 noundef zeroext %23) #16
  %32 = select i1 %31, i16 32, i16 %23
  br label %45

33:                                               ; preds = %26
  %34 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %10, i16 noundef zeroext %27) #16
  br i1 %29, label %35, label %44, !prof !510

35:                                               ; preds = %33
  br i1 %34, label %40, label %36

36:                                               ; preds = %35
  %37 = and i8 %25, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext 32) #16
  br label %45

40:                                               ; preds = %44, %35
  %41 = getelementptr inbounds i16, ptr %28, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !247
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %52, label %26, !prof !511, !llvm.loop !512

44:                                               ; preds = %33
  br i1 %34, label %40, label %45, !prof !510

45:                                               ; preds = %44, %30, %36, %39
  %46 = phi ptr [ %24, %30 ], [ %28, %39 ], [ %28, %36 ], [ %28, %44 ]
  %47 = phi i8 [ %25, %30 ], [ 1, %39 ], [ 1, %36 ], [ 1, %44 ]
  %48 = phi i16 [ %32, %30 ], [ %27, %39 ], [ %27, %36 ], [ %27, %44 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %48) #16
  %49 = getelementptr inbounds i16, ptr %46, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !247
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %22, !prof !513, !llvm.loop !512

52:                                               ; preds = %45, %40, %17
  %53 = phi ptr [ %2, %17 ], [ %41, %40 ], [ %49, %45 ]
  %54 = getelementptr inbounds i16, ptr %53, i64 -1
  %55 = load i16, ptr %54, align 2, !tbaa !247
  %56 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %10, i16 noundef zeroext %55) #16
  %57 = zext i1 %56 to i8
  store i8 %57, ptr %12, align 8, !tbaa !237
  br label %58

58:                                               ; preds = %52, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !514 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 4, !tbaa !515
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !506 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !516
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !517 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !518
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !519 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !520
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !526
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !527
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo12elementCountEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !528
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !529 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !530
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !531
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !527
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #16
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XercesGroupInfo9elementAtEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !528
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !465 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !532 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar26getValidSubstitutionGroupsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !533
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !534
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !536
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !536
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !450

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !538
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.6", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !539
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !540 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 !prof !541 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_715SchemaValidator16getNonUnaryGroupEPNS_15ContentSpecNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #3 align 2 !prof !274 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %4 = and i32 %3, 14
  %5 = icmp eq i32 %4, 6
  %6 = and i32 %3, 7
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %7, %5
  br i1 %8, label %30, label %9

9:                                                ; preds = %2, %22
  %10 = phi ptr [ %23, %22 ], [ %1, %2 ]
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #16
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #16
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #16
  %24 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %23) #16
  %25 = and i32 %24, 14
  %26 = icmp eq i32 %25, 6
  %27 = and i32 %24, 7
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %28, %26
  br i1 %29, label %30, label %9

30:                                               ; preds = %22, %19, %16, %13, %9, %2
  %31 = phi ptr [ %1, %2 ], [ %10, %9 ], [ %10, %13 ], [ %10, %16 ], [ %10, %19 ], [ %23, %22 ]
  ret ptr %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 !prof !542 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !543
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 !prof !544 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !545
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 !prof !546 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !547
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 !prof !548 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 !prof !549 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 !prof !274 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i8 %5, ptr %0, align 8, !tbaa !550
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !552
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !553
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !554
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !555
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !212
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #16
  store ptr %15, ptr %8, align 8, !tbaa !554
  %16 = load i32, ptr %7, align 8, !tbaa !553
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715SchemaValidator28checkForPointlessOccurrencesEPNS_15ContentSpecNodeENS1_9NodeTypesEPNS_13ValueVectorOfIS2_EE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(186) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !274 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %8 = icmp eq ptr %5, null
  %9 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %2, ptr noundef %9, ptr noundef %3) #16
  br i1 %8, label %10, label %20

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %12 = icmp eq i32 %11, 1
  %13 = icmp eq i32 %6, 1
  %14 = and i1 %13, %12
  %15 = icmp eq i32 %7, 1
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0) #16
  %19 = load ptr, ptr %18, align 8, !tbaa !270
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %2, ptr noundef nonnull %5, ptr noundef %3) #16
  br label %21

21:                                               ; preds = %10, %20, %17
  %22 = phi ptr [ %1, %20 ], [ %19, %17 ], [ %1, %10 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator18checkNameAndTypeOKEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiS5_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %9 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #16
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %11 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %10) #16
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %13 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %12) #16
  %14 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %15 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #16
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %13, ptr noundef %15) #16
  %17 = icmp eq i32 %9, %11
  %18 = and i1 %17, %16
  br i1 %18, label %26, label %19

19:                                               ; preds = %7
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1703, i32 noundef 356, ptr noundef %22) #16
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %113

26:                                               ; preds = %7
  %27 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !269
  %28 = icmp eq i32 %9, %27
  br i1 %28, label %112, label %29

29:                                               ; preds = %26
  %30 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %31 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %32 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %33 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33) #16
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %37 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull @.str, i32 noundef 1713, i32 noundef 355, ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %38) #16
          to label %39 unwind label %40

39:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

40:                                               ; preds = %35
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %113

42:                                               ; preds = %29
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !263
  %45 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %44) #16
  %46 = load ptr, ptr %45, align 8, !tbaa !212
  %47 = getelementptr inbounds ptr, ptr %46, i64 10
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef %9) #16
  %50 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %51 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %50) #16
  %52 = icmp eq i32 %9, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load ptr, ptr %43, align 8, !tbaa !263
  %55 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %54, ptr noundef %49) #16
  br label %56

56:                                               ; preds = %53, %42
  %57 = phi ptr [ %55, %53 ], [ %1, %42 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %112, label %59

59:                                               ; preds = %56
  %60 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator11findElementEijPKtPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr nonnull align 8 poison, i32 noundef %3, i32 noundef %9, ptr noundef %13, ptr noundef nonnull %57, ptr noundef null) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %112, label %62

62:                                               ; preds = %59
  %63 = tail call noundef ptr @_ZN11xercesc_2_715SchemaValidator11findElementEijPKtPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr nonnull align 8 poison, i32 noundef %5, i32 noundef %9, ptr noundef %15, ptr noundef nonnull %57, ptr noundef %6) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %112, label %65

65:                                               ; preds = %62
  %66 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %60) #16
  %67 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %63) #16
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  %70 = and i32 %66, 1
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %71, %69
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull @.str, i32 noundef 1745, i32 noundef 357, ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %76) #16
          to label %77 unwind label %78

77:                                               ; preds = %73
  tail call void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

78:                                               ; preds = %73
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %113

80:                                               ; preds = %65
  %81 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %60) #16
  %82 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %63) #16
  %83 = icmp eq ptr %82, null
  %84 = and i32 %67, 4
  %85 = icmp eq i32 %84, 0
  %86 = or i1 %85, %83
  br i1 %86, label %99, label %87

87:                                               ; preds = %80
  %88 = and i32 %66, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %81, ptr noundef nonnull %82) #16
  br i1 %91, label %99, label %92

92:                                               ; preds = %90, %87
  %93 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %94 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %93, ptr noundef nonnull @.str, i32 noundef 1754, i32 noundef 358, ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %95) #16
          to label %96 unwind label %97

96:                                               ; preds = %92
  tail call void @__cxa_throw(ptr nonnull %93, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

97:                                               ; preds = %92
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %113

99:                                               ; preds = %90, %80
  %100 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %60) #16
  %101 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %63) #16
  %102 = and i32 %101, %100
  %103 = icmp eq i32 %102, %101
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %106 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str, i32 noundef 1761, i32 noundef 359, ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %107) #16
          to label %108 unwind label %109

108:                                              ; preds = %104
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

109:                                              ; preds = %104
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %113

111:                                              ; preds = %99
  tail call void @_ZN11xercesc_2_715SchemaValidator18checkICRestrictionEPKNS_17SchemaElementDeclES3_PKtS5_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %60, ptr noundef nonnull %63, ptr noundef %13, ptr noundef %15) #16
  tail call void @_ZN11xercesc_2_715SchemaValidator12checkTypesOKEPKNS_17SchemaElementDeclES3_PKt(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %60, ptr noundef nonnull %63, ptr noundef %13) #16
  br label %112

112:                                              ; preds = %56, %111, %62, %59, %26
  ret void

113:                                              ; preds = %78, %109, %97, %40, %24
  %114 = phi ptr [ %74, %78 ], [ %105, %109 ], [ %93, %97 ], [ %36, %40 ], [ %20, %24 ]
  %115 = phi { ptr, i32 } [ %79, %78 ], [ %110, %109 ], [ %98, %97 ], [ %41, %40 ], [ %25, %24 ]
  tail call void @__cxa_free_exception(ptr %114) #13
  resume { ptr, i32 } %115
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator13checkNSCompatEPKNS_15ContentSpecNodeES3_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  br i1 %3, label %5, label %20

5:                                                ; preds = %4
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #16
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %14 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %13) #16
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 1653, i32 noundef 355, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %16) #16
          to label %17 unwind label %18

17:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

18:                                               ; preds = %11
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %34

20:                                               ; preds = %5, %4
  %21 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %22 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #16
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator26wildcardEltAllowsNamespaceEPKNS_15ContentSpecNodeEj(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %2, i32 noundef %22) #16
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %26 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %27 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %26) #16
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 1659, i32 noundef 354, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %29) #16
          to label %30 unwind label %31

30:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

31:                                               ; preds = %24
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %34

33:                                               ; preds = %20
  ret void

34:                                               ; preds = %31, %18
  %35 = phi ptr [ %25, %31 ], [ %12, %18 ]
  %36 = phi { ptr, i32 } [ %32, %31 ], [ %19, %18 ]
  tail call void @__cxa_free_exception(ptr %35) #13
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator21checkRecurseAsIfGroupEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiPKS3_iPNS_13ValueVectorOfIS4_EEPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %9 = alloca ptr, align 8
  %10 = alloca %"class.xercesc_2_7::ValueVectorOf.7", align 8
  %11 = alloca %"class.xercesc_2_7::ContentSpecNode", align 8
  store ptr %2, ptr %9, align 8, !tbaa !270
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !232
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 1, ptr noundef %14, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #13
  %15 = load ptr, ptr %13, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %11, i32 noundef %12, ptr noundef %2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %15) #16
          to label %16 unwind label %21

16:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
          to label %17 unwind label %23

17:                                               ; preds = %16
  %18 = call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 4
  invoke void @_ZN11xercesc_2_715SchemaValidator12checkRecurseEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiPNS_13ValueVectorOfIPS3_EES5_iS9_PKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %11, i32 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %20) #16
          to label %25 unwind label %23

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %26

23:                                               ; preds = %17, %16
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #15
  br label %26

25:                                               ; preds = %17
  call void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #13
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  ret void

26:                                               ; preds = %23, %21
  %27 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #13
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator13checkNSSubsetEPKNS_15ContentSpecNodeES3_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %5 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #16
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1995, i32 noundef 370, ptr noundef %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %26

16:                                               ; preds = %3
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isWildCardEltSubsetEPKNS_15ContentSpecNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 1999, i32 noundef 371, ptr noundef %21) #16
          to label %22 unwind label %23

22:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %26

25:                                               ; preds = %16
  ret void

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %19, %23 ], [ %10, %14 ]
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %27) #13
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator30checkNSRecurseCheckCardinalityEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_b(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  br i1 %6, label %10, label %21

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %8, i32 noundef %9, i32 noundef %11, i32 noundef %12) #16
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 2055, i32 noundef 372, ptr noundef %17) #16
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %10, %7
  %22 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %25, %21
  ret void

25:                                               ; preds = %21, %25
  %26 = phi i32 [ %29, %25 ], [ 0, %21 ]
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %26) #16
  %28 = load ptr, ptr %27, align 8, !tbaa !270
  tail call void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %28, i32 noundef %4, ptr noundef %5, i32 noundef -1, ptr noundef null, i1 noundef zeroext false) #16
  %29 = add nuw i32 %26, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %24, label %25, !llvm.loop !556
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator12checkRecurseEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEiPNS_13ValueVectorOfIPS3_EES5_iS9_PKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #16
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 1929, i32 noundef 364, ptr noundef %19) #16
          to label %20 unwind label %21

20:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %94

23:                                               ; preds = %10
  %24 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %25 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %23, %64
  %28 = phi i1 [ %66, %64 ], [ true, %23 ]
  %29 = phi i32 [ %65, %64 ], [ 0, %23 ]
  %30 = phi i32 [ %37, %64 ], [ 0, %23 ]
  %31 = icmp ult i32 %30, %25
  br i1 %31, label %32, label %68

32:                                               ; preds = %27, %52
  %33 = phi i32 [ %53, %52 ], [ %30, %27 ]
  %34 = phi i32 [ %37, %52 ], [ %30, %27 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %33) #16
  %36 = load ptr, ptr %35, align 8, !tbaa !270
  %37 = add i32 %34, 1
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %29) #16
          to label %39 unwind label %41

39:                                               ; preds = %32
  %40 = load ptr, ptr %38, align 8, !tbaa !270
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %40, i32 noundef %3, ptr noundef %36, i32 noundef %6, ptr noundef %8, i1 noundef zeroext true) #16
          to label %64 unwind label %41

41:                                               ; preds = %39, %32
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %43 = extractvalue { ptr, i32 } %42, 1
  %44 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %41
  %47 = extractvalue { ptr, i32 } %42, 0
  %48 = tail call ptr @__cxa_begin_catch(ptr %47) #13
  br i1 %9, label %49, label %55

49:                                               ; preds = %46
  tail call void @__cxa_end_catch()
  %50 = add nuw i32 %33, 1
  %51 = icmp ult i32 %50, %25
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %59
  %53 = phi i32 [ %50, %49 ], [ %61, %59 ]
  br label %32, !llvm.loop !557

54:                                               ; preds = %49
  br i1 %28, label %85, label %93

55:                                               ; preds = %46
  %56 = invoke noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %36) #16
          to label %59 unwind label %57

57:                                               ; preds = %55
  %58 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %97 unwind label %99

59:                                               ; preds = %55
  %60 = icmp eq i32 %56, 0
  tail call void @__cxa_end_catch()
  %61 = add nuw i32 %33, 1
  %62 = icmp ult i32 %61, %25
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %52, label %68

64:                                               ; preds = %39
  %65 = add nuw i32 %29, 1
  %66 = icmp ult i32 %65, %24
  %67 = icmp eq i32 %65, %24
  br i1 %67, label %68, label %27, !llvm.loop !558

68:                                               ; preds = %64, %27, %59, %23
  %69 = phi i1 [ false, %23 ], [ %28, %59 ], [ %28, %27 ], [ %66, %64 ]
  %70 = phi i32 [ 0, %23 ], [ 365, %59 ], [ 365, %27 ], [ 0, %64 ]
  %71 = phi i32 [ 0, %23 ], [ %37, %59 ], [ %30, %27 ], [ %37, %64 ]
  %72 = or i1 %69, %9
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = icmp ult i32 %71, %25
  br i1 %74, label %78, label %93

75:                                               ; preds = %78
  %76 = add i32 %79, 1
  %77 = icmp eq i32 %76, %25
  br i1 %77, label %93, label %78, !llvm.loop !559

78:                                               ; preds = %73, %75
  %79 = phi i32 [ %76, %75 ], [ %71, %73 ]
  %80 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %79) #16
  %81 = load ptr, ptr %80, align 8, !tbaa !270
  %82 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %81) #16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %75, label %85

84:                                               ; preds = %68
  br i1 %69, label %85, label %93

85:                                               ; preds = %78, %54, %84
  %86 = phi i32 [ %70, %84 ], [ 365, %54 ], [ 365, %78 ]
  %87 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %88 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %87, ptr noundef nonnull @.str, i32 noundef 1985, i32 noundef %86, ptr noundef %89) #16
          to label %90 unwind label %91

90:                                               ; preds = %85
  tail call void @__cxa_throw(ptr nonnull %87, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %94

93:                                               ; preds = %75, %54, %73, %84
  ret void

94:                                               ; preds = %21, %91
  %95 = phi ptr [ %87, %91 ], [ %17, %21 ]
  %96 = phi { ptr, i32 } [ %92, %91 ], [ %22, %21 ]
  tail call void @__cxa_free_exception(ptr %95) #13
  br label %97

97:                                               ; preds = %41, %94, %57
  %98 = phi { ptr, i32 } [ %58, %57 ], [ %96, %94 ], [ %42, %41 ]
  resume { ptr, i32 } %98

99:                                               ; preds = %57
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  tail call void @__clang_call_terminate(ptr %101) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator21checkRecurseUnorderedEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor.8", align 8
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #16
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 2079, i32 noundef 364, ptr noundef %19) #16
          to label %20 unwind label %21

20:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  tail call void @__cxa_free_exception(ptr %17) #13
  br label %114

25:                                               ; preds = %9
  %26 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %27 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !232
  %30 = zext i32 %27 to i64
  %31 = load ptr, ptr %29, align 8, !tbaa !212
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %30) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %35 = load ptr, ptr %28, align 8, !tbaa !232
  call void @_ZN11xercesc_2_712ArrayJanitorIbEC2EPbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %34, ptr noundef %35) #16
  %36 = icmp eq i32 %27, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr align 1 %34, i8 0, i64 %30, i1 false), !tbaa !560
  br label %38

38:                                               ; preds = %37, %25
  %39 = icmp eq i32 %26, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %75, %38
  br i1 %36, label %110, label %78

41:                                               ; preds = %38, %75
  %42 = phi i32 [ %76, %75 ], [ 0, %38 ]
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %42) #16
          to label %44 unwind label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %43, align 8, !tbaa !270
  br i1 %36, label %98, label %50

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = extractvalue { ptr, i32 } %47, 1
  br label %111

50:                                               ; preds = %44, %68
  %51 = phi i32 [ %69, %68 ], [ 0, %44 ]
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %51) #16
          to label %53 unwind label %60

53:                                               ; preds = %50
  %54 = load ptr, ptr %52, align 8, !tbaa !270
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %45, i32 noundef %4, ptr noundef %54, i32 noundef %7, ptr noundef %8, i1 noundef zeroext true) #16
          to label %55 unwind label %60

55:                                               ; preds = %53
  %56 = zext i32 %51 to i64
  %57 = getelementptr inbounds i8, ptr %34, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !560, !range !223, !noundef !224
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %75, label %98

60:                                               ; preds = %53, %50
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %62 = extractvalue { ptr, i32 } %61, 0
  %63 = extractvalue { ptr, i32 } %61, 1
  %64 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %60
  %67 = call ptr @__cxa_begin_catch(ptr %62) #13
  invoke void @__cxa_end_catch()
          to label %68 unwind label %71

68:                                               ; preds = %66
  %69 = add nuw i32 %51, 1
  %70 = icmp eq i32 %69, %27
  br i1 %70, label %98, label %50, !llvm.loop !561

71:                                               ; preds = %66
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = extractvalue { ptr, i32 } %72, 0
  %74 = extractvalue { ptr, i32 } %72, 1
  br label %111

75:                                               ; preds = %55
  store i8 1, ptr %57, align 1, !tbaa !560
  %76 = add nuw i32 %42, 1
  %77 = icmp eq i32 %76, %26
  br i1 %77, label %40, label %41, !llvm.loop !562

78:                                               ; preds = %40, %95
  %79 = phi i64 [ %96, %95 ], [ 0, %40 ]
  %80 = getelementptr inbounds i8, ptr %34, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !560, !range !223, !noundef !224
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = trunc i64 %79 to i32
  %85 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %84) #16
          to label %86 unwind label %91

86:                                               ; preds = %83
  %87 = load ptr, ptr %85, align 8, !tbaa !270
  %88 = invoke noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %87) #16
          to label %89 unwind label %91

89:                                               ; preds = %86
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %95, label %98

91:                                               ; preds = %86, %83
  %92 = landingpad { ptr, i32 }
          cleanup
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = extractvalue { ptr, i32 } %92, 1
  br label %111

95:                                               ; preds = %78, %89
  %96 = add nuw nsw i64 %79, 1
  %97 = icmp eq i64 %96, %30
  br i1 %97, label %110, label %78, !llvm.loop !563

98:                                               ; preds = %55, %44, %68, %89
  %99 = call ptr @__cxa_allocate_exception(i64 48) #13
  %100 = load ptr, ptr %28, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %99, ptr noundef nonnull @.str, i32 noundef 2140, i32 noundef 373, ptr noundef %100) #16
          to label %101 unwind label %102

101:                                              ; preds = %98
  invoke void @__cxa_throw(ptr nonnull %99, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %119 unwind label %106

102:                                              ; preds = %98
  %103 = landingpad { ptr, i32 }
          cleanup
  %104 = extractvalue { ptr, i32 } %103, 0
  %105 = extractvalue { ptr, i32 } %103, 1
  call void @__cxa_free_exception(ptr %99) #13
  br label %111

106:                                              ; preds = %101
  %107 = landingpad { ptr, i32 }
          cleanup
  %108 = extractvalue { ptr, i32 } %107, 0
  %109 = extractvalue { ptr, i32 } %107, 1
  br label %111

110:                                              ; preds = %95, %40
  call void @_ZN11xercesc_2_712ArrayJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  ret void

111:                                              ; preds = %60, %46, %71, %106, %102, %91
  %112 = phi i32 [ %109, %106 ], [ %105, %102 ], [ %94, %91 ], [ %49, %46 ], [ %74, %71 ], [ %63, %60 ]
  %113 = phi ptr [ %108, %106 ], [ %104, %102 ], [ %93, %91 ], [ %48, %46 ], [ %73, %71 ], [ %62, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  br label %114

114:                                              ; preds = %111, %21
  %115 = phi i32 [ %112, %111 ], [ %24, %21 ]
  %116 = phi ptr [ %113, %111 ], [ %23, %21 ]
  %117 = insertvalue { ptr, i32 } poison, ptr %116, 0
  %118 = insertvalue { ptr, i32 } %117, i32 %115, 1
  resume { ptr, i32 } %118

119:                                              ; preds = %101
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator14checkMapAndSumEPNS_13SchemaGrammarEPKNS_15ContentSpecNodeEPNS_13ValueVectorOfIPS3_EEiS7_S9_iPKNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %10 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %11 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %13 = mul nsw i32 %12, %10
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %15 = icmp eq i32 %14, -1
  %16 = mul nsw i32 %14, %10
  %17 = select i1 %15, i32 -1, i32 %16
  %18 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %19 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %13, i32 noundef %17, i32 noundef %18, i32 noundef %19) #16
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = icmp sgt i32 %10, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = icmp sgt i32 %11, 0
  br label %36

25:                                               ; preds = %9
  %26 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 2166, i32 noundef 364, ptr noundef %28) #16
          to label %29 unwind label %30

29:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %43
  %33 = add nuw nsw i32 %37, 1
  %34 = icmp eq i32 %33, %10
  br i1 %34, label %35, label %36, !llvm.loop !564

35:                                               ; preds = %32, %21
  ret void

36:                                               ; preds = %23, %32
  %37 = phi i32 [ 0, %23 ], [ %33, %32 ]
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %37) #16
  %39 = load ptr, ptr %38, align 8, !tbaa !270
  br i1 %24, label %40, label %55

40:                                               ; preds = %36, %50
  %41 = phi i32 [ %53, %50 ], [ 0, %36 ]
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %41) #16
          to label %43 unwind label %45

43:                                               ; preds = %40
  %44 = load ptr, ptr %42, align 8, !tbaa !270
  invoke void @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %39, i32 noundef %4, ptr noundef %44, i32 noundef %7, ptr noundef %8, i1 noundef zeroext true) #16
          to label %32 unwind label %45

45:                                               ; preds = %43, %40
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %47 = extractvalue { ptr, i32 } %46, 1
  %48 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #13
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = extractvalue { ptr, i32 } %46, 0
  %52 = tail call ptr @__cxa_begin_catch(ptr %51) #13
  tail call void @__cxa_end_catch()
  %53 = add nuw nsw i32 %41, 1
  %54 = icmp slt i32 %53, %11
  br i1 %54, label %40, label %55, !llvm.loop !565

55:                                               ; preds = %36, %50
  %56 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %57 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull @.str, i32 noundef 2189, i32 noundef 374, ptr noundef %58) #16
          to label %59 unwind label %60

59:                                               ; preds = %55
  tail call void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %30, %60
  %63 = phi ptr [ %56, %60 ], [ %26, %30 ]
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %63) #13
  br label %65

65:                                               ; preds = %45, %62
  %66 = phi { ptr, i32 } [ %64, %62 ], [ %46, %45 ]
  resume { ptr, i32 } %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !555
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !554
  %6 = load ptr, ptr %3, align 8, !tbaa !212
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(186) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !274 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %4, %29
  %8 = phi ptr [ %30, %29 ], [ %2, %4 ]
  %9 = phi i32 [ %12, %29 ], [ %1, %4 ]
  %10 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMinOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode12getMaxOccursEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  %13 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = and i32 %12, 15
  %17 = add nsw i32 %16, -6
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %7
  store ptr %8, ptr %5, align 8, !tbaa !270
  br label %38

20:                                               ; preds = %15
  %21 = icmp ne i32 %10, 1
  %22 = icmp ne i32 %11, 1
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr %8, ptr %5, align 8, !tbaa !270
  br label %38

25:                                               ; preds = %20
  %26 = icmp eq ptr %13, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  br label %29

29:                                               ; preds = %27, %35
  %30 = phi ptr [ %28, %27 ], [ %13, %35 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %7

32:                                               ; preds = %25
  %33 = and i32 %9, 15
  %34 = icmp eq i32 %33, %16
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call noundef ptr @_ZN11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  tail call void @_ZN11xercesc_2_715SchemaValidator14gatherChildrenENS_15ContentSpecNode9NodeTypesEPS1_PNS_13ValueVectorOfIS3_EE(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %12, ptr noundef %36, ptr noundef %3) #16
  br label %29

37:                                               ; preds = %32
  store ptr %8, ptr %5, align 8, !tbaa !270
  br label %38

38:                                               ; preds = %24, %37, %19
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %39

39:                                               ; preds = %29, %38, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !552
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !552
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !555
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !554
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !270
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !554
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !552
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !270
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !552
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isOccurrenceRangeOKEiiii(ptr noundef nonnull align 8 dereferenceable(186) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %6 = icmp slt i32 %1, %3
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %4, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, -1
  %11 = icmp sgt i32 %2, %4
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %7, %9, %13
  %15 = phi i1 [ false, %13 ], [ true, %9 ], [ true, %7 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 !prof !566 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !567 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !385
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator26wildcardEltAllowsNamespaceEPKNS_15ContentSpecNodeEj(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !274 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %5 = and i32 %4, 15
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %9 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #16
  %10 = icmp eq i32 %5, 8
  %11 = icmp eq i32 %9, %2
  br i1 %10, label %12, label %13

12:                                               ; preds = %7
  br i1 %11, label %19, label %18

13:                                               ; preds = %7
  br i1 %11, label %18, label %14

14:                                               ; preds = %13
  %15 = tail call noundef ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %16 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %15) #16
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %14, %12
  br label %19

19:                                               ; preds = %18, %12, %14, %3
  %20 = phi i1 [ true, %3 ], [ false, %18 ], [ true, %12 ], [ true, %14 ]
  ret i1 %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715SchemaValidator11findElementEijPKtPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 !prof !274 {
  %7 = load ptr, ptr %4, align 8, !tbaa !212
  %8 = getelementptr inbounds ptr, ptr %7, i64 11
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %1) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load ptr, ptr %4, align 8, !tbaa !212
  %14 = getelementptr inbounds ptr, ptr %13, i64 11
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef -2) #16
  %17 = icmp eq ptr %16, null
  %18 = icmp ne ptr %5, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %31

20:                                               ; preds = %12, %28
  %21 = phi ptr [ %29, %28 ], [ %5, %12 ]
  %22 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %21) #16
  %23 = load ptr, ptr %4, align 8, !tbaa !212
  %24 = getelementptr inbounds ptr, ptr %23, i64 11
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %22) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %21) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !568

31:                                               ; preds = %28, %20, %12, %6
  %32 = phi ptr [ %10, %6 ], [ %16, %12 ], [ null, %28 ], [ %26, %20 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator18checkICRestrictionEPKNS_17SchemaElementDeclES3_PKtS5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %7 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %2) #16
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %7, 0
  br label %21

13:                                               ; preds = %5
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 1819, i32 noundef 361, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %16) #16
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %41

20:                                               ; preds = %38, %9
  ret void

21:                                               ; preds = %11, %38
  %22 = phi i32 [ 0, %11 ], [ %39, %38 ]
  %23 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %1, i32 noundef %22) #16
  br i1 %12, label %31, label %27

24:                                               ; preds = %27
  %25 = add nuw i32 %28, 1
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %31, label %27, !llvm.loop !569

27:                                               ; preds = %21, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %21 ]
  %29 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %2, i32 noundef %28) #16
  %30 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %23, ptr noundef nonnull align 8 dereferenceable(52) %29) #16
  br i1 %30, label %38, label %24

31:                                               ; preds = %21, %24
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1836, i32 noundef 362, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %34) #16
          to label %35 unwind label %36

35:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %41

38:                                               ; preds = %27
  %39 = add nuw i32 %22, 1
  %40 = icmp eq i32 %39, %6
  br i1 %40, label %20, label %21, !llvm.loop !570

41:                                               ; preds = %36, %18
  %42 = phi ptr [ %32, %36 ], [ %14, %18 ]
  %43 = phi { ptr, i32 } [ %37, %36 ], [ %19, %18 ]
  tail call void @__cxa_free_exception(ptr %42) #13
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SchemaValidator12checkTypesOKEPKNS_17SchemaElementDeclES3_PKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %5 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %2) #16
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %9 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %2) #16
  %10 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = icmp eq i32 %5, 5
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 1858, i32 noundef 360, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17) #16
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %64

21:                                               ; preds = %12
  %22 = icmp eq ptr %8, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %2) #16
  %25 = icmp ne ptr %9, null
  %26 = icmp eq ptr %24, null
  %27 = or i1 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #16
  %30 = load ptr, ptr %24, align 8, !tbaa !212
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(104) %24, ptr noundef %29) #16
  br i1 %33, label %63, label %34

34:                                               ; preds = %28, %23
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 1867, i32 noundef 360, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %37) #16
          to label %38 unwind label %39

38:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %64

41:                                               ; preds = %21, %7
  %42 = icmp eq ptr %8, %9
  br i1 %42, label %63, label %43

43:                                               ; preds = %41
  %44 = icmp eq ptr %8, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %43, %49
  %46 = phi ptr [ %50, %49 ], [ %8, %43 ]
  %47 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo12getDerivedByEv(ptr noundef nonnull align 8 dereferenceable(176) %46) #16
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo22getBaseComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(176) %46) #16
  %51 = icmp ne ptr %50, null
  %52 = icmp ne ptr %50, %9
  %53 = and i1 %51, %52
  br i1 %53, label %45, label %54, !llvm.loop !571

54:                                               ; preds = %49
  %55 = icmp eq ptr %50, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %45, %43, %54
  %57 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %58 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !232
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str, i32 noundef 1886, i32 noundef 360, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %59) #16
          to label %60 unwind label %61

60:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %64

63:                                               ; preds = %28, %41, %54, %4
  ret void

64:                                               ; preds = %61, %39, %19
  %65 = phi ptr [ %57, %61 ], [ %35, %39 ], [ %15, %19 ]
  %66 = phi { ptr, i32 } [ %62, %61 ], [ %40, %39 ], [ %20, %19 ]
  tail call void @__cxa_free_exception(ptr %65) #13
  resume { ptr, i32 } %66
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #4 comdat align 2 !prof !572 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !573
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !574

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !575 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !573
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !576

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #16
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_718IdentityConstrainteqERKS0_(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #4 comdat align 2 !prof !577 {
  %8 = zext i1 %4 to i8
  %9 = zext i1 %5 to i8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !578
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %2, ptr %12, align 8, !tbaa !226
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  store ptr %3, ptr %13, align 8, !tbaa !229
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  store i32 %1, ptr %14, align 8, !tbaa !543
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  store i8 %8, ptr %15, align 4, !tbaa !215
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 %9, ptr %16, align 1, !tbaa !227
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %17, align 8, !tbaa !545
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %18, align 4, !tbaa !547
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715SchemaValidator19isWildCardEltSubsetEPKNS_15ContentSpecNodeES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 !prof !274 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %5 = and i32 %4, 15
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %10 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #16
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %12 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %11) #16
  %13 = and i32 %8, 15
  %14 = icmp eq i32 %13, 7
  %15 = icmp eq i32 %5, 7
  %16 = and i1 %15, %14
  %17 = icmp eq i32 %10, %12
  %18 = and i1 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %7
  %20 = icmp eq i32 %13, 8
  %21 = select i1 %17, i32 8, i32 7
  %22 = icmp eq i32 %5, %21
  %23 = and i1 %20, %22
  br label %24

24:                                               ; preds = %19, %7, %3
  %25 = phi i1 [ true, %3 ], [ true, %7 ], [ %23, %19 ]
  ret i1 %25
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIbEC2EPbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !579
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.8", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !581
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIbED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIbE5resetEPb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator10getGrammarEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !582
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator10setGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !583 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !582
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator10handlesDTDEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715SchemaValidator13handlesSchemaEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 comdat align 2 !prof !584 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !585 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !504
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !458
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !462
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 6
  store ptr %3, ptr %9, align 8, !tbaa !467
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %19, !prof !429

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %13 = load ptr, ptr %9, align 8, !tbaa !467
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, i32 noundef 395, i32 noundef 15, ptr noundef %13) #16
          to label %14 unwind label %15

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %23 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #13
  br label %21

17:                                               ; preds = %19, %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  invoke void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !412 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 5
  store i32 -1, ptr %2, align 8, !tbaa !587
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !588
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !462
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !463
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !458
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !412 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !588
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !450

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !589
  store ptr %7, ptr %2, align 8, !tbaa !588
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !264

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !587
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !587
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPoolEnumerator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !591
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !429

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !592
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !270
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !593

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !587
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !293, !llvm.loop !594

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !588
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !595
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !595
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !597
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !598
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !270
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !401 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !599
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !575 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !599
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !601

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !602
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.10", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !603
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !270
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !604 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !605 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !606 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !607
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !609
  %8 = load ptr, ptr %0, align 8, !tbaa !610
  %9 = load ptr, ptr %5, align 8, !tbaa !212
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #16
  store i32 %11, ptr %2, align 4, !tbaa !269
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !611
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !270
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !612

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !607
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !613
  %23 = load ptr, ptr %20, align 8, !tbaa !212
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #16
  br i1 %26, label %31, label %27, !prof !614

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !270
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !615, !llvm.loop !616

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !249 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
          to label %2 unwind label %25

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !617
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !468
  %6 = load ptr, ptr %3, align 8, !tbaa !212
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %25

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !617
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !592
  %13 = load ptr, ptr %10, align 8, !tbaa !212
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #16
          to label %16 unwind label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !618
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !212
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
  tail call void @__clang_call_terminate(ptr %27) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !619 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !591
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !509

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %39, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !463
  ret void

10:                                               ; preds = %5, %39
  %11 = phi i32 [ %3, %5 ], [ %40, %39 ]
  %12 = phi i64 [ 0, %5 ], [ %43, %39 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !592
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !270
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17, !prof !620

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !589
  %21 = load i8, ptr %7, align 8, !tbaa !621, !range !223, !noundef !224
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23, !prof !466

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !622
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !212
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(147) %24) #15
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !617
  %32 = load ptr, ptr %31, align 8, !tbaa !212
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %18) #16
  %35 = icmp eq ptr %20, null
  br i1 %35, label %36, label %17, !prof !623, !llvm.loop !624

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !tbaa !592
  %38 = load i32, ptr %2, align 8, !tbaa !591
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %38, %36 ], [ %11, %10 ]
  %41 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  store ptr null, ptr %42, align 8, !tbaa !270
  %43 = add nuw nsw i64 %12, 1
  %44 = zext i32 %40 to i64
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %10, label %8, !prof !625, !llvm.loop !626
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !627 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !628
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !630
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !628
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !631

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !630
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 198, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !632
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 !prof !231 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i8 %5, ptr %0, align 8, !tbaa !633
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !628
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !634
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !632
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !630
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !212
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #16
  store ptr %15, ptr %8, align 8, !tbaa !632
  %16 = load i32, ptr %7, align 8, !tbaa !634
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !630
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !632
  %6 = load ptr, ptr %3, align 8, !tbaa !212
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !628
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !408

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !630
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !632
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !628
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !408

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !630
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 156, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %30, label %16, !prof !408

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %20 = zext i32 %1 to i64
  %21 = zext i32 %14 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %20, %18 ], [ %25, %22 ]
  %24 = load ptr, ptr %19, align 8, !tbaa !632
  %25 = add nuw nsw i64 %23, 1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !270
  %28 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %27, ptr %28, align 8, !tbaa !270
  %29 = icmp eq i64 %25, %21
  br i1 %29, label %30, label %22, !llvm.loop !635

30:                                               ; preds = %22, %16, %13
  store i32 %14, ptr %3, align 4, !tbaa !628
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !363 {
  %3 = load ptr, ptr %0, align 8, !tbaa !360
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !636

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !362
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !637

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !212
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #16
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !360
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !362
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !628
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE10addElementERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !254 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !270
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !632
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !628
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  store ptr %3, ptr %9, align 8, !tbaa !270
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4, !tbaa !628
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !254 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !628
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !634
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !638

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !630
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !212
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #16
  %22 = load i32, ptr %3, align 4, !tbaa !628
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !639

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !630
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !632
  %31 = load ptr, ptr %28, align 8, !tbaa !212
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #16
  store ptr %21, ptr %29, align 8, !tbaa !632
  store i32 %13, ptr %6, align 8, !tbaa !634
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !632
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !270
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !270
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !prof !640, !llvm.loop !641

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !642 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !482
  %8 = load ptr, ptr %0, align 8, !tbaa !644
  %9 = load ptr, ptr %5, align 8, !tbaa !212
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #16
  store i32 %11, ptr %2, align 4, !tbaa !269
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !645
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !270
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !646

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !643
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !647
  %23 = load ptr, ptr %20, align 8, !tbaa !212
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #16
  br i1 %26, label %31, label %27, !prof !648

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !270
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !649, !llvm.loop !650

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !651 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !412 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !446
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !442
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !651 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %2 = load ptr, ptr %0, align 8, !tbaa !652
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !653
  %5 = load ptr, ptr %2, align 8, !tbaa !212
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !653
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !654
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !212
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !655 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  br i1 %2, label %48, label %3, !prof !656

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !448
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !509

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !657
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !653
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !270
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !658

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !659
  %23 = load i8, ptr %9, align 8, !tbaa !660, !range !223, !noundef !224
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !661

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !453
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !212
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !652
  %34 = load ptr, ptr %33, align 8, !tbaa !212
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #16
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !662, !llvm.loop !663

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !653
  %40 = load i32, ptr %4, align 8, !tbaa !448
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !270
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !664, !llvm.loop !665

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !655 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !657
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !442
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !666

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.13", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !659
  store ptr %7, ptr %2, align 8, !tbaa !442
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !667

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !446
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !446
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !447
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !448
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !293

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.12", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !653
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !270
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !668

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !446
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !669, !llvm.loop !670

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !442
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !274 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !478
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !671
  store ptr %7, ptr %2, align 8, !tbaa !478
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !479
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !479
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !480
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !482
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !645
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !270
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !479
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !672

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !478
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !479
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.2", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !478
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !412 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %2 = load ptr, ptr %0, align 8, !tbaa !644
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !645
  %5 = load ptr, ptr %2, align 8, !tbaa !212
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !645
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !643
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !212
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !412 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  br i1 %2, label %48, label %3, !prof !429

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !482
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !509

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !673
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !645
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !270
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !674

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.11", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !671
  %23 = load i8, ptr %9, align 8, !tbaa !675, !range !223, !noundef !224
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !676

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !419
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !212
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(176) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !644
  %34 = load ptr, ptr %33, align 8, !tbaa !212
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #16
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !677, !llvm.loop !678

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !645
  %40 = load i32, ptr %4, align 8, !tbaa !482
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !270
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !679, !llvm.loop !680

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !673
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !490
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !681
  store ptr %7, ptr %2, align 8, !tbaa !490
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !491
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !491
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !492
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !494
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !682
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !270
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !491
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !683

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !490
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !491
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator.4", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !490
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !274 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !412 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %2 = load ptr, ptr %0, align 8, !tbaa !684
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !682
  %5 = load ptr, ptr %2, align 8, !tbaa !212
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !682
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !685
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !212
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !412 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  br i1 %2, label %48, label %3, !prof !450

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !494
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !686
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !682
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !270
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.14", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !681
  %23 = load i8, ptr %9, align 8, !tbaa !687, !range !223, !noundef !224
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !496
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !212
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !684
  %34 = load ptr, ptr %33, align 8, !tbaa !212
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #16
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !688

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !682
  %40 = load i32, ptr %4, align 8, !tbaa !494
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !270
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !689

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.15", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !686
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !690
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !692
  %9 = load ptr, ptr %0, align 8, !tbaa !693
  %10 = load ptr, ptr %6, align 8, !tbaa !212
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #16
  store i32 %12, ptr %3, align 4, !tbaa !269
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !694
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !270
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !695
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !690
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !696
  %28 = load ptr, ptr %25, align 8, !tbaa !212
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #16
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !270
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !697

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !552
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !553
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !555
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !212
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #16
  %22 = load i32, ptr %3, align 4, !tbaa !552
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !555
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.7", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !554
  %31 = load ptr, ptr %28, align 8, !tbaa !212
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #16
  store ptr %21, ptr %29, align 8, !tbaa !554
  store i32 %13, ptr %6, align 8, !tbaa !553
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !554
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !270
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !270
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !698

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIbE5resetEPb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !274 {
  %3 = load ptr, ptr %0, align 8, !tbaa !579
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.8", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !581
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !212
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #16
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !579
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.8", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !581
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!210}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!35 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 339}
!36 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_715SchemaValidatorC2EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb, i64 3}
!41 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!42 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!43 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb, i64 3}
!44 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEED2Ev, i64 2}
!45 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!46 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 4}
!47 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_716XSDErrorReporterD2Ev, i64 3}
!48 = !{ptr @_ZN11xercesc_2_715SchemaValidatorD2Ev, ptr @_ZN11xercesc_2_712XMLValidatorD2Ev, i64 3}
!49 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEED2Ev, i64 3}
!50 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @__cxa_allocate_exception, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!52 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, i64 832910}
!53 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 496162}
!54 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, i64 336748}
!55 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 169993}
!56 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 169992}
!57 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 2}
!58 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 2}
!59 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, i64 509972}
!60 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv, i64 679964}
!61 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv, i64 509972}
!62 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv, i64 1}
!63 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv, i64 169991}
!64 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv, i64 169990}
!65 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 1}
!66 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, i64 1}
!67 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 1}
!68 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!69 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv, i64 688}
!70 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv, i64 169990}
!71 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, i64 1}
!72 = !{ptr @_ZN11xercesc_2_715SchemaValidator12checkContentEPNS_14XMLElementDeclEPPNS_5QNameEj, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!73 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 832911}
!74 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @__cxa_allocate_exception, i64 1}
!75 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv, i64 1}
!76 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!77 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, i64 832910}
!78 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj, i64 832910}
!79 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 832910}
!80 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!81 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!82 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!83 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!84 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!85 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!86 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @__cxa_allocate_exception, i64 1}
!87 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv, i64 1}
!88 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!89 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, i64 4843156}
!90 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!91 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!92 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv, i64 9748}
!93 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 9748}
!94 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 9748}
!95 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_75QName9getPrefixEv, i64 9748}
!96 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv, i64 9748}
!97 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 9748}
!98 = !{ptr @_ZNK11xercesc_2_715SchemaValidator11faultInAttrERNS_7XMLAttrERKNS_9XMLAttDefE, ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, i64 9748}
!99 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 201775}
!100 = !{ptr @_ZN11xercesc_2_77XMLAttr3setEjPKtS2_S2_NS_9XMLAttDef8AttTypesEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 201775}
!101 = !{ptr @_ZN11xercesc_2_715SchemaValidator5resetEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv, i64 3}
!102 = !{ptr @_ZN11xercesc_2_715SchemaValidator5resetEv, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 3}
!103 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE17removeAllElementsEv, i64 3}
!104 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_712XMLValidator10getScannerEv, i64 401820}
!105 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_710XMLScanner20getValidationContextEv, i64 401818}
!106 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 200910}
!107 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv, i64 200910}
!108 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv, i64 1}
!109 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!110 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 3}
!111 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory18getBuiltInRegistryEv, i64 3}
!112 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, i64 3}
!113 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_712SchemaAttDef20getDatatypeValidatorEv, i64 200909}
!114 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv, i64 200910}
!115 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 1}
!116 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 1}
!117 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, i64 1}
!118 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 1}
!119 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!120 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 1}
!121 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 1}
!122 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv, i64 1}
!123 = !{ptr @_ZN11xercesc_2_715SchemaValidator17validateAttrValueEPKNS_9XMLAttDefEPKtbPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 1}
!124 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE14findBucketElemEPKvRj, i64 108}
!125 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv, i64 832911}
!126 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4pushERKS2_, i64 832911}
!127 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo20getDatatypeValidatorEv, i64 496163}
!128 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_717SchemaElementDecl20getDatatypeValidatorEv, i64 336748}
!129 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 1}
!130 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1}
!131 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getAbstractEv, i64 496162}
!132 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 2}
!133 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 2}
!134 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv, i64 832911}
!135 = !{ptr @_ZN11xercesc_2_715SchemaValidator15validateElementEPKNS_14XMLElementDeclE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 832911}
!136 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4pushERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE10addElementERKS2_, i64 832911}
!137 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE14findBucketElemEPKvRj, i64 145}
!138 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_715GrammarResolver20getGrammarEnumeratorEv, i64 1}
!139 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE15hasMoreElementsEv, i64 2}
!140 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, i64 1}
!141 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, i64 20}
!142 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_714XMLElementDecl15getCreateReasonEv, i64 20}
!143 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_79XMLAttDef7getTypeEv, i64 8}
!144 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_, i64 2}
!145 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE15hasMoreElementsEv, i64 20}
!146 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE15hasMoreElementsEv, i64 5}
!147 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEE11nextElementEv, i64 5}
!148 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv, i64 5}
!149 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715ComplexTypeInfo30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorE, i64 5}
!150 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715SchemaValidator23checkParticleDerivationEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoE, i64 5}
!151 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715SchemaValidator26checkRefElementConsistencyEPNS_13SchemaGrammarEPKNS_15ComplexTypeInfoEPKNS_15XercesGroupInfoE, i64 6}
!152 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE11nextElementEv, i64 3}
!153 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_715XercesGroupInfo12getBaseGroupEv, i64 3}
!154 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_715XercesGroupInfo14getContentSpecEv, i64 4}
!155 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_715XercesGroupInfo8getScopeEv, i64 4}
!156 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_715SchemaValidator25checkParticleDerivationOkEPNS_13SchemaGrammarEPNS_15ContentSpecNodeEiS4_iPKNS_15ComplexTypeInfoEb, i64 2}
!157 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_715XercesGroupInfo26getCheckElementConsistencyEv, i64 3}
!158 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEE15hasMoreElementsEv, i64 3}
!159 = !{ptr @_ZN11xercesc_2_715SchemaValidator20preContentValidationEbb, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, i64 1}
!160 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @__cxa_allocate_exception, i64 1}
!161 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!162 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEE8findNextEv, i64 2}
!163 = !{ptr @_ZNK11xercesc_2_713SchemaGrammar17getElemEnumeratorEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, i64 1}
!164 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @__cxa_allocate_exception, i64 2}
!165 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!166 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @__cxa_throw, i64 1}
!167 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE11nextElementEv, ptr @__cxa_free_exception, i64 1}
!168 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!169 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEED2Ev, i64 1}
!170 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_7GrammarEED2Ev, i64 1}
!171 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv, i64 311300}
!172 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 311300}
!173 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_712XMLValidator12getReaderMgrEv, i64 311299}
!174 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentReaderEv, i64 311299}
!175 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 94552642923}
!176 = !{ptr @_ZN11xercesc_2_715SchemaValidator19normalizeWhiteSpaceEPNS_17DatatypeValidatorEPKtRNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 94553020546}
!177 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!178 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!179 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!180 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv, i64 3}
!181 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 31}
!182 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 96}
!183 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ENS0_9NodeTypesEPS0_S2_bbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 96}
!184 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEC2Ev, i64 1}
!185 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!186 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE5ResetEv, i64 1}
!187 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEC2EPNS_18RefHash3KeysIdPoolIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv, i64 1}
!188 = !{ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8resetKeyEv, ptr @_ZN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEE8findNextEv, i64 1}
!189 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!190 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!191 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!192 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!193 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!194 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEC2EjPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!195 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!196 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!197 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!198 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE15removeElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!199 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!200 = !{ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE10addElementERKS2_, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE19ensureExtraCapacityEj, i64 832911}
!201 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, i64 9}
!202 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, i64 9}
!203 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_7GrammarEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_7GrammarEE7isEmptyEv, i64 12}
!204 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, i64 1}
!205 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, i64 1}
!206 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv, i64 1}
!207 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, i64 1}
!208 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, i64 1}
!209 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv, i64 1}
!210 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!211 = !{!"function_entry_count", i64 339}
!212 = !{!213, !213, i64 0}
!213 = !{!"vtable pointer", !214, i64 0}
!214 = !{!"Simple C++ TBAA"}
!215 = !{!216, !221, i64 52}
!216 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !217, i64 0, !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !218, i64 40, !220, i64 48, !221, i64 52, !221, i64 53, !222, i64 56, !222, i64 60}
!217 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!218 = !{!"any pointer", !219, i64 0}
!219 = !{!"omnipotent char", !214, i64 0}
!220 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !219, i64 0}
!221 = !{!"bool", !219, i64 0}
!222 = !{!"int", !219, i64 0}
!223 = !{i8 0, i8 2}
!224 = !{}
!225 = !{!"branch_weights", i32 10, i32 331}
!226 = !{!216, !218, i64 32}
!227 = !{!216, !221, i64 53}
!228 = !{!"branch_weights", i32 1, i32 340}
!229 = !{!216, !218, i64 40}
!230 = !{!216, !218, i64 16}
!231 = !{!"function_entry_count", i64 3}
!232 = !{!233, !218, i64 40}
!233 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !234, i64 0, !218, i64 40, !218, i64 48, !218, i64 56, !218, i64 64, !221, i64 72, !218, i64 80, !218, i64 88, !235, i64 96, !221, i64 136, !221, i64 137, !236, i64 144, !218, i64 168, !218, i64 176, !221, i64 184, !221, i64 185}
!234 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32}
!235 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !222, i64 0, !222, i64 4, !222, i64 8, !221, i64 12, !218, i64 16, !218, i64 24, !218, i64 32}
!236 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !221, i64 8, !218, i64 16}
!237 = !{!233, !221, i64 136}
!238 = !{!233, !221, i64 137}
!239 = !{!233, !218, i64 168}
!240 = !{!"function_entry_count", i64 496321}
!241 = !{!235, !222, i64 0}
!242 = !{!235, !222, i64 4}
!243 = !{!235, !222, i64 8}
!244 = !{!235, !221, i64 12}
!245 = !{!235, !218, i64 16}
!246 = !{!235, !218, i64 32}
!247 = !{!248, !248, i64 0}
!248 = !{!"short", !219, i64 0}
!249 = !{!"function_entry_count", i64 5}
!250 = !{!"function_entry_count", i64 6}
!251 = !{!233, !218, i64 64}
!252 = !{!233, !218, i64 88}
!253 = !{!"branch_weights", i32 4, i32 1}
!254 = !{!"function_entry_count", i64 832911}
!255 = !{!233, !221, i64 184}
!256 = !{!233, !221, i64 185}
!257 = !{!"branch_weights", i32 1, i32 832912}
!258 = !{!"branch_weights", i32 336749, i32 496164}
!259 = !{!"branch_weights", i32 679967, i32 611784, i32 679967, i32 679967, i32 679967}
!260 = !{!"branch_weights", i32 152946, i32 1}
!261 = !{!233, !221, i64 72}
!262 = !{!"branch_weights", i32 343219, i32 1}
!263 = !{!233, !218, i64 56}
!264 = !{!"branch_weights", i32 0, i32 -2147483648}
!265 = !{!"branch_weights", i32 336749, i32 1}
!266 = !{!"branch_weights", i32 2147477272, i32 6376}
!267 = !{!233, !218, i64 80}
!268 = !{!"branch_weights", i32 1, i32 336749}
!269 = !{!222, !222, i64 0}
!270 = !{!218, !218, i64 0}
!271 = !{!"branch_weights", i32 1363, i32 335387}
!272 = !{!"branch_weights", i32 1363, i32 1}
!273 = !{!"branch_weights", i32 2147478929, i32 4719}
!274 = !{!"function_entry_count", i64 0}
!275 = !{!"function_entry_count", i64 3338153}
!276 = !{!277, !222, i64 32}
!277 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !217, i64 0, !221, i64 8, !221, i64 9, !221, i64 10, !221, i64 11, !221, i64 12, !222, i64 16, !222, i64 20, !222, i64 24, !222, i64 28, !222, i64 32, !222, i64 36, !222, i64 40, !222, i64 44, !218, i64 48, !218, i64 56, !218, i64 64, !218, i64 72, !218, i64 80, !218, i64 88, !218, i64 96, !218, i64 104, !218, i64 112, !218, i64 120, !218, i64 128, !218, i64 136, !218, i64 144, !218, i64 152, !218, i64 160, !218, i64 168}
!278 = !{!"function_entry_count", i64 1169658}
!279 = !{!280, !218, i64 80}
!280 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !281, i64 0, !283, i64 36, !284, i64 40, !285, i64 44, !286, i64 48, !222, i64 52, !222, i64 56, !222, i64 60, !222, i64 64, !218, i64 72, !218, i64 80, !218, i64 88, !218, i64 96, !218, i64 104, !218, i64 112, !218, i64 120, !218, i64 128, !218, i64 136, !221, i64 144, !221, i64 145, !221, i64 146}
!281 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !217, i64 0, !218, i64 8, !218, i64 16, !282, i64 24, !222, i64 28, !221, i64 32}
!282 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !219, i64 0}
!283 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !219, i64 0}
!284 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !219, i64 0}
!285 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !219, i64 0}
!286 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !219, i64 0}
!287 = !{!"branch_weights", i32 336749, i32 832911}
!288 = !{!280, !283, i64 36}
!289 = !{!"function_entry_count", i64 1231717351}
!290 = !{!"branch_weights", i32 621, i32 -1469098093}
!291 = !{!"branch_weights", i32 408901017, i32 1}
!292 = !{!"branch_weights", i32 267, i32 4}
!293 = !{!"branch_weights", i32 1, i32 4}
!294 = !{!"branch_weights", i32 156, i32 112}
!295 = !{!"branch_weights", i32 1, i32 112}
!296 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!297 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!298 = distinct !{!298, !299}
!299 = !{!"llvm.loop.mustprogress"}
!300 = !{!"function_entry_count", i64 10769804}
!301 = !{!"function_entry_count", i64 1668291}
!302 = !{!281, !218, i64 16}
!303 = !{!"function_entry_count", i64 1176128}
!304 = !{!277, !218, i64 136}
!305 = !{!"branch_weights", i32 25, i32 1176105}
!306 = !{!277, !218, i64 96}
!307 = !{!"branch_weights", i32 1, i32 25}
!308 = !{!"function_entry_count", i64 1081787}
!309 = !{!234, !218, i64 32}
!310 = !{!"function_entry_count", i64 344419}
!311 = !{!312, !222, i64 52}
!312 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !313, i64 0, !314, i64 8, !221, i64 16, !221, i64 17, !221, i64 18, !221, i64 19, !221, i64 20, !221, i64 21, !221, i64 22, !221, i64 23, !221, i64 24, !221, i64 25, !221, i64 26, !221, i64 27, !221, i64 28, !221, i64 29, !221, i64 30, !221, i64 31, !221, i64 32, !221, i64 33, !221, i64 34, !221, i64 35, !221, i64 36, !221, i64 37, !221, i64 38, !222, i64 40, !222, i64 44, !222, i64 48, !222, i64 52, !222, i64 56, !222, i64 60, !222, i64 64, !222, i64 68, !218, i64 72, !222, i64 80, !222, i64 84, !222, i64 88, !222, i64 92, !222, i64 96, !218, i64 104, !218, i64 112, !218, i64 120, !218, i64 128, !218, i64 136, !218, i64 144, !218, i64 152, !218, i64 160, !218, i64 168, !221, i64 176, !315, i64 184, !218, i64 264, !318, i64 272, !218, i64 280, !218, i64 288, !218, i64 296, !218, i64 304, !218, i64 312, !218, i64 320, !218, i64 328, !218, i64 336, !218, i64 344, !317, i64 352, !218, i64 360, !319, i64 368, !235, i64 392, !235, i64 432, !235, i64 472, !235, i64 512, !235, i64 552, !235, i64 592, !235, i64 632, !320, i64 672}
!313 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!314 = !{!"long", !219, i64 0}
!315 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !316, i64 0, !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !222, i64 40, !218, i64 48, !221, i64 56, !317, i64 60, !221, i64 64, !218, i64 72}
!316 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!317 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !219, i64 0}
!318 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !219, i64 0}
!319 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !222, i64 0, !218, i64 8, !218, i64 16}
!320 = !{!"_ZTSN11xercesc_2_79ElemStackE", !222, i64 0, !222, i64 4, !321, i64 8, !218, i64 48, !222, i64 56, !222, i64 60, !222, i64 64, !222, i64 68, !222, i64 72, !222, i64 76, !222, i64 80, !218, i64 88, !218, i64 96}
!321 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !217, i64 0, !218, i64 8, !218, i64 16, !218, i64 24, !222, i64 32, !222, i64 36}
!322 = !{!"function_entry_count", i64 4}
!323 = !{!324, !218, i64 8}
!324 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !221, i64 0, !221, i64 1, !221, i64 2, !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !218, i64 40, !218, i64 48, !218, i64 56, !218, i64 64, !218, i64 72}
!325 = !{!"function_entry_count", i64 336748}
!326 = !{!280, !218, i64 72}
!327 = !{!"function_entry_count", i64 874884}
!328 = !{!329, !330, i64 28}
!329 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !217, i64 0, !221, i64 8, !221, i64 9, !221, i64 10, !221, i64 11, !248, i64 12, !222, i64 16, !222, i64 20, !222, i64 24, !330, i64 28, !331, i64 32, !218, i64 40, !218, i64 48, !218, i64 56, !218, i64 64, !218, i64 72, !218, i64 80, !218, i64 88, !218, i64 96}
!330 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !219, i64 0}
!331 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !219, i64 0}
!332 = !{!"function_entry_count", i64 190774}
!333 = !{!"function_entry_count", i64 7992849}
!334 = !{!"branch_weights", i32 1, i32 7992850}
!335 = !{!"function_entry_count", i64 789922}
!336 = !{!"branch_weights", i32 1, i32 789923}
!337 = !{!"branch_weights", i32 285, i32 789639}
!338 = !{!"branch_weights", i32 789639, i32 41628304}
!339 = distinct !{!339, !299}
!340 = !{!"branch_weights", i32 789637, i32 3}
!341 = !{!312, !218, i64 120}
!342 = !{!"function_entry_count", i64 2453164456}
!343 = !{!"branch_weights", i32 1, i32 -1841802839}
!344 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!345 = !{!"branch_weights", i32 408669070, i32 -279908794}
!346 = distinct !{!346, !299}
!347 = !{!"function_entry_count", i64 495341}
!348 = !{!280, !218, i64 136}
!349 = !{!"function_entry_count", i64 4843157}
!350 = !{!"branch_weights", i32 1, i32 4843158}
!351 = !{!"function_entry_count", i64 496205}
!352 = !{!277, !218, i64 80}
!353 = !{!"function_entry_count", i64 992866}
!354 = !{!280, !222, i64 64}
!355 = !{!"function_entry_count", i64 738568}
!356 = !{!312, !221, i64 176}
!357 = !{!"branch_weights", i32 2, i32 738568}
!358 = !{!312, !218, i64 168}
!359 = !{!"function_entry_count", i64 52059}
!360 = !{!361, !218, i64 0}
!361 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !218, i64 0, !218, i64 8}
!362 = !{!361, !218, i64 8}
!363 = !{!"function_entry_count", i64 243874}
!364 = !{!365, !218, i64 32}
!365 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !366, i64 8, !218, i64 16, !222, i64 24, !218, i64 32, !218, i64 40}
!366 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !219, i64 0}
!367 = !{!"function_entry_count", i64 9748}
!368 = !{!"function_entry_count", i64 9774}
!369 = !{!370, !218, i64 72}
!370 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !371, i64 0, !222, i64 56, !285, i64 60, !286, i64 64, !284, i64 68, !218, i64 72, !218, i64 80, !218, i64 88, !218, i64 96, !218, i64 104, !218, i64 112}
!371 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !217, i64 0, !372, i64 8, !373, i64 12, !374, i64 16, !221, i64 20, !221, i64 21, !222, i64 24, !218, i64 32, !218, i64 40, !218, i64 48}
!372 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !219, i64 0}
!373 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !219, i64 0}
!374 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !219, i64 0}
!375 = !{!"function_entry_count", i64 201775}
!376 = !{!377, !218, i64 24}
!377 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !221, i64 0, !373, i64 4, !222, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !218, i64 40, !221, i64 48}
!378 = !{!377, !373, i64 4}
!379 = !{!377, !221, i64 48}
!380 = !{!377, !218, i64 40}
!381 = !{!"function_entry_count", i64 6553673}
!382 = !{!383, !222, i64 20}
!383 = !{!"_ZTSN11xercesc_2_75QNameE", !217, i64 0, !222, i64 8, !222, i64 12, !222, i64 16, !222, i64 20, !218, i64 24, !218, i64 32, !218, i64 40, !218, i64 48}
!384 = !{!"function_entry_count", i64 2192223}
!385 = !{!383, !218, i64 32}
!386 = !{!"function_entry_count", i64 211020}
!387 = !{!383, !218, i64 24}
!388 = !{!"function_entry_count", i64 19496}
!389 = !{!371, !218, i64 32}
!390 = !{!"function_entry_count", i64 593014}
!391 = !{!371, !373, i64 12}
!392 = !{!"function_entry_count", i64 8985736}
!393 = !{!"function_entry_count", i64 200910}
!394 = !{!"branch_weights", i32 25113, i32 -1772140426}
!395 = !{!"branch_weights", i32 1, i32 200911}
!396 = !{!233, !218, i64 176}
!397 = !{!"branch_weights", i32 2147440898, i32 10688, i32 10687, i32 10688, i32 10688}
!398 = !{!"branch_weights", i32 -2147483648, i32 0}
!399 = !{!"function_entry_count", i64 401820}
!400 = !{!371, !372, i64 8}
!401 = !{!"function_entry_count", i64 2}
!402 = !{!"function_entry_count", i64 108}
!403 = !{!"branch_weights", i32 1, i32 109}
!404 = !{!405, !218, i64 0}
!405 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!406 = !{!"function_entry_count", i64 550665}
!407 = !{!370, !218, i64 80}
!408 = !{!"branch_weights", i32 832912, i32 1}
!409 = distinct !{!409, !299}
!410 = !{!"branch_weights", i32 1, i32 496164}
!411 = !{!280, !222, i64 60}
!412 = !{!"function_entry_count", i64 1}
!413 = !{!414, !218, i64 56}
!414 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !415, i64 0, !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !218, i64 40, !218, i64 48, !218, i64 56, !218, i64 64, !218, i64 72, !218, i64 80, !218, i64 88, !218, i64 96, !218, i64 104, !218, i64 112, !218, i64 120, !221, i64 128, !416, i64 136}
!415 = !{!"_ZTSN11xercesc_2_77GrammarE", !217, i64 0}
!416 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !217, i64 0, !218, i64 8, !218, i64 16}
!417 = !{!"function_entry_count", i64 145}
!418 = !{!"branch_weights", i32 80, i32 67}
!419 = !{!420, !218, i64 0}
!420 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15ComplexTypeInfoEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!421 = !{!"function_entry_count", i64 496163}
!422 = !{!277, !221, i64 9}
!423 = !{!"function_entry_count", i64 41}
!424 = !{!277, !218, i64 88}
!425 = !{!277, !222, i64 16}
!426 = !{!"branch_weights", i32 127, i32 1}
!427 = !{!"branch_weights", i32 2, i32 2}
!428 = distinct !{!428, !299}
!429 = !{!"branch_weights", i32 1, i32 2}
!430 = !{!"branch_weights", i32 641, i32 1, i32 4, i32 2}
!431 = !{!"branch_weights", i32 15, i32 66}
!432 = !{!"branch_weights", i32 17, i32 15}
!433 = !{!"branch_weights", i32 1, i32 17}
!434 = distinct !{!434, !299}
!435 = distinct !{!435, !299}
!436 = distinct !{!436, !299}
!437 = !{!"branch_weights", i32 4993, i32 127}
!438 = distinct !{!438, !299}
!439 = distinct !{!439, !299}
!440 = distinct !{!440, !299}
!441 = !{!"branch_weights", i32 65, i32 127}
!442 = !{!443, !218, i64 16}
!443 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_7GrammarEEE", !444, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !218, i64 32, !218, i64 40}
!444 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_7GrammarEEE"}
!445 = !{!"branch_weights", i32 2, i32 5}
!446 = !{!443, !222, i64 24}
!447 = !{!443, !218, i64 32}
!448 = !{!449, !222, i64 24}
!449 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_7GrammarEEE", !218, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !222, i64 28, !222, i64 32, !218, i64 40}
!450 = !{!"branch_weights", i32 2, i32 1}
!451 = !{!"branch_weights", i32 3, i32 1}
!452 = !{!443, !218, i64 40}
!453 = !{!454, !218, i64 0}
!454 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_7GrammarEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!455 = !{!414, !218, i64 16}
!456 = !{!414, !218, i64 104}
!457 = !{!"function_entry_count", i64 80}
!458 = !{!459, !222, i64 12}
!459 = !{!"_ZTSN11xercesc_2_728RefHash3KeysIdPoolEnumeratorINS_17SchemaElementDeclEEE", !460, i64 0, !221, i64 8, !222, i64 12, !218, i64 16, !218, i64 24, !222, i64 32, !218, i64 40}
!460 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_17SchemaElementDeclEEE"}
!461 = !{!"branch_weights", i32 1, i32 81}
!462 = !{!459, !218, i64 16}
!463 = !{!464, !222, i64 52}
!464 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !218, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !218, i64 32, !218, i64 40, !222, i64 48, !222, i64 52}
!465 = !{!"function_entry_count", i64 79}
!466 = !{!"branch_weights", i32 1, i32 80}
!467 = !{!459, !218, i64 40}
!468 = !{!464, !218, i64 40}
!469 = !{!"function_entry_count", i64 612}
!470 = !{!281, !282, i64 24}
!471 = !{!371, !218, i64 40}
!472 = !{!"function_entry_count", i64 558789}
!473 = !{!"branch_weights", i32 158605, i32 400186}
!474 = !{!312, !221, i64 27}
!475 = !{!476, !221, i64 8}
!476 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15ComplexTypeInfoEEE", !477, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !218, i64 32, !218, i64 40}
!477 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15ComplexTypeInfoEEE"}
!478 = !{!476, !218, i64 16}
!479 = !{!476, !222, i64 24}
!480 = !{!476, !218, i64 32}
!481 = !{!476, !218, i64 40}
!482 = !{!483, !222, i64 24}
!483 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEEE", !218, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !222, i64 28, !222, i64 32, !218, i64 40}
!484 = distinct !{!484, !299}
!485 = distinct !{!485, !299}
!486 = !{!414, !218, i64 64}
!487 = !{!488, !221, i64 8}
!488 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_15XercesGroupInfoEEE", !489, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !218, i64 32, !218, i64 40}
!489 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_15XercesGroupInfoEEE"}
!490 = !{!488, !218, i64 16}
!491 = !{!488, !222, i64 24}
!492 = !{!488, !218, i64 32}
!493 = !{!488, !218, i64 40}
!494 = !{!495, !222, i64 24}
!495 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEEE", !218, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !222, i64 28, !222, i64 32, !218, i64 40}
!496 = !{!497, !218, i64 0}
!497 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XercesGroupInfoEEE", !218, i64 0, !218, i64 8, !218, i64 16}
!498 = !{!499, !218, i64 40}
!499 = !{!"_ZTSN11xercesc_2_715XercesGroupInfoE", !217, i64 0, !221, i64 8, !222, i64 12, !222, i64 16, !222, i64 20, !218, i64 24, !218, i64 32, !218, i64 40, !218, i64 48}
!500 = !{!499, !218, i64 24}
!501 = !{!499, !222, i64 12}
!502 = !{!499, !218, i64 48}
!503 = !{!499, !221, i64 8}
!504 = !{!459, !221, i64 8}
!505 = !{!443, !221, i64 8}
!506 = !{!"function_entry_count", i64 311300}
!507 = !{!"branch_weights", i32 1, i32 311301}
!508 = !{!"branch_weights", i32 -1266572800, i32 9728}
!509 = !{!"branch_weights", i32 1, i32 127}
!510 = !{!"branch_weights", i32 1, i32 2786899}
!511 = !{!"branch_weights", i32 311300, i32 2475599}
!512 = distinct !{!512, !299}
!513 = !{!"branch_weights", i32 127, i32 39846273}
!514 = !{!"function_entry_count", i64 1205039}
!515 = !{!329, !248, i64 12}
!516 = !{!234, !218, i64 24}
!517 = !{!"function_entry_count", i64 7478295}
!518 = !{!315, !218, i64 16}
!519 = !{!"function_entry_count", i64 5190970}
!520 = !{!521, !218, i64 163968}
!521 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !222, i64 0, !219, i64 4, !222, i64 32772, !219, i64 32776, !219, i64 49160, !314, i64 114696, !314, i64 114704, !522, i64 114712, !218, i64 114720, !221, i64 114728, !221, i64 114729, !218, i64 114736, !222, i64 114744, !219, i64 114748, !222, i64 163900, !222, i64 163904, !523, i64 163908, !221, i64 163912, !524, i64 163916, !222, i64 163920, !221, i64 163924, !221, i64 163925, !218, i64 163928, !218, i64 163936, !221, i64 163944, !221, i64 163945, !218, i64 163952, !525, i64 163960, !218, i64 163968, !221, i64 163976, !317, i64 163980, !218, i64 163984}
!522 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !219, i64 0}
!523 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !219, i64 0}
!524 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !219, i64 0}
!525 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !219, i64 0}
!526 = !{!219, !219, i64 0}
!527 = !{!277, !218, i64 120}
!528 = !{!499, !218, i64 32}
!529 = !{!"function_entry_count", i64 496241}
!530 = !{!277, !222, i64 28}
!531 = !{!277, !218, i64 160}
!532 = !{!"function_entry_count", i64 1666922}
!533 = !{!414, !218, i64 88}
!534 = !{!535, !218, i64 0}
!535 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !218, i64 0, !218, i64 8, !218, i64 16, !222, i64 24}
!536 = !{!537, !222, i64 4}
!537 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !221, i64 0, !222, i64 4, !222, i64 8, !218, i64 16, !218, i64 24}
!538 = !{!537, !218, i64 24}
!539 = !{!537, !218, i64 16}
!540 = !{!"function_entry_count", i64 95}
!541 = !{!"function_entry_count", i64 29}
!542 = !{!"function_entry_count", i64 353}
!543 = !{!216, !220, i64 48}
!544 = !{!"function_entry_count", i64 251}
!545 = !{!216, !222, i64 56}
!546 = !{!"function_entry_count", i64 254}
!547 = !{!216, !222, i64 60}
!548 = !{!"function_entry_count", i64 180}
!549 = !{!"function_entry_count", i64 155}
!550 = !{!551, !221, i64 0}
!551 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ContentSpecNodeEEE", !221, i64 0, !222, i64 4, !222, i64 8, !218, i64 16, !218, i64 24}
!552 = !{!551, !222, i64 4}
!553 = !{!551, !222, i64 8}
!554 = !{!551, !218, i64 16}
!555 = !{!551, !218, i64 24}
!556 = distinct !{!556, !299}
!557 = distinct !{!557, !299}
!558 = distinct !{!558, !299}
!559 = distinct !{!559, !299}
!560 = !{!221, !221, i64 0}
!561 = distinct !{!561, !299}
!562 = distinct !{!562, !299}
!563 = distinct !{!563, !299}
!564 = distinct !{!564, !299}
!565 = distinct !{!565, !299}
!566 = !{!"function_entry_count", i64 157}
!567 = !{!"function_entry_count", i64 6668307}
!568 = distinct !{!568, !299}
!569 = distinct !{!569, !299}
!570 = distinct !{!570, !299}
!571 = distinct !{!571, !299}
!572 = !{!"function_entry_count", i64 1665822}
!573 = !{!280, !218, i64 112}
!574 = !{!"branch_weights", i32 1665821, i32 3}
!575 = !{!"function_entry_count", i64 32}
!576 = !{!"branch_weights", i32 1, i32 33}
!577 = !{!"function_entry_count", i64 96}
!578 = !{!216, !218, i64 8}
!579 = !{!580, !218, i64 0}
!580 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIbEE", !218, i64 0, !218, i64 8}
!581 = !{!580, !218, i64 8}
!582 = !{!233, !218, i64 48}
!583 = !{!"function_entry_count", i64 1329074}
!584 = !{!"function_entry_count", i64 2351520}
!585 = !{!"function_entry_count", i64 5836268}
!586 = !{!365, !218, i64 40}
!587 = !{!459, !222, i64 32}
!588 = !{!459, !218, i64 24}
!589 = !{!590, !218, i64 8}
!590 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !218, i64 0, !218, i64 8, !218, i64 16, !222, i64 24, !222, i64 28}
!591 = !{!464, !222, i64 24}
!592 = !{!464, !218, i64 16}
!593 = !{!"branch_weights", i32 4, i32 2}
!594 = distinct !{!594, !299}
!595 = !{!596, !222, i64 12}
!596 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17SchemaElementDeclEEE", !221, i64 8, !222, i64 12, !222, i64 16, !218, i64 24, !218, i64 32}
!597 = !{!596, !218, i64 32}
!598 = !{!596, !218, i64 24}
!599 = !{!600, !222, i64 12}
!600 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !221, i64 8, !222, i64 12, !222, i64 16, !218, i64 24, !218, i64 32}
!601 = !{!"branch_weights", i32 33, i32 1}
!602 = !{!600, !218, i64 32}
!603 = !{!600, !218, i64 24}
!604 = !{!"function_entry_count", i64 1068727}
!605 = !{!"function_entry_count", i64 1069174}
!606 = !{!"function_entry_count", i64 170}
!607 = !{!608, !218, i64 40}
!608 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !218, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !222, i64 28, !222, i64 32, !218, i64 40}
!609 = !{!608, !222, i64 24}
!610 = !{!608, !218, i64 0}
!611 = !{!608, !218, i64 16}
!612 = !{!"branch_weights", i32 1, i32 251}
!613 = !{!405, !218, i64 16}
!614 = !{!"branch_weights", i32 109, i32 30}
!615 = !{!"branch_weights", i32 251, i32 301}
!616 = distinct !{!616, !299}
!617 = !{!464, !218, i64 0}
!618 = !{!464, !218, i64 32}
!619 = !{!"function_entry_count", i64 7}
!620 = !{!"branch_weights", i32 444, i32 80}
!621 = !{!464, !221, i64 8}
!622 = !{!590, !218, i64 0}
!623 = !{!"branch_weights", i32 80, i32 0}
!624 = distinct !{!624, !299}
!625 = !{!"branch_weights", i32 8257, i32 127}
!626 = distinct !{!626, !299}
!627 = !{!"function_entry_count", i64 10519225}
!628 = !{!629, !222, i64 4}
!629 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !221, i64 0, !222, i64 4, !222, i64 8, !218, i64 16, !218, i64 24}
!630 = !{!629, !218, i64 24}
!631 = !{!"branch_weights", i32 4843158, i32 1}
!632 = !{!629, !218, i64 16}
!633 = !{!629, !221, i64 0}
!634 = !{!629, !222, i64 8}
!635 = distinct !{!635, !299}
!636 = !{!"branch_weights", i32 191816, i32 52060}
!637 = !{!"branch_weights", i32 1, i32 52060}
!638 = !{!"branch_weights", i32 3, i32 832910}
!639 = !{!"branch_weights", i32 1, i32 191}
!640 = !{!"branch_weights", i32 191, i32 1025}
!641 = distinct !{!641, !299}
!642 = !{!"function_entry_count", i64 175}
!643 = !{!483, !218, i64 40}
!644 = !{!483, !218, i64 0}
!645 = !{!483, !218, i64 16}
!646 = !{!"branch_weights", i32 1, i32 219}
!647 = !{!420, !218, i64 16}
!648 = !{!"branch_weights", i32 67, i32 71}
!649 = !{!"branch_weights", i32 219, i32 55}
!650 = distinct !{!650, !299}
!651 = !{!"function_entry_count", i64 9}
!652 = !{!449, !218, i64 0}
!653 = !{!449, !218, i64 16}
!654 = !{!449, !218, i64 40}
!655 = !{!"function_entry_count", i64 12}
!656 = !{!"branch_weights", i32 10, i32 4}
!657 = !{!449, !222, i64 32}
!658 = !{!"branch_weights", i32 83, i32 5}
!659 = !{!454, !218, i64 8}
!660 = !{!449, !221, i64 8}
!661 = !{!"branch_weights", i32 1, i32 5}
!662 = !{!"branch_weights", i32 5, i32 0}
!663 = distinct !{!663, !299}
!664 = !{!"branch_weights", i32 2689, i32 127}
!665 = distinct !{!665, !299}
!666 = !{!"branch_weights", i32 2, i32 3}
!667 = !{!"branch_weights", i32 1431655765, i32 715827883}
!668 = !{!"branch_weights", i32 28, i32 3}
!669 = !{!"branch_weights", i32 2, i32 27}
!670 = distinct !{!670, !299}
!671 = !{!420, !218, i64 8}
!672 = distinct !{!672, !299}
!673 = !{!483, !222, i64 32}
!674 = !{!"branch_weights", i32 28, i32 31}
!675 = !{!483, !221, i64 8}
!676 = !{!"branch_weights", i32 1, i32 31}
!677 = !{!"branch_weights", i32 31, i32 0}
!678 = distinct !{!678, !299}
!679 = !{!"branch_weights", i32 3649, i32 127}
!680 = distinct !{!680, !299}
!681 = !{!497, !218, i64 8}
!682 = !{!495, !218, i64 16}
!683 = distinct !{!683, !299}
!684 = !{!495, !218, i64 0}
!685 = !{!495, !218, i64 40}
!686 = !{!495, !222, i64 32}
!687 = !{!495, !221, i64 8}
!688 = distinct !{!688, !299}
!689 = distinct !{!689, !299}
!690 = !{!691, !218, i64 32}
!691 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !218, i64 0, !221, i64 8, !218, i64 16, !222, i64 24, !222, i64 28, !218, i64 32}
!692 = !{!691, !222, i64 24}
!693 = !{!691, !218, i64 0}
!694 = !{!691, !218, i64 16}
!695 = !{!535, !222, i64 24}
!696 = !{!535, !218, i64 16}
!697 = distinct !{!697, !299}
!698 = distinct !{!698, !299}
